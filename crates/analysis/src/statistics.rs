use common::CrateData;
use rustc_middle::ty::{TyCtxt, self, Ty};
use rustc_middle::mir::{
    visit::{PlaceContext, Visitor},
    Body, Location,
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
}

impl CrateStatistics {
    pub fn new(
        crate_data: &CrateData,
    ) -> Self {
        let mut statistics = CrateStatistics::default();

        let tcx = crate_data.tcx;
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
                // if is_owning_ptr {
                //     statistics.num_owning_ptrs += 1;          // 新增：真正拥有型指针（目前只含 Box）
                // }
            }

            // gather unsafe usages count
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
    }
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