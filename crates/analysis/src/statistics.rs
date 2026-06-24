use common::CrateData;
use rustc_middle::ty::{TyCtxt, self, Ty};
use rustc_middle::mir::{
    visit::{PlaceContext, Visitor},
    Body, Constant, Location, ProjectionElem, TerminatorKind,
};
use serde::{Deserialize, Serialize};

use crate::{
    ownership::solidify::SolidifiedOwnershipSchemes,
    type_qualifier::flow_insensitive::{fatness::FatnessResult, mutability::MutabilityResult},
};

#[derive(Default, Serialize, Deserialize)]
pub struct CrateStatistics {
    pub num_unsafe_ptrs: usize,
    pub num_non_arr_unsafe_ptrs: usize,
    pub num_mut_unsafe_ptrs: usize,
    pub num_non_arr_mut_unsafe_ptrs: usize,
    pub num_unsafe_usages: usize,
    pub num_non_arr_unsafe_usages: usize,
    pub num_mut_unsafe_usages: usize,
    pub num_non_arr_mut_unsafe_usages: usize,
    pub num_owning_ptrs_detected: usize,

    // ============================================================
    // 新增:Rust 五类 unsafe 操作统计(均基于 optimized_mir,与上面同口径)
    //   ① 解引用裸指针   -> 复用 num_unsafe_usages(上面已有)
    //   ② 调用 unsafe 函数/方法
    //   ③ 访问/修改 static mut
    //   ④ 实现 unsafe trait(crate 级,非 per-function)
    //   ⑤ 访问 union 字段
    // 旧的 crown_statistics.json 缺这些字段也能反序列化(serde default)。
    // ============================================================
    #[serde(default)]
    pub num_unsafe_fn_calls: usize, // ②
    #[serde(default)]
    pub num_mut_static_accesses: usize, // ③
    #[serde(default)]
    pub num_unsafe_trait_impls: usize, // ④
    #[serde(default)]
    pub num_union_field_accesses: usize, // ⑤
}

impl CrateStatistics {
    pub fn new(
        crate_data: &CrateData,
    ) -> Self {
        let mut statistics = CrateStatistics::default();

        let tcx = crate_data.tcx;

        // ④ 实现 unsafe trait —— 这是 item 层(HIR)信息,与 MIR 无关。
        for maybe_owner in tcx.hir().krate().owners.iter() {
            let Some(owner) = maybe_owner.as_owner() else { continue };
            let rustc_hir::OwnerNode::Item(item) = owner.node() else { continue };
            if let rustc_hir::ItemKind::Impl(impl_) = &item.kind {
                if impl_.unsafety == rustc_hir::Unsafety::Unsafe {
                    statistics.num_unsafe_trait_impls += 1;
                }
            }
        }

        for &did in &crate_data.fns {
            let body = tcx.optimized_mir(did);
            // gather ptr count
            for (_local, local_decl) in body.local_decls.iter_enumerated() {
                if !local_decl.is_user_variable() {
                    continue;
                }
                let ty = local_decl.ty;
                // 标志位：是否把这个 local 计入“指针样总数”、是否计入“拥有指针”
                let mut is_pointer_like = false;
                let mut is_owning_ptr  = false;
                // 1) 裸指针：单独统计（unsafe），也算 pointer-like
                if ty.is_unsafe_ptr() {
                    statistics.num_unsafe_ptrs += 1;
                    is_pointer_like = true;
                }
                // 2) 引用 / 切片 / str：算 pointer-like（但不是 owning）
                if ty.is_ref() || ty.is_slice() || ty.is_str() {
                    is_pointer_like = true;
                }
                // 3) Box<T>（拥有堆内存）：既是 pointer-like，也是 owning
                if let ty::Adt(adt_def, _) = ty.kind() {
                    let did = adt_def.did();
                    if tcx.lang_items().owned_box().map_or(false, |box_did| box_did == did) {
                        is_pointer_like = true;
                        is_owning_ptr = true;
                    }
                }
                // 4) 汇总：同一个 local 只计一次
                if is_pointer_like {
                    statistics.num_non_arr_mut_unsafe_usages += 1; // 建议改名 num_all_pointers
                }
                let _ = is_owning_ptr;
            }

            // gather unsafe usages count (① 裸指针解引用, ② unsafe 调用, ③ static mut, ⑤ union 字段)
            CountUnsafeUsages {
                tcx,
                body: &body,
                statistics: &mut statistics,
            }
            .visit_body(&body);
        }

        statistics
    }
}

struct CountUnsafeUsages<'me, 'tcx> {
    tcx: TyCtxt<'tcx>,
    body: &'me Body<'tcx>,
    statistics: &'me mut CrateStatistics,
}

impl<'me, 'tcx> Visitor<'tcx> for CountUnsafeUsages<'me, 'tcx> {
    fn visit_place(
        &mut self,
        place: &rustc_middle::mir::Place<'tcx>,
        context: PlaceContext,
        _: Location,
    ) {
        if matches!(context, PlaceContext::NonUse(..)) {
            return;
        }
        // ① 解引用裸指针(以及 pointer-like 解引用 -> owning 计数)
        if self.body.local_decls[place.local].is_user_variable()
            && place.is_indirect()
        {
            if (self.body.local_decls[place.local].ty.is_unsafe_ptr()) {
                self.statistics.num_unsafe_usages += 1;
            }
            if (is_pointer_like(self.tcx, self.body.local_decls[place.local].ty)) {
                self.statistics.num_owning_ptrs_detected += 1;
            }
        }
        // ⑤ 访问 union 字段:任意 Field 投影,只要其 base 的类型是 union
        for (base, elem) in place.as_ref().iter_projections() {
            if let ProjectionElem::Field(..) = elem {
                if base.ty(self.body, self.tcx).ty.is_union() {
                    self.statistics.num_union_field_accesses += 1;
                }
            }
        }
    }

    // ② 调用 unsafe 函数/方法(含 extern "C" FFI、intrinsics —— 它们的签名 unsafety 即 Unsafe)
    fn visit_terminator(
        &mut self,
        terminator: &rustc_middle::mir::Terminator<'tcx>,
        location: Location,
    ) {
        if let TerminatorKind::Call { func, .. } = &terminator.kind {
            let func_ty = func.ty(self.body, self.tcx);
            let unsafety = match func_ty.kind() {
                ty::FnDef(..) | ty::FnPtr(..) => {
                    Some(func_ty.fn_sig(self.tcx).skip_binder().unsafety)
                }
                _ => None,
            };
            if unsafety == Some(rustc_hir::Unsafety::Unsafe) {
                self.statistics.num_unsafe_fn_calls += 1;
            }
        }
        self.super_terminator(terminator, location);
    }

    // ③ 访问/修改 static mut(在 MIR 里表现为指向该 static 的常量指针)
    fn visit_constant(&mut self, constant: &Constant<'tcx>, location: Location) {
        if let Some(def_id) = static_def_id(self.tcx, constant) {
            if self.tcx.static_mutability(def_id) == Some(rustc_hir::Mutability::Mut) {
                self.statistics.num_mut_static_accesses += 1;
            }
        }
        self.super_constant(constant, location);
    }
}

/// 若该 MIR 常量是"指向某个 static 的指针",返回该 static 的 DefId。
fn static_def_id<'tcx>(
    tcx: TyCtxt<'tcx>,
    constant: &Constant<'tcx>,
) -> Option<rustc_hir::def_id::DefId> {
    use rustc_middle::mir::interpret::{ConstValue, GlobalAlloc, Scalar};
    use rustc_middle::mir::ConstantKind;
    if let ConstantKind::Val(ConstValue::Scalar(Scalar::Ptr(ptr, _)), _) = constant.literal {
        if let GlobalAlloc::Static(def_id) = tcx.global_alloc(ptr.provenance) {
            return Some(def_id);
        }
    }
    None
}

fn is_pointer_like<'tcx>(tcx: TyCtxt<'tcx>, ty: Ty<'tcx>) -> bool {
    if ty.is_unsafe_ptr() || ty.is_ref() {
        return true;
    }
    if let ty::Adt(adt_def, _) = ty.kind() {
        if tcx.lang_items().owned_box() == Some(adt_def.did()) {
            return true;
        }
        // if tcx.is_diagnostic_item(sym::Rc, adt_def.did()) { return true; }
        // if tcx.is_diagnostic_item(sym::Arc, adt_def.did()) { return true; }
        // if tcx.is_diagnostic_item(sym::Vec, adt_def.did()) { return true; }
        // if tcx.is_diagnostic_item(sym::String, adt_def.did()) { return true; }
    }
    false
}
