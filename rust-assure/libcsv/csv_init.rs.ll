; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_init.rs.bc'
source_filename = "csv_init.dab27f27-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:42:32: 42:43]" = type {}
%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:45:29: 45:34]" = type {}
%CsvParser = type { i64, %"core::option::Option<alloc::vec::Vec<u8>>", i64, i64, { i8*, i8* }, { i8*, i8* }, i64, { i8*, i8* }, { i8*, i8* }, { i8*, i8* }, i32, i32, i32, i8, i8, i8, [1 x i8] }
%"core::option::Option<alloc::vec::Vec<u8>>" = type { {}*, [2 x i64] }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"core::option::Option<alloc::vec::Vec<u8>>::Some" = type { %"alloc::vec::Vec<u8>" }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrComponents<CsvParser>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<CsvParser>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"alloc::alloc::Global" = type {}
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he04087fb2d4ade74E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2888b9e9a494a3a4E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcaed92e5ef61e108E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcaed92e5ef61e108E" to i8*) }>, align 8
@alloc130 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/alloc/layout.rs" }>, align 1
@alloc131 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc130, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\97\01\00\00\1A\00\00\00" }>, align 8
@alloc132 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/raw_vec.rs" }>, align 1
@alloc133 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc132, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc24 = private unnamed_addr constant <{}> zeroinitializer, align 1
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:42:32: 42:43]"*)* @"_ZN4core3ptr79drop_in_place$LT$csv_init..CsvParser..csv_init..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2c6501ac1a245247E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i8* (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:42:32: 42:43]"*, i8*, i64)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8fa4666e6e0857d9E" to i8*), i8* bitcast (i8* (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:42:32: 42:43]"*, i8*, i64)* @"_ZN8csv_init9CsvParser8csv_init28_$u7b$$u7b$closure$u7d$$u7d$17h90ccf87cda147a0cE" to i8*), i8* bitcast (i8* (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:42:32: 42:43]"*, i8*, i64)* @"_ZN8csv_init9CsvParser8csv_init28_$u7b$$u7b$closure$u7d$$u7d$17h90ccf87cda147a0cE" to i8*) }>, align 8
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:45:29: 45:34]"*)* @"_ZN4core3ptr79drop_in_place$LT$csv_init..CsvParser..csv_init..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfb1779fa4f296a7eE" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:45:29: 45:34]"*, i8*)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17ha1b66b6ed0ce3820E" to i8*), i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:45:29: 45:34]"*, i8*)* @"_ZN8csv_init9CsvParser8csv_init28_$u7b$$u7b$closure$u7d$$u7d$17h7053ef1a82bc2131E" to i8*), i8* bitcast (void (%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:45:29: 45:34]"*, i8*)* @"_ZN8csv_init9CsvParser8csv_init28_$u7b$$u7b$closure$u7d$$u7d$17h7053ef1a82bc2131E" to i8*) }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hfc2f1ed74176810bE"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h33e25761368f8c47E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc592c6ac1ee2d77bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h96a8caad07485105E"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17had1cde1909073f28E"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i64, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h3127915d26c1be5eE"()
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
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2769b5ff4f0d3443E(void ()* %f) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  call void @_ZN4core3ops8function6FnOnce9call_once17h5786f4de69b4be04E(void ()* %f)
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint9black_box17hb4ea3e2fad549319E()
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
define hidden i64 @_ZN3std2rt10lang_start17hef0207dacfecef8bE(void ()* %main, i64 %argc, i8** %argv) unnamed_addr #2 {
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
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcaed92e5ef61e108E"(i64** align 8 %_1) unnamed_addr #0 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_4 = load void ()*, void ()** %0, align 8, !nonnull !3, !noundef !3
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2769b5ff4f0d3443E(void ()* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h261602a0ba5b563fE"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call i32 @_ZN3std7process8ExitCode6to_i3217h3058068394c8acddE(i8 %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h3016a840b1d6bd7bE(i8* align 1 %self) unnamed_addr #0 {
start:
  %_2 = load i8, i8* %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std7process8ExitCode6to_i3217h3058068394c8acddE(i8 %0) unnamed_addr #0 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h3016a840b1d6bd7bE(i8* align 1 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h89bb576d66216497E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !5, !noundef !3
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h75384a09b7e2a594E(i64 %_3), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hd0edfdbeb75b5a52E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !5, !noundef !3
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h43ccfe02326bdb2bE"(i64 %self, i64 %rhs) unnamed_addr #0 {
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
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h75384a09b7e2a594E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !6, !noundef !3
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h17b592d7f77e96a1E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2888b9e9a494a3a4E"(i64** %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  %0 = load i64*, i64** %_1, align 8, !nonnull !3, !noundef !3
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h8fbec5347085a8d8E(i64* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8fa4666e6e0857d9E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:42:32: 42:43]"* %_1, i8* %0, i64 %1) unnamed_addr #0 {
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
  %8 = call i8* @_ZN4core3ops8function6FnOnce9call_once17h75964e02f2920849E(i8* %5, i64 %7)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17ha1b66b6ed0ce3820E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:45:29: 45:34]"* %_1, i8* %0) unnamed_addr #0 {
start:
  %_2 = alloca i8*, align 8
  store i8* %0, i8** %_2, align 8
  %1 = load i8*, i8** %_2, align 8
  call void @_ZN4core3ops8function6FnOnce9call_once17h89ca22f7097d146eE(i8* %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h5786f4de69b4be04E(void ()* %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN4core3ops8function6FnOnce9call_once17h75964e02f2920849E(i8* %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_2 = alloca { i8*, i64 }, align 8
  %_1 = alloca %"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:42:32: 42:43]", align 1
  %3 = bitcast { i8*, i64 }* %_2 to i8**
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = invoke i8* @"_ZN8csv_init9CsvParser8csv_init28_$u7b$$u7b$closure$u7d$$u7d$17h90ccf87cda147a0cE"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:42:32: 42:43]"* align 1 %_1, i8* %6, i64 %8)
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
define internal void @_ZN4core3ops8function6FnOnce9call_once17h89ca22f7097d146eE(i8* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca i8*, align 8
  %_1 = alloca %"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:45:29: 45:34]", align 1
  store i8* %0, i8** %_2, align 8
  %2 = load i8*, i8** %_2, align 8
  invoke void @"_ZN8csv_init9CsvParser8csv_init28_$u7b$$u7b$closure$u7d$$u7d$17h7053ef1a82bc2131E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:45:29: 45:34]"* align 1 %_1, i8* %2)
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
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h8fbec5347085a8d8E(i64* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %2 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcaed92e5ef61e108E"(i64** align 8 %_1)
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
define internal { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h08dce1151c9b13bdE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h86cdda0969db2ad2E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr40drop_in_place$LT$csv_init..CsvParser$GT$17hcb1f397002525634E"(%CsvParser* %_1) unnamed_addr #2 {
start:
  %0 = getelementptr inbounds %CsvParser, %CsvParser* %_1, i32 0, i32 1
  call void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd1f4614a4ba38d9eE"(%"core::option::Option<alloc::vec::Vec<u8>>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h15d6a5fed3ff46bdE"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c71f4d226dd8234E"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf668d142284d41e0E"({ i8*, i64 }* %1) #11
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
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf668d142284d41e0E"({ i8*, i64 }* %7)
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
define internal void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf668d142284d41e0E"({ i8*, i64 }* %_1) unnamed_addr #2 {
start:
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he092e0096736fa21E"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h233dd186f560d950E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h2300484eba2b9763E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h96a8caad07485105E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h33e25761368f8c47E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5c4f5c3323562ec0E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd1f4614a4ba38d9eE"(%"core::option::Option<alloc::vec::Vec<u8>>"* %_1) unnamed_addr #2 {
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
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h15d6a5fed3ff46bdE"(%"alloc::vec::Vec<u8>"* %5)
  br label %bb1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr79drop_in_place$LT$csv_init..CsvParser..csv_init..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2c6501ac1a245247E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:42:32: 42:43]"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr79drop_in_place$LT$csv_init..CsvParser..csv_init..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfb1779fa4f296a7eE"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:45:29: 45:34]"* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h8be5831334ca89e4E"(i8* %self, i8* %other) unnamed_addr #0 {
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
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h61ee969b1bcba005E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h6f19717c32a3ff4aE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h8be5831334ca89e4E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he04087fb2d4ade74E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h6f19717c32a3ff4aE({}* %data_address) unnamed_addr #0 {
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
define internal %CsvParser* @_ZN4core3ptr8metadata18from_raw_parts_mut17h833024592ee4aed2E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<CsvParser>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<CsvParser>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<CsvParser>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<CsvParser>", %"core::ptr::metadata::PtrComponents<CsvParser>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<CsvParser>"* %_3 to %"core::ptr::metadata::PtrComponents<CsvParser>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<CsvParser>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<CsvParser>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<CsvParser>"* %_3 to %CsvParser**
  %6 = load %CsvParser*, %CsvParser** %5, align 8
  ret %CsvParser* %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h86cdda0969db2ad2E({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc592c6ac1ee2d77bE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h2300484eba2b9763E"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5c4f5c3323562ec0E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc592c6ac1ee2d77bE"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5c4f5c3323562ec0E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h810826d9aa0b9430E() unnamed_addr #3 {
start:
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4hint9black_box17hb4ea3e2fad549319E() unnamed_addr #0 {
start:
  call void asm sideeffect "", "r,~{memory}"({}* undef), !srcloc !9
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7978b21c7ac8fa0eE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hd0edfdbeb75b5a52E(i64 %align), !range !5
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
define internal i64 @_ZN4core5alloc6layout6Layout4size17h0b5f99cd25bc363fE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h8c5cfab091c15926E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !5, !noundef !3
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h89bb576d66216497E(i64 %_3), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h17b592d7f77e96a1E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha9e896aed37208bfE(i64 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h43ccfe02326bdb2bE"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17hcf551beb41bfe469E"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfda864aa14f0c9d6E"(i64 %_4.0, i64 %_4.1)
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
  %6 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17had1cde1909073f28E"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc131 to %"core::panic::location::Location"*))
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
  %13 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7978b21c7ac8fa0eE(i64 %val, i64 1)
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
define internal { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17hcf551beb41bfe469E"(i64 %0, i64 %1) unnamed_addr #0 {
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
define internal { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h42f30141f2214c3eE"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
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
  invoke void @_ZN4core4hint21unreachable_unchecked17h810826d9aa0b9430E() #13
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
define internal void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h3127915d26c1be5eE"() unnamed_addr #2 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd8ecad43e81d6e96E"(i8* %self) unnamed_addr #2 {
start:
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hfc2f1ed74176810bE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h261602a0ba5b563fE"() unnamed_addr #0 {
start:
  ret i8 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h0099c4a8e14b788aE"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h1a6f8fc9538a8deeE"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h61ee969b1bcba005E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc7dealloc17h3fb73457e7790dd3E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h0b5f99cd25bc363fE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h8c5cfab091c15926E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #14
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN5alloc5alloc7realloc17h5f95d50818405fbcE(i8* %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_5 = call i64 @_ZN4core5alloc6layout6Layout4size17h0b5f99cd25bc363fE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = call i64 @_ZN4core5alloc6layout6Layout5align17h8c5cfab091c15926E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_realloc(i8* %ptr, i64 %_5, i64 %_7, i64 %new_size) #14
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h85cd8a6efac06ed0E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #2 {
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
  %7 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17ha9e896aed37208bfE(i64 %_8)
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
  %9 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h42f30141f2214c3eE"(i64 %_7.0, i64 %_7.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc133 to %"core::panic::location::Location"*))
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %10 = bitcast { i8*, i64 }* %self to i8**
  %_12 = load i8*, i8** %10, align 8, !nonnull !3, !noundef !3
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h233dd186f560d950E"(i8* %_12)
  br label %bb9

bb9:                                              ; preds = %bb8
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd8ecad43e81d6e96E"(i8* %_11)
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
define internal i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h1a6f8fc9538a8deeE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h33e25761368f8c47E"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h159e89942650c12fE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h0b5f99cd25bc363fE({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5c4f5c3323562ec0E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !5, !noundef !3
  call void @_ZN5alloc5alloc7dealloc17h3fb73457e7790dd3E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c71f4d226dd8234E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #2 {
start:
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h0099c4a8e14b788aE"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h08dce1151c9b13bdE(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he092e0096736fa21E"({ i8*, i64 }* align 8 %self) unnamed_addr #2 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h85cd8a6efac06ed0E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
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
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h159e89942650c12fE"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfda864aa14f0c9d6E"(i64 %0, i64 %1) unnamed_addr #0 {
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
define internal i32 @_ZN8csv_init9CsvParser8csv_init17h165190ff21999d88E(%CsvParser* align 8 %p, i8 %options) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca {}*, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_16 = alloca { i8*, i8* }, align 8
  %_12 = alloca { i8*, i8* }, align 8
  %_11 = alloca { i8*, i8* }, align 8
  %_10 = alloca { i8*, i8* }, align 8
  %_9 = alloca { i8*, i8* }, align 8
  %_7 = alloca %"core::option::Option<alloc::vec::Vec<u8>>", align 8
  %2 = alloca i32, align 4
  %3 = bitcast {}** %0 to i64*
  store i64 0, i64* %3, align 8
  %4 = load {}*, {}** %0, align 8
  %5 = call %CsvParser* @_ZN4core3ptr8metadata18from_raw_parts_mut17h833024592ee4aed2E({}* %4)
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = icmp eq %CsvParser* %p, %5
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %6 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %_7 to {}**
  store {}* null, {}** %6, align 8
  %7 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  invoke void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd1f4614a4ba38d9eE"(%"core::option::Option<alloc::vec::Vec<u8>>"* %7)
          to label %bb6 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i32 -1, i32* %2, align 4
  br label %bb4

bb4:                                              ; preds = %bb6, %bb2
  %8 = load i32, i32* %2, align 4
  ret i32 %8

bb5:                                              ; preds = %cleanup
  %9 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %10 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %9 to i8*
  %11 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  %12 = bitcast { i8*, i32 }* %1 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

cleanup:                                          ; preds = %bb3
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb5

bb6:                                              ; preds = %bb3
  %23 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %24 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %23 to i8*
  %25 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  %26 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 10
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 11
  store i32 0, i32* %27, align 4
  %28 = bitcast %CsvParser* %p to i64*
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 12
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 13
  store i8 %options, i8* %32, align 4
  %33 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 14
  store i8 34, i8* %33, align 1
  %34 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 15
  store i8 44, i8* %34, align 2
  %35 = bitcast { i8*, i8* }* %_9 to {}**
  store {}* null, {}** %35, align 8
  %36 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  %37 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_9, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8, !align !10
  %39 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_9, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %36, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %36, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = bitcast { i8*, i8* }* %_10 to {}**
  store {}* null, {}** %43, align 8
  %44 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  %45 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_10, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8, !align !10
  %47 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_10, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %44, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %44, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 6
  store i64 128, i64* %51, align 8
  %52 = bitcast { i8*, i8* }* %_11 to {}**
  store {}* null, {}** %52, align 8
  %53 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %54 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8, !align !10
  %56 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_11, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %53, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %53, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = bitcast { i8*, i8* }* %_12 to { {}*, [3 x i64]* }*
  %61 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %60, i32 0, i32 0
  store {}* bitcast (<{}>* @alloc24 to {}*), {}** %61, align 8
  %62 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %60, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.1 to [3 x i64]*), [3 x i64]** %62, align 8
  %63 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 8
  %64 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_12, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8, !align !10
  %66 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_12, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %63, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %63, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = bitcast { i8*, i8* }* %_16 to { {}*, [3 x i64]* }*
  %71 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %70, i32 0, i32 0
  store {}* bitcast (<{}>* @alloc24 to {}*), {}** %71, align 8
  %72 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %70, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.2 to [3 x i64]*), [3 x i64]** %72, align 8
  %73 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 9
  %74 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_16, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8, !align !10
  %76 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_16, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %73, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %73, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  store i32 0, i32* %2, align 4
  br label %bb4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN8csv_init9CsvParser8csv_init28_$u7b$$u7b$closure$u7d$$u7d$17h90ccf87cda147a0cE"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:42:32: 42:43]"* align 1 %_1, i8* %ptr, i64 %size) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7978b21c7ac8fa0eE(i64 %size, i64 1)
  %_7.0 = extractvalue { i64, i64 } %0, 0
  %_7.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i8* @_ZN5alloc5alloc7realloc17h5f95d50818405fbcE(i8* %ptr, i64 %_7.0, i64 %_7.1, i64 %size)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %_4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN8csv_init9CsvParser8csv_init28_$u7b$$u7b$closure$u7d$$u7d$17h7053ef1a82bc2131E"(%"[closure@./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_init.rs:45:29: 45:34]"* align 1 %_1, i8* %ptr) unnamed_addr #0 {
start:
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7978b21c7ac8fa0eE(i64 1, i64 1)
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  call void @_ZN5alloc5alloc7dealloc17h3fb73457e7790dd3E(i8* %ptr, i64 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN8csv_init4main17h0ffea2217131f610E() unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca { i8*, i8* }, align 8
  %_6 = alloca { i8*, i8* }, align 8
  %_5 = alloca { i8*, i8* }, align 8
  %_4 = alloca { i8*, i8* }, align 8
  %_3 = alloca { i8*, i8* }, align 8
  %_2 = alloca %"core::option::Option<alloc::vec::Vec<u8>>", align 8
  %parser = alloca %CsvParser, align 8
  %1 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %_2 to {}**
  store {}* null, {}** %1, align 8
  %2 = bitcast { i8*, i8* }* %_3 to {}**
  store {}* null, {}** %2, align 8
  %3 = bitcast { i8*, i8* }* %_4 to {}**
  store {}* null, {}** %3, align 8
  %4 = bitcast { i8*, i8* }* %_5 to {}**
  store {}* null, {}** %4, align 8
  %5 = bitcast { i8*, i8* }* %_6 to {}**
  store {}* null, {}** %5, align 8
  %6 = bitcast { i8*, i8* }* %_7 to {}**
  store {}* null, {}** %6, align 8
  %7 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 10
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 11
  store i32 0, i32* %8, align 4
  %9 = bitcast %CsvParser* %parser to i64*
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 1
  %11 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %10 to i8*
  %12 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 12
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 13
  store i8 0, i8* %16, align 4
  %17 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 14
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 15
  store i8 0, i8* %18, align 2
  %19 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 4
  %20 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_3, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !align !10
  %22 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_3, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 5
  %27 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !align !10
  %29 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_4, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %26, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %26, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 6
  store i64 128, i64* %33, align 8
  %34 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 7
  %35 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_5, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8, !align !10
  %37 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_5, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %34, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %34, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 8
  %42 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_6, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8, !align !10
  %44 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_6, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %41, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %41, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 9
  %49 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_7, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8, !align !10
  %51 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %_7, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %48, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %48, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %_8 = invoke i32 @_ZN8csv_init9CsvParser8csv_init17h165190ff21999d88E(%CsvParser* align 8 %parser, i8 0)
          to label %bb1 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$csv_init..CsvParser$GT$17hcb1f397002525634E"(%CsvParser* %parser) #11
          to label %bb4 unwind label %abort

cleanup:                                          ; preds = %start
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  %57 = extractvalue { i8*, i32 } %55, 1
  %58 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %bb3

bb1:                                              ; preds = %start
  call void @"_ZN4core3ptr40drop_in_place$LT$csv_init..CsvParser$GT$17hcb1f397002525634E"(%CsvParser* %parser)
  br label %bb2

abort:                                            ; preds = %bb3
  %60 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #12
  unreachable

bb4:                                              ; preds = %bb3
  %61 = bitcast { i8*, i32 }* %0 to i8**
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = insertvalue { i8*, i32 } undef, i8* %62, 0
  %66 = insertvalue { i8*, i32 } %65, i32 %64, 1
  resume { i8*, i32 } %66

bb2:                                              ; preds = %bb1
  ret void
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

; Function Attrs: nounwind nonlazybind uwtable
declare noalias i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #9

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #10 {
top:
  %2 = sext i32 %0 to i64
  %3 = call i64 @_ZN3std2rt10lang_start17hef0207dacfecef8bE(void ()* @_ZN8csv_init4main17h0ffea2217131f610E, i64 %2, i8** %1)
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
!9 = !{i32 3342704}
!10 = !{i64 1}

^0 = module: (path: "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_init.rs.bc", hash: (1223590641, 1637955922, 3243576950, 1794774603, 6735315))
^1 = gv: (name: "_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h3016a840b1d6bd7bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 44975326892427097
^2 = gv: (name: "_ZN5alloc5alloc7realloc17h5f95d50818405fbcE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^29), (callee: ^51), (callee: ^66))))) ; guid = 205303288041980434
^3 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h6f19717c32a3ff4aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 354318150591691029
^4 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^5 = gv: (name: "_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h15d6a5fed3ff46bdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^40), (callee: ^14), (callee: ^37)), refs: (^61)))) ; guid = 765919466741405081
^6 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h833024592ee4aed2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 1135312403515888343
^7 = gv: (name: "_ZN4core5alloc6layout6Layout5array17ha9e896aed37208bfE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 41, calls: ((callee: ^9), (callee: ^20), (callee: ^32), (callee: ^79), (callee: ^19)), refs: (^15)))) ; guid = 1198524148668687561
^8 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hd0edfdbeb75b5a52E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 2272446039786922433
^9 = gv: (name: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h43ccfe02326bdb2bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 56))) ; guid = 2360967008814008259
^10 = gv: (name: "_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he092e0096736fa21E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 25, calls: ((callee: ^39), (callee: ^72))))) ; guid = 2425122278879832798
^11 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^12 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h42f30141f2214c3eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 52, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^60)), refs: (^61)))) ; guid = 2861213365255073632
^13 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^67, ^49, ^65)))) ; guid = 2956427417763570973
^14 = gv: (name: "_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hf668d142284d41e0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^10))))) ; guid = 3095332793584765865
^15 = gv: (name: "alloc131", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^52)))) ; guid = 3837183447913166893
^16 = gv: (name: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17he04087fb2d4ade74E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 4330214966392915158
^17 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd8ecad43e81d6e96E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^53))))) ; guid = 4351967117155659622
^18 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^19 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h7978b21c7ac8fa0eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^8))))) ; guid = 4885585046865613191
^20 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17hcf551beb41bfe469E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 36))) ; guid = 5537680524370954235
^21 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^22 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h75964e02f2920849E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 30, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^65)), refs: (^61)))) ; guid = 6581223068486025267
^23 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h61ee969b1bcba005E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^3), (callee: ^50))))) ; guid = 6619730649552721639
^24 = gv: (name: "_ZN8csv_init9CsvParser8csv_init17h165190ff21999d88E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 130, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^6), (callee: ^26)), refs: (^61, ^68, ^13, ^75)))) ; guid = 6662196443959330282
^25 = gv: (name: "llvm.umul.with.overflow.i64") ; guid = 6837502597287762023
^26 = gv: (name: "_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd1f4614a4ba38d9eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^5))))) ; guid = 6849134935520128029
^27 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^43, ^36, ^16)))) ; guid = 7011224329122964042
^28 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hc592c6ac1ee2d77bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 7099716609554161567
^29 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h0b5f99cd25bc363fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 7881202907511881374
^30 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h1a6f8fc9538a8deeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^41))))) ; guid = 7936248402486444395
^31 = gv: (name: "alloc132", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7958808054650076576
^32 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hfda864aa14f0c9d6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31))) ; guid = 8675501034215839803
^33 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h96a8caad07485105E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 8693161492905365723
^34 = gv: (name: "_ZN5alloc5alloc7dealloc17h3fb73457e7790dd3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^29), (callee: ^51), (callee: ^18))))) ; guid = 8785740773769791537
^35 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h86cdda0969db2ad2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23))) ; guid = 8871934419191242402
^36 = gv: (name: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2888b9e9a494a3a4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^58))))) ; guid = 9396289814673893857
^37 = gv: (name: "_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E") ; guid = 9588502806599032397
^38 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h08dce1151c9b13bdE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^35))))) ; guid = 9713528939643977579
^39 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h85cd8a6efac06ed0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 49, calls: ((callee: ^7), (callee: ^12), (callee: ^54), (callee: ^17)), refs: (^56)))) ; guid = 9879229683546858324
^40 = gv: (name: "_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c71f4d226dd8234E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^78), (callee: ^38))))) ; guid = 10120026228050152130
^41 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h33e25761368f8c47E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^55))))) ; guid = 10206757367809618187
^42 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h89bb576d66216497E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^76))))) ; guid = 10409787406084649952
^43 = gv: (name: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hcaed92e5ef61e108E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^44), (callee: ^63), (callee: ^46))))) ; guid = 10539774675664771043
^44 = gv: (name: "_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2769b5ff4f0d3443E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 21, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^80), (callee: ^71)), refs: (^61)))) ; guid = 10564983499319043605
^45 = gv: (name: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17ha1b66b6ed0ce3820E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^62))))) ; guid = 10717741874122926520
^46 = gv: (name: "_ZN3std7process8ExitCode6to_i3217h3058068394c8acddE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^1))))) ; guid = 11280721999148781557
^47 = gv: (name: "_ZN8csv_init9CsvParser8csv_init28_$u7b$$u7b$closure$u7d$$u7d$17h7053ef1a82bc2131E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^19), (callee: ^34))))) ; guid = 11453283482473985106
^48 = gv: (name: "_ZN4core3ptr40drop_in_place$LT$csv_init..CsvParser$GT$17hcb1f397002525634E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^26))))) ; guid = 11569607377056825231
^49 = gv: (name: "_ZN4core3ptr79drop_in_place$LT$csv_init..CsvParser..csv_init..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2c6501ac1a245247E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 12013671895913664510
^50 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h8be5831334ca89e4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8))) ; guid = 12092782464869196348
^51 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h8c5cfab091c15926E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^42), (callee: ^73))))) ; guid = 12532132508847910109
^52 = gv: (name: "alloc130", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13142384500395470864
^53 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hfc2f1ed74176810bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^41), (callee: ^28))))) ; guid = 13228159987261858846
^54 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h233dd186f560d950E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^59), (callee: ^33))))) ; guid = 13241435870805758069
^55 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h5c4f5c3323562ec0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 13402309711001930165
^56 = gv: (name: "alloc133", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^31)))) ; guid = 13626665023112152008
^57 = gv: (name: "_ZN3std2rt10lang_start17hef0207dacfecef8bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: hidden, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^77)), refs: (^27)))) ; guid = 13864750973182978882
^58 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h8fbec5347085a8d8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^43)), refs: (^61)))) ; guid = 13939273630095011787
^59 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h2300484eba2b9763E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^55), (callee: ^28))))) ; guid = 13953063019423275028
^60 = gv: (name: "_ZN4core4hint21unreachable_unchecked17h810826d9aa0b9430E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 14012774929252028640
^61 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^62 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h89ca22f7097d146eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^47)), refs: (^61)))) ; guid = 14828231882417342495
^63 = gv: (name: "_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h261602a0ba5b563fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 15005272781912848408
^64 = gv: (name: "_ZN8csv_init4main17h0ffea2217131f610E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 112, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^24), (callee: ^48), (callee: ^37)), refs: (^61)))) ; guid = 15363300685413057346
^65 = gv: (name: "_ZN8csv_init9CsvParser8csv_init28_$u7b$$u7b$closure$u7d$$u7d$17h90ccf87cda147a0cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^19), (callee: ^2))))) ; guid = 15505298119234347894
^66 = gv: (name: "__rust_realloc") ; guid = 15507136812573830794
^67 = gv: (name: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8fa4666e6e0857d9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^22))))) ; guid = 15528131118339220161
^68 = gv: (name: "alloc24", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15708189575077101189
^69 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^57)), refs: (^64)))) ; guid = 15822663052811949562
^70 = gv: (name: "_ZN4core3ptr79drop_in_place$LT$csv_init..CsvParser..csv_init..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfb1779fa4f296a7eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 15954378357435808795
^71 = gv: (name: "_ZN4core4hint9black_box17hb4ea3e2fad549319E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 16418889782498029076
^72 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h159e89942650c12fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^29), (callee: ^55), (callee: ^34))))) ; guid = 16474898736640532536
^73 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17h17b592d7f77e96a1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16995359098532559352
^74 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h3127915d26c1be5eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 17312210907289787141
^75 = gv: (name: "vtable.2", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^45, ^70, ^47)))) ; guid = 17396896040265587541
^76 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h75384a09b7e2a594E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 17406447540746289751
^77 = gv: (name: "_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE") ; guid = 17451603669320732862
^78 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h0099c4a8e14b788aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^30), (callee: ^23))))) ; guid = 17612175338001153045
^79 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17had1cde1909073f28E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^74))))) ; guid = 18002118711389503593
^80 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h5786f4de69b4be04E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 18207114422673055513
^81 = blockcount: 211
