; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_set_free_func.rs.bc'
source_filename = "csv_set_free_func.a8951497-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:46:19: 46:23]" = type {}
%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:30:44: 30:49]" = type {}
%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:49:24: 49:37]" = type {}
%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:45:20: 45:24]" = type {}
%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:48:23: 48:30]" = type {}
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%CsvParser = type { i64, %"core::option::Option<alloc::vec::Vec<u8>>", i64, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, { i8*, i8* }, i32, i32, i32, i8, i8, i8, [1 x i8] }
%"core::option::Option<alloc::vec::Vec<u8>>" = type { {}*, [2 x i64] }
%"core::option::Option<alloc::vec::Vec<u8>>::Some" = type { %"alloc::vec::Vec<u8>" }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrComponents<core::ffi::c_void>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<core::ffi::c_void>" = type { [1 x i64] }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"alloc::alloc::Global" = type {}
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h04d24c00b674d770E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h9a6244265e22437bE" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1b3551fe1136ffd0E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1b3551fe1136ffd0E" to i8*) }>, align 8
@alloc135 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc136 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc135, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc137 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc138 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc137, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc12 = private unnamed_addr constant <{}> zeroinitializer, align 1
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:30:44: 30:49]"*)* @"_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h96fd33fa693ca245E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:30:44: 30:49]"*, i8*)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h83ed70828a384651E" to i8*), i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:30:44: 30:49]"*, i8*)* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17h12bdc82b533e5f4bE" to i8*), i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:30:44: 30:49]"*, i8*)* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17h12bdc82b533e5f4bE" to i8*) }>, align 8
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:45:20: 45:24]"*)* @"_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h161708bff780c619E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i32 (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:45:20: 45:24]"*, i8)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdfffe843633dc156E" to i8*), i8* bitcast (i32 (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:45:20: 45:24]"*, i8)* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hd478d517b540c0aeE" to i8*), i8* bitcast (i32 (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:45:20: 45:24]"*, i8)* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hd478d517b540c0aeE" to i8*) }>, align 8
@vtable.3 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:46:19: 46:23]"*)* @"_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h87aca5f23c700f83E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i32 (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:46:19: 46:23]"*, i8)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h189fcf177f0269b4E" to i8*), i8* bitcast (i32 (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:46:19: 46:23]"*, i8)* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hd509812499700089E" to i8*), i8* bitcast (i32 (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:46:19: 46:23]"*, i8)* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hd509812499700089E" to i8*) }>, align 8
@vtable.4 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:48:23: 48:30]"*)* @"_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9d6a6b3937caf51fE" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i8* (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:48:23: 48:30]"*, i64)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he3123387a576cff6E" to i8*), i8* bitcast (i8* (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:48:23: 48:30]"*, i64)* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17he805403219b7a503E" to i8*), i8* bitcast (i8* (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:48:23: 48:30]"*, i64)* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17he805403219b7a503E" to i8*) }>, align 8
@vtable.5 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:49:24: 49:37]"*)* @"_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1cce5ad0d2d749d5E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i8* (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:49:24: 49:37]"*, i8*, i64)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8eefd914739db059E" to i8*), i8* bitcast (i8* (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:49:24: 49:37]"*, i8*, i64)* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hc48e8d379552964bE" to i8*), i8* bitcast (i8* (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:49:24: 49:37]"*, i8*, i64)* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hc48e8d379552964bE" to i8*) }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9eab9f0776917c7bE"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9db2224288b3d1e0E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17ha08037b76bed1b0eE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h15463217e293149fE"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h01d5ffe9abe2e0b1E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17haef4b5436c053d3bE"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i64, i64 }* %1 to %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"*
  %3 = bitcast %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"* %2 to %"core::alloc::layout::LayoutError"*
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8, !range !4, !noundef !3
  %9 = insertvalue { i64, i64 } undef, i64 %6, 0
  %10 = insertvalue { i64, i64 } %9, i64 %8, 1
  ret { i64, i64 } %10
}

; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17ha3b43c4ccfae5f79E(void ()* %f) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  call void @_ZN4core3ops8function6FnOnce9call_once17heb2b12eebf50f8ccE(void ()* %f)
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint9black_box17h535caf4071bbe6f5E()
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  ret void

bb4:                                              ; preds = %bb3
  %6 = bitcast { i8*, i32 }* %0 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h53c8f9dafe9ce1b6E(void ()* %main, i64 %argc, i8** %argv) unnamed_addr #2 {
start:
  %_8 = alloca i64*, align 8
  %_4 = alloca i64, align 8
  %0 = bitcast i64** %_8 to void ()**
  store void ()* %main, void ()** %0, align 8
  %_5.0 = bitcast i64** %_8 to {}*
  %1 = call i64 @_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE({}* align 1 %_5.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)
  store i64 %1, i64* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %v = load i64, i64* %_4, align 8
  ret i64 %v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1b3551fe1136ffd0E"(i64** align 8 %_1) unnamed_addr #0 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_4 = load void ()*, void ()** %0, align 8, !nonnull !3, !noundef !3
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17ha3b43c4ccfae5f79E(void ()* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17he73aac655933ef80E"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call i32 @_ZN3std7process8ExitCode6to_i3217hf3aa28b737e1a22eE(i8 %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h04fb964c3ac0120cE(i8* align 1 %self) unnamed_addr #0 {
start:
  %_2 = load i8, i8* %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std7process8ExitCode6to_i3217hf3aa28b737e1a22eE(i8 %0) unnamed_addr #0 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h04fb964c3ac0120cE(i8* align 1 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h5e3f802fb0a53529E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !5, !noundef !3
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hbd3a42c1e56e28fdE(i64 %_3), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h4e711292c40285ecE(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !5, !noundef !3
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h92018df88577a600E"(i64 %self, i64 %rhs) unnamed_addr #0 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self, i64 %rhs)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i64, i8 }* %0 to i64*
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 8
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !range !7, !noundef !3
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !7, !noundef !3
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i64, i8 } undef, i64 %17, 0
  %23 = insertvalue { i64, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i64, i8 } %23, 0
  %24 = extractvalue { i64, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !7, !noundef !3
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %_5.0, i64* %28, align 8
  %29 = bitcast { i64, i64 }* %3 to i64*
  store i64 1, i64* %29, align 8
  br label %bb5

bb3:                                              ; preds = %bb2
  %30 = bitcast { i64, i64 }* %3 to i64*
  store i64 0, i64* %30, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !range !8, !noundef !3
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = insertvalue { i64, i64 } undef, i64 %32, 0
  %36 = insertvalue { i64, i64 } %35, i64 %34, 1
  ret { i64, i64 } %36
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hbd3a42c1e56e28fdE(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !6, !noundef !3
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h9be1c74800354debE(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h189fcf177f0269b4E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:46:19: 46:23]"* %_1, i8 %0) unnamed_addr #0 {
start:
  %_2 = alloca i8, align 1
  store i8 %0, i8* %_2, align 1
  %1 = load i8, i8* %_2, align 1
  %2 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h3ffc8ac41ed7c6f4E(i8 %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h83ed70828a384651E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:30:44: 30:49]"* %_1, i8* %0) unnamed_addr #0 {
start:
  %_2 = alloca i8*, align 8
  store i8* %0, i8** %_2, align 8
  %1 = load i8*, i8** %_2, align 8
  call void @_ZN4core3ops8function6FnOnce9call_once17h698ff06fcd3bb12eE(i8* %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8eefd914739db059E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:49:24: 49:37]"* %_1, i8* %0, i64 %1) unnamed_addr #0 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %2 = bitcast { i8*, i64 }* %_2 to i8**
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call i8* @_ZN4core3ops8function6FnOnce9call_once17h9fd4f8606b0007efE(i8* %5, i64 %7)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h9a6244265e22437bE"(i64** %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  %0 = load i64*, i64** %_1, align 8, !nonnull !3, !noundef !3
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h95994f2ca1231ad0E(i64* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdfffe843633dc156E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:45:20: 45:24]"* %_1, i8 %0) unnamed_addr #0 {
start:
  %_2 = alloca i8, align 1
  store i8 %0, i8* %_2, align 1
  %1 = load i8, i8* %_2, align 1
  %2 = call i32 @_ZN4core3ops8function6FnOnce9call_once17hc1e1e94289227120E(i8 %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he3123387a576cff6E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:48:23: 48:30]"* %_1, i64 %0) unnamed_addr #0 {
start:
  %_2 = alloca i64, align 8
  store i64 %0, i64* %_2, align 8
  %1 = load i64, i64* %_2, align 8
  %2 = call i8* @_ZN4core3ops8function6FnOnce9call_once17h341f9887a2ca9fbaE(i64 %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN4core3ops8function6FnOnce9call_once17h341f9887a2ca9fbaE(i64 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca i64, align 8
  %_1 = alloca %"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:48:23: 48:30]", align 1
  store i64 %0, i64* %_2, align 8
  %2 = load i64, i64* %_2, align 8
  %3 = invoke i8* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17he805403219b7a503E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:48:23: 48:30]"* align 1 %_1, i64 %2)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %1 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb1
  ret i8* %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h3ffc8ac41ed7c6f4E(i8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca i8, align 1
  %_1 = alloca %"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:46:19: 46:23]", align 1
  store i8 %0, i8* %_2, align 1
  %2 = load i8, i8* %_2, align 1
  %3 = invoke i32 @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hd509812499700089E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:46:19: 46:23]"* align 1 %_1, i8 %2)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %1 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb1
  ret i32 %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h698ff06fcd3bb12eE(i8* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca i8*, align 8
  %_1 = alloca %"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:30:44: 30:49]", align 1
  store i8* %0, i8** %_2, align 8
  %2 = load i8*, i8** %_2, align 8
  invoke void @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17h12bdc82b533e5f4bE"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:30:44: 30:49]"* align 1 %_1, i8* %2)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %1 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h95994f2ca1231ad0E(i64* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %2 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1b3551fe1136ffd0E"(i64** align 8 %_1)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %1 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %bb1
  ret i32 %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN4core3ops8function6FnOnce9call_once17h9fd4f8606b0007efE(i8* %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_2 = alloca { i8*, i64 }, align 8
  %_1 = alloca %"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:49:24: 49:37]", align 1
  %3 = bitcast { i8*, i64 }* %_2 to i8**
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = invoke i8* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hc48e8d379552964bE"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:49:24: 49:37]"* align 1 %_1, i8* %6, i64 %8)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %15 = bitcast { i8*, i32 }* %2 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb2:                                              ; preds = %bb1
  ret i8* %9
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17hc1e1e94289227120E(i8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca i8, align 1
  %_1 = alloca %"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:45:20: 45:24]", align 1
  store i8 %0, i8* %_2, align 1
  %2 = load i8, i8* %_2, align 1
  %3 = invoke i32 @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hd478d517b540c0aeE"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:45:20: 45:24]"* align 1 %_1, i8 %2)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb3

bb1:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %1 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb1
  ret i32 %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17heb2b12eebf50f8ccE(void ()* %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17ha5ec98b475aa6e5cE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h13dbf1cd4560e36bE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h44ff6a55b70d3ed1E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h15a84dbbbebf8976E"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h24ba73998e041998E"({ i8*, i64 }* %1) #11
          to label %bb1 unwind label %abort

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb3

bb4:                                              ; preds = %start
  %7 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h24ba73998e041998E"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #12
  unreachable

bb1:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr49drop_in_place$LT$csv_set_free_func..CsvParser$GT$17hec460cdc2ff6165eE"(%CsvParser* %_1) unnamed_addr #2 {
start:
  %0 = getelementptr inbounds %CsvParser, %CsvParser* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h977771aac55ea1c5E"(%"core::option::Option<alloc::vec::Vec<u8>>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h24ba73998e041998E"({ i8*, i64 }* %_1) unnamed_addr #2 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd35d8ba6d2a8478cE"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17ha3bce61bd26f8278E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3010ae4c677fa350E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h15463217e293149fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9db2224288b3d1e0E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h93cfe82c99baa8a0E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h161708bff780c619E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:45:20: 45:24]"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1cce5ad0d2d749d5E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:49:24: 49:37]"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h87aca5f23c700f83E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:46:19: 46:23]"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h96fd33fa693ca245E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:30:44: 30:49]"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9d6a6b3937caf51fE"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:48:23: 48:30]"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h977771aac55ea1c5E"(%"core::option::Option<alloc::vec::Vec<u8>>"* %_1) unnamed_addr #2 {
start:
  %0 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %4 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %_1 to %"core::option::Option<alloc::vec::Vec<u8>>::Some"*
  %5 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>::Some"* %4 to %"alloc::vec::Vec<u8>"*
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h44ff6a55b70d3ed1E"(%"alloc::vec::Vec<u8>"* %5)
  br label %bb1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h977c722217a0dacaE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !7, !noundef !3
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h36b3839e66473197E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h45f9021f4771a7dfE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h977c722217a0dacaE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h04d24c00b674d770E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h13dbf1cd4560e36bE({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h45f9021f4771a7dfE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h55930b1dcbf8f2feE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<core::ffi::c_void>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<core::ffi::c_void>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<core::ffi::c_void>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<core::ffi::c_void>", %"core::ptr::metadata::PtrComponents<core::ffi::c_void>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<core::ffi::c_void>"* %_3 to %"core::ptr::metadata::PtrComponents<core::ffi::c_void>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<core::ffi::c_void>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<core::ffi::c_void>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<core::ffi::c_void>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17ha08037b76bed1b0eE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3010ae4c677fa350E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h93cfe82c99baa8a0E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17ha08037b76bed1b0eE"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h93cfe82c99baa8a0E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h9c029ac73f257d25E() unnamed_addr #3 {
start:
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4hint9black_box17h535caf4071bbe6f5E() unnamed_addr #0 {
start:
  call void asm sideeffect "", "r,~{memory}"({}* undef), !srcloc !9
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h5ea604983ac8a879E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h4e711292c40285ecE(i64 %align), !range !5
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !5, !noundef !3
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h35a5c3b3857b9d66E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h46d52520d8e2cd84E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !5, !noundef !3
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h5e3f802fb0a53529E(i64 %_3), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h9be1c74800354debE(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h91fbec7280bd98aeE(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h92018df88577a600E"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h6717d37fad9b5162E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6e4d8c811d5613b8E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !8, !noundef !3
  switch i64 %_9, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb7
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %val = load i64, i64* %5, align 8
  br label %bb9

bb7:                                              ; preds = %bb4
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h01d5ffe9abe2e0b1E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc136 to %"core::panic::location::Location"*))
  store { i64, i64 } %6, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8, !range !4, !noundef !3
  %11 = insertvalue { i64, i64 } undef, i64 %8, 0
  %12 = insertvalue { i64, i64 } %11, i64 %10, 1
  ret { i64, i64 } %12

bb9:                                              ; preds = %bb5
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h5ea604983ac8a879E(i64 %val, i64 1)
  %_13.0 = extractvalue { i64, i64 } %13, 0
  %_13.1 = extractvalue { i64, i64 } %13, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_13.0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_13.1, i64* %15, align 8
  br label %bb11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h6717d37fad9b5162E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !8, !noundef !3
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %7 = bitcast i64* %6 to %"core::alloc::layout::LayoutError"*
  %8 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %v, i64* %10, align 8
  %11 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %11, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %12 = load i8, i8* %_7, align 1, !range !7, !noundef !3
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !range !8, !noundef !3
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hce24559d83a4e01aE"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !4, !noundef !3
  %8 = icmp eq i64 %7, 0
  %_2 = select i1 %8, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %t.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %10, align 8, !range !5, !noundef !3
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !4, !noundef !3
  %13 = icmp eq i64 %12, 0
  %_6 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_6, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint21unreachable_unchecked17h9c029ac73f257d25E() #13
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %16 = load i64, i64* %15, align 8, !range !4, !noundef !3
  %17 = icmp eq i64 %16, 0
  %_7 = select i1 %17, i64 1, i64 0
  %18 = icmp eq i64 %_7, 0
  br i1 %18, label %bb7, label %bb9

cleanup:                                          ; preds = %bb1
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb10

unreachable:                                      ; preds = %bb1
  unreachable

bb7:                                              ; preds = %bb10
  br i1 true, label %bb8, label %bb4

bb9:                                              ; preds = %bb10
  br label %bb4

bb4:                                              ; preds = %bb8, %bb9, %bb7
  %24 = bitcast { i8*, i32 }* %3 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

bb8:                                              ; preds = %bb7
  br label %bb4

bb5:                                              ; preds = %bb6, %bb3
  %30 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %31 = insertvalue { i64, i64 } %30, i64 %t.1, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb3
  br label %bb5
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17haef4b5436c053d3bE"() unnamed_addr #2 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hb6cac2142bce4320E"(i8* %self) unnamed_addr #2 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9eab9f0776917c7bE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17he73aac655933ef80E"() unnamed_addr #0 {
start:
  ret i8 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h3c2de5a449196cefE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hba5db902bbeb8129E"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h36b3839e66473197E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc7dealloc17hce007207f0a61ac1E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h35a5c3b3857b9d66E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h46d52520d8e2cd84E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #14
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4abcf6895f3b62d2E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #2 {
start:
  %_9 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 1, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i8, i8* %_2, align 1, !range !7, !noundef !3
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_8 = load i64, i64* %6, align 8
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h91fbec7280bd98aeE(i64 %_8)
  %_7.0 = extractvalue { i64, i64 } %7, 0
  %_7.1 = extractvalue { i64, i64 } %7, 1
  br label %bb7

bb5:                                              ; preds = %bb3
  %8 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0, i32 0, i32 1
  store i64 0, i64* %8, align 8
  br label %bb11

bb11:                                             ; preds = %bb10, %bb5
  ret void

bb7:                                              ; preds = %bb6
  %9 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hce24559d83a4e01aE"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc138 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %10 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %10, align 8, !nonnull !3, !noundef !3
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17ha3bce61bd26f8278E"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hb6cac2142bce4320E"(i8* %_11)
  br label %bb10

bb10:                                             ; preds = %bb9
  %11 = bitcast { i8*, { i64, i64 } }* %_9 to i8**
  store i8* %_10, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %_9, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %layout.0, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %layout.1, i64* %14, align 8
  %15 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %16 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %15 to { i8*, { i64, i64 } }*
  %17 = bitcast { i8*, { i64, i64 } }* %16 to i8*
  %18 = bitcast { i8*, { i64, i64 } }* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  br label %bb11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hba5db902bbeb8129E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9db2224288b3d1e0E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h72eb351bc3845677E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h35a5c3b3857b9d66E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h93cfe82c99baa8a0E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !5, !noundef !3
  call void @_ZN5alloc5alloc7dealloc17hce007207f0a61ac1E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h15a84dbbbebf8976E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #2 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h3c2de5a449196cefE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17ha5ec98b475aa6e5cE(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd35d8ba6d2a8478cE"({ i8*, i64 }* align 8 %self) unnamed_addr #2 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4abcf6895f3b62d2E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !4, !noundef !3
  %2 = icmp eq i64 %1, 0
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i64, i64 } }*
  %6 = bitcast { i8*, { i64, i64 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 8, !nonnull !3, !noundef !3
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !5, !noundef !3
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h72eb351bc3845677E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6e4d8c811d5613b8E"(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !8, !noundef !3
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %v = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  store i64 %v, i64* %7, align 8
  %8 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %8, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"* %_6 to %"core::alloc::layout::LayoutError"*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %11 = bitcast i64* %10 to %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"*
  %12 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %12, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %14 = load i64, i64* %13, align 8, !range !8, !noundef !3
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i64, i64 } undef, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN17csv_set_free_func17csv_set_free_func17h9068d06819288827E(%CsvParser* align 8 %p, i8* align 1 %f.0, i8* %f.1) unnamed_addr #2 {
start:
  %_11 = alloca { i8*, i8* }, align 8
  %_4 = alloca i64*, align 8
  %_3 = alloca { i64*, { i8*, i8* } }, align 8
  %0 = bitcast i64** %_4 to %CsvParser**
  store %CsvParser* %p, %CsvParser** %0, align 8
  %1 = bitcast { i64*, { i8*, i8* } }* %_3 to i64**
  %2 = load i64*, i64** %_4, align 8, !align !10
  store i64* %2, i64** %1, align 8
  %3 = getelementptr inbounds { i64*, { i8*, i8* } }, { i64*, { i8*, i8* } }* %_3, i32 0, i32 1
  %4 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %3, i32 0, i32 0
  store i8* %f.0, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %3, i32 0, i32 1
  store i8* %f.1, i8** %5, align 8
  %6 = bitcast { i64*, { i8*, i8* } }* %_3 to i64**
  %7 = bitcast i64** %6 to {}**
  %8 = load {}*, {}** %7, align 8
  %9 = icmp eq {}* %8, null
  %_8 = select i1 %9, i64 0, i64 1
  %10 = icmp eq i64 %_8, 1
  br i1 %10, label %bb1, label %bb3

bb1:                                              ; preds = %start
  %11 = getelementptr inbounds { i64*, { i8*, i8* } }, { i64*, { i8*, i8* } }* %_3, i32 0, i32 1
  %12 = bitcast { i8*, i8* }* %11 to {}**
  %13 = load {}*, {}** %12, align 8
  %14 = icmp eq {}* %13, null
  %_7 = select i1 %14, i64 0, i64 1
  %15 = icmp eq i64 %_7, 1
  br i1 %15, label %bb2, label %bb3

bb3:                                              ; preds = %bb2, %bb1, %start
  ret void

bb2:                                              ; preds = %bb1
  %16 = bitcast { i64*, { i8*, i8* } }* %_3 to i64**
  %17 = bitcast i64** %16 to %CsvParser**
  %p1 = load %CsvParser*, %CsvParser** %17, align 8, !nonnull !3, !align !10, !noundef !3
  %18 = getelementptr inbounds { i64*, { i8*, i8* } }, { i64*, { i8*, i8* } }* %_3, i32 0, i32 1
  %19 = bitcast { i8*, i8* }* %18 to { {}*, [3 x i64]* }*
  %20 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %19, i32 0, i32 0
  %f.02 = load {}*, {}** %20, align 8, !nonnull !3, !align !11, !noundef !3
  %21 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %19, i32 0, i32 1
  %f.13 = load [3 x i64]*, [3 x i64]** %21, align 8, !nonnull !3, !align !10, !noundef !3
  %22 = bitcast { i8*, i8* }* %_11 to { {}*, [3 x i64]* }*
  %23 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %22, i32 0, i32 0
  store {}* %f.02, {}** %23, align 8
  %24 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %22, i32 0, i32 1
  store [3 x i64]* %f.13, [3 x i64]** %24, align 8
  %25 = getelementptr inbounds %CsvParser, %CsvParser* %p1, i32 0, i32 9
  %26 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8, !align !11
  %28 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %25, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %25, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %bb3
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN17csv_set_free_func4main17h892f76875702e6b6E() unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_22 = alloca { i8*, i8* }, align 8
  %_18 = alloca { i8*, i8* }, align 8
  %_5 = alloca %"core::option::Option<alloc::vec::Vec<u8>>", align 8
  %parser = alloca %CsvParser, align 8
  %1 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %_5 to {}**
  store {}* null, {}** %1, align 8
  %2 = bitcast { i8*, i8* }* %_18 to {}**
  store {}* null, {}** %2, align 8
  %3 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 10
  store i32 0, i32* %3, align 8
  %4 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 11
  store i32 0, i32* %4, align 4
  %5 = bitcast %CsvParser* %parser to i64*
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 1
  %7 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %6 to i8*
  %8 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  %9 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 12
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 13
  store i8 0, i8* %12, align 4
  %13 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 14
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 15
  store i8 0, i8* %14, align 2
  %15 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 4
  %16 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %15, i32 0, i32 0
  store {}* bitcast (<{}>* @alloc12 to {}*), {}** %16, align 8
  %17 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %15, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.2 to [3 x i64]*), [3 x i64]** %17, align 8
  %18 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 5
  %19 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %18, i32 0, i32 0
  store {}* bitcast (<{}>* @alloc12 to {}*), {}** %19, align 8
  %20 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %18, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.3 to [3 x i64]*), [3 x i64]** %20, align 8
  %21 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 7
  %23 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %22, i32 0, i32 0
  store {}* bitcast (<{}>* @alloc12 to {}*), {}** %23, align 8
  %24 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %22, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.4 to [3 x i64]*), [3 x i64]** %24, align 8
  %25 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 8
  %26 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %25, i32 0, i32 0
  store {}* bitcast (<{}>* @alloc12 to {}*), {}** %26, align 8
  %27 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %25, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.5 to [3 x i64]*), [3 x i64]** %27, align 8
  %28 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 9
  %29 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_18, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8, !align !11
  %31 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_18, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %28, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %28, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = bitcast { i8*, i8* }* %_22 to { {}*, [3 x i64]* }*
  %36 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %35, i32 0, i32 0
  store {}* bitcast (<{}>* @alloc12 to {}*), {}** %36, align 8
  %37 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %35, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.1 to [3 x i64]*), [3 x i64]** %37, align 8
  %38 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_22, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8, !align !11
  %40 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_22, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  invoke void @_ZN17csv_set_free_func17csv_set_free_func17h9068d06819288827E(%CsvParser* align 8 %parser, i8* align 1 %39, i8* %41)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr49drop_in_place$LT$csv_set_free_func..CsvParser$GT$17hec460cdc2ff6165eE"(%CsvParser* %parser) #11
          to label %bb4 unwind label %abort

cleanup:                                          ; preds = %start
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  %44 = extractvalue { i8*, i32 } %42, 1
  %45 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %bb3

bb1:                                              ; preds = %start
  call void @"_ZN4core3ptr49drop_in_place$LT$csv_set_free_func..CsvParser$GT$17hec460cdc2ff6165eE"(%CsvParser* %parser)
  br label %bb2

abort:                                            ; preds = %bb3
  %47 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #12
  unreachable

bb4:                                              ; preds = %bb3
  %48 = bitcast { i8*, i32 }* %0 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = insertvalue { i8*, i32 } undef, i8* %49, 0
  %53 = insertvalue { i8*, i32 } %52, i32 %51, 1
  resume { i8*, i32 } %53

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17h12bdc82b533e5f4bE"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:30:44: 30:49]"* align 1 %_1, i8* %ptr) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hd478d517b540c0aeE"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:45:20: 45:24]"* align 1 %_1, i8 %_c) unnamed_addr #0 {
start:
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hd509812499700089E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:46:19: 46:23]"* align 1 %_1, i8 %_c) unnamed_addr #0 {
start:
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17he805403219b7a503E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:48:23: 48:30]"* align 1 %_1, i64 %_size) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h55930b1dcbf8f2feE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hc48e8d379552964bE"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_set_free_func.rs:49:24: 49:37]"* align 1 %_1, i8* %_ptr, i64 %_size) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h55930b1dcbf8f2feE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %3
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE({}* align 1, [3 x i64]* align 8, i64, i8**) unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #9

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #10 {
top:
  %2 = sext i32 %0 to i64
  %3 = call i64 @_ZN3std2rt10lang_start17h53c8f9dafe9ce1b6E(void ()* @_ZN17csv_set_free_func4main17h892f76875702e6b6E, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { inlinehint noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #10 = { nonlazybind "target-cpu"="x86-64" }
attributes #11 = { noinline }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{}
!4 = !{i64 0, i64 -9223372036854775807}
!5 = !{i64 1, i64 -9223372036854775807}
!6 = !{i64 1, i64 0}
!7 = !{i8 0, i8 2}
!8 = !{i64 0, i64 2}
!9 = !{i32 3342142}
!10 = !{i64 8}
!11 = !{i64 1}

^0 = module: (path: "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_set_free_func.rs.bc", hash: (3897746762, 3659064495, 934707182, 753159068, 3570971824))
^1 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h698ff06fcd3bb12eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^18)), refs: (^72)))) ; guid = 137267462866557805
^2 = gv: (name: "_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9d6a6b3937caf51fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 153782083625597415
^3 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h15463217e293149fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 167716450892489122
^4 = gv: (name: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h83ed70828a384651E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^1))))) ; guid = 173120888699797968
^5 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^6 = gv: (name: "_ZN3std2rt10lang_start17h53c8f9dafe9ce1b6E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: hidden, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^87)), refs: (^92)))) ; guid = 688330164667865386
^7 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h95994f2ca1231ad0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^81)), refs: (^72)))) ; guid = 1072267339088142957
^8 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17h4e711292c40285ecE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 1189427960255275231
^9 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^57, ^28, ^24)))) ; guid = 1393345228847626137
^10 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h5e3f802fb0a53529E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^86))))) ; guid = 1547562097448608970
^11 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h6e4d8c811d5613b8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31))) ; guid = 1626837883997035323
^12 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17ha5ec98b475aa6e5cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^45))))) ; guid = 1736141355792908237
^13 = gv: (name: "_ZN17csv_set_free_func4main17h892f76875702e6b6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 94, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^62), (callee: ^14), (callee: ^55)), refs: (^72, ^80, ^9, ^43, ^83, ^20, ^65)))) ; guid = 1934358611236094150
^14 = gv: (name: "_ZN4core3ptr49drop_in_place$LT$csv_set_free_func..CsvParser$GT$17hec460cdc2ff6165eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^93))))) ; guid = 1968588189245329268
^15 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h45f9021f4771a7dfE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 2127889755568318819
^16 = gv: (name: "_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hd509812499700089E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 2173812748496120336
^17 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h46d52520d8e2cd84E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^10), (callee: ^38))))) ; guid = 2499031934347167572
^18 = gv: (name: "_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17h12bdc82b533e5f4bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 2579226573377429044
^19 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^20 = gv: (name: "vtable.5", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^70, ^75, ^64)))) ; guid = 2976974229802781970
^21 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17haef4b5436c053d3bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 3159392770803768435
^22 = gv: (name: "_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h96fd33fa693ca245E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 3276428318624137984
^23 = gv: (name: "_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17he805403219b7a503E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^27))))) ; guid = 3384258751486040225
^24 = gv: (name: "_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hd478d517b540c0aeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 3392520942552099450
^25 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4abcf6895f3b62d2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 49, calls: ((callee: ^89), (callee: ^53), (callee: ^50), (callee: ^46)), refs: (^73)))) ; guid = 3472756273019638878
^26 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h3010ae4c677fa350E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^33), (callee: ^41))))) ; guid = 3510387995590615620
^27 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h55930b1dcbf8f2feE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 3802671032562606379
^28 = gv: (name: "_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h161708bff780c619E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 4091418742555440695
^29 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h36b3839e66473197E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^15), (callee: ^85))))) ; guid = 4145323794687094367
^30 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^31 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h15a84dbbbebf8976E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^49), (callee: ^12))))) ; guid = 4785787971375684672
^32 = gv: (name: "_ZN3std7process8ExitCode6to_i3217hf3aa28b737e1a22eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^48))))) ; guid = 5172527348428855880
^33 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h93cfe82c99baa8a0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 5336147580888723800
^34 = gv: (name: "alloc136", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^51)))) ; guid = 5547732935120243308
^35 = gv: (name: "_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h87aca5f23c700f83E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 5860174222022049790
^36 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^37 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd35d8ba6d2a8478cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 25, calls: ((callee: ^25), (callee: ^77))))) ; guid = 6495708117876078274
^38 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h9be1c74800354debE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 6712803263561777407
^39 = gv: (name: "_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17he73aac655933ef80E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 6720516248548318796
^40 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^41 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17ha08037b76bed1b0eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 7043252924317280030
^42 = gv: (name: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he3123387a576cff6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^59))))) ; guid = 7391126459793279027
^43 = gv: (name: "vtable.3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^66, ^35, ^16)))) ; guid = 7417828041149664828
^44 = gv: (name: "_ZN5alloc5alloc7dealloc17hce007207f0a61ac1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^91), (callee: ^17), (callee: ^30))))) ; guid = 7761772836997783034
^45 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h13dbf1cd4560e36bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23))) ; guid = 7847861270062380394
^46 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hb6cac2142bce4320E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^54))))) ; guid = 8117725782614128102
^47 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h5ea604983ac8a879E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^8))))) ; guid = 8147921981392607934
^48 = gv: (name: "_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h04fb964c3ac0120cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 8503378559854103228
^49 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h3c2de5a449196cefE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^56), (callee: ^29))))) ; guid = 8749634251385397048
^50 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17ha3bce61bd26f8278E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^26), (callee: ^3))))) ; guid = 8765627429376359660
^51 = gv: (name: "alloc135", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8799483190844369222
^52 = gv: (name: "alloc137", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 9051564560555710489
^53 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17hce24559d83a4e01aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^71)), refs: (^72)))) ; guid = 9249185824227621725
^54 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h9eab9f0776917c7bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^58), (callee: ^41))))) ; guid = 9535624731191732764
^55 = gv: (name: "_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E") ; guid = 9588502806599032397
^56 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hba5db902bbeb8129E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^58))))) ; guid = 9995987143290444456
^57 = gv: (name: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdfffe843633dc156E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^63))))) ; guid = 10198057838996769245
^58 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h9db2224288b3d1e0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^33))))) ; guid = 10750333411101087379
^59 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h341f9887a2ca9fbaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^23)), refs: (^72)))) ; guid = 11049054885165180153
^60 = gv: (name: "_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17ha3b43c4ccfae5f79E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 21, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^74), (callee: ^84)), refs: (^72)))) ; guid = 11088438118827758499
^61 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h6717d37fad9b5162E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 36))) ; guid = 11385052983297256142
^62 = gv: (name: "_ZN17csv_set_free_func17csv_set_free_func17h9068d06819288827E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 52))) ; guid = 11984364864905141759
^63 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17hc1e1e94289227120E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^24)), refs: (^72)))) ; guid = 12691188272969261571
^64 = gv: (name: "_ZN17csv_set_free_func4main28_$u7b$$u7b$closure$u7d$$u7d$17hc48e8d379552964bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^27))))) ; guid = 13587723158875382383
^65 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^4, ^22, ^18)))) ; guid = 13688259437370825457
^66 = gv: (name: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h189fcf177f0269b4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^67))))) ; guid = 13757442930773161139
^67 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h3ffc8ac41ed7c6f4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^16)), refs: (^72)))) ; guid = 13794686360819923375
^68 = gv: (name: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h9a6244265e22437bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^7))))) ; guid = 13883467281763033654
^69 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h01d5ffe9abe2e0b1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^21))))) ; guid = 13909361395746791117
^70 = gv: (name: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8eefd914739db059E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^88))))) ; guid = 14276772623547437178
^71 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h9c029ac73f257d25E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 14481381608612621563
^72 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^73 = gv: (name: "alloc138", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^52)))) ; guid = 14964001483164624609
^74 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17heb2b12eebf50f8ccE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 15713728314104212434
^75 = gv: (name: "_ZN4core3ptr73drop_in_place$LT$csv_set_free_func..main..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1cce5ad0d2d749d5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 15723661168088084972
^76 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^6)), refs: (^13)))) ; guid = 15822663052811949562
^77 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h72eb351bc3845677E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^91), (callee: ^33), (callee: ^44))))) ; guid = 16056123015864688319
^78 = gv: (name: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h04d24c00b674d770E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16226008569571779357
^79 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h24ba73998e041998E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^37))))) ; guid = 16256713887220242498
^80 = gv: (name: "alloc12", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16450424314379187782
^81 = gv: (name: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1b3551fe1136ffd0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^60), (callee: ^39), (callee: ^32))))) ; guid = 16650752085755144790
^82 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h44ff6a55b70d3ed1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^31), (callee: ^79), (callee: ^55)), refs: (^72)))) ; guid = 16770506298093451406
^83 = gv: (name: "vtable.4", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^42, ^2, ^23)))) ; guid = 16777097500274772580
^84 = gv: (name: "_ZN4core4hint9black_box17h535caf4071bbe6f5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 16812868128076377842
^85 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h977c722217a0dacaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8))) ; guid = 17182479732603360562
^86 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hbd3a42c1e56e28fdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 17250261516139299246
^87 = gv: (name: "_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE") ; guid = 17451603669320732862
^88 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h9fd4f8606b0007efE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 30, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^64)), refs: (^72)))) ; guid = 17529299264361148946
^89 = gv: (name: "_ZN4core5alloc6layout6Layout5array17h91fbec7280bd98aeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 41, calls: ((callee: ^90), (callee: ^61), (callee: ^11), (callee: ^69), (callee: ^47)), refs: (^34)))) ; guid = 17627980295459821109
^90 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h92018df88577a600E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 17757691258274525586
^91 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h35a5c3b3857b9d66E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 17847198252054814630
^92 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^81, ^68, ^78)))) ; guid = 18042159690473057611
^93 = gv: (name: "_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h977771aac55ea1c5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^82))))) ; guid = 18291369205833268074
^94 = blockcount: 231
