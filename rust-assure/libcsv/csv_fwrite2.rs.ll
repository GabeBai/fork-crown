; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_fwrite2.rs.bc'
source_filename = "csv_fwrite2.4ca6f10d-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<std::fs::File, std::io::error::Error>" = type { i32, [3 x i32] }
%"std::fs::OpenOptions" = type { %"std::sys::unix::fs::OpenOptions" }
%"std::sys::unix::fs::OpenOptions" = type { i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }
%"std::path::Path" = type { %"std::ffi::os_str::OsStr" }
%"std::ffi::os_str::OsStr" = type { %"std::sys::unix::os_str::Slice" }
%"std::sys::unix::os_str::Slice" = type { [0 x i8] }
%"core::result::Result<usize, std::io::error::Error>" = type { i64, [1 x i64] }
%"core::result::Result<usize, std::io::error::Error>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<usize, std::io::error::Error>::Err" = type { [1 x i64], i8* }
%"std::io::error::SimpleMessage" = type { { [0 x i8]*, i64 }, i8, [7 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os" = type { [1 x i32], i32 }
%"std::io::error::Custom" = type { { {}*, [3 x i64]* }, i8, [7 x i8] }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom" = type { [1 x i64], %"std::io::error::Custom"* }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage" = type { [1 x i64], %"std::io::error::SimpleMessage"* }
%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple" = type { [1 x i8], i8 }
%"std::io::error::ErrorData<&std::io::error::Custom>" = type { i8, [15 x i8] }
%"std::io::error::ErrorData<&std::io::error::Custom>::Os" = type { [1 x i32], i32 }
%"std::io::error::ErrorData<&std::io::error::Custom>::Custom" = type { [1 x i64], %"std::io::error::Custom"* }
%"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage" = type { [1 x i64], %"std::io::error::SimpleMessage"* }
%"std::io::error::ErrorData<&std::io::error::Custom>::Simple" = type { [1 x i8], i8 }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::result::Result<std::fs::File, std::io::error::Error>::Ok" = type { [1 x i32], i32 }
%"core::result::Result<std::fs::File, std::io::error::Error>::Err" = type { [1 x i64], i8* }
%"alloc::alloc::Global" = type {}
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }

@alloc27 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"#" }>, align 1
@alloc119 = private unnamed_addr constant <{ [73 x i8] }> <{ [73 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/io/mod.rs" }>, align 1
@alloc120 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [73 x i8] }>, <{ [73 x i8] }>* @alloc119, i32 0, i32 0, i32 0), [16 x i8] c"I\00\00\00\00\00\00\00\03\06\00\00!\00\00\00" }>, align 8
@alloc22 = private unnamed_addr constant <{ [28 x i8] }> <{ [28 x i8] c"failed to write whole buffer" }>, align 1
@alloc25 = private unnamed_addr constant <{ i8*, [9 x i8], [7 x i8] }> <{ i8* getelementptr inbounds (<{ [28 x i8] }>, <{ [28 x i8] }>* @alloc22, i32 0, i32 0, i32 0), [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@alloc124 = private unnamed_addr constant <{ [40 x i8] }> <{ [40 x i8] c"internal error: entered unreachable code" }>, align 1
@alloc122 = private unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/std/src/io/error/repr_bitpacked.rs" }>, align 1
@alloc123 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [90 x i8] }>, <{ [90 x i8] }>* @alloc122, i32 0, i32 0, i32 0), [16 x i8] c"Z\00\00\00\00\00\00\00\18\01\00\00\0D\00\00\00" }>, align 8
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haf94f6178788e770E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hee4c4025e89b9550E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hac06f892e06c79cfE" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hac06f892e06c79cfE" to i8*) }>, align 8
@alloc29 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc30 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc29, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc10 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc130 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/fmt/mod.rs" }>, align 1
@alloc131 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc130, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\88\01\00\00\0D\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h65b3488d0fe929eaE" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i8**, %"core::fmt::Formatter"*)* @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c9d3e6f2f9e3a87E" to i8*) }>, align 8
@alloc135 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"output.csv" }>, align 1
@alloc136 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c"Unable to create file" }>, align 1
@alloc137 = private unnamed_addr constant <{ [82 x i8] }> <{ [82 x i8] c"./inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53/csv_fwrite2.rs" }>, align 1
@alloc138 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [82 x i8] }>, <{ [82 x i8] }>* @alloc137, i32 0, i32 0, i32 0), [16 x i8] c"R\00\00\00\00\00\00\00 \00\00\00/\00\00\00" }>, align 8
@alloc1 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"example data" }>, align 1
@alloc7 = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c"Error writing to file\0A" }>, align 1
@alloc8 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [22 x i8] }>, <{ [22 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\16\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h647d97e84fcab736E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h7ded1e6d41014176E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_5, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h5f295e4d924df431E(i8* %2, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h4c1abe7a1b8390b3E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %_5 = call i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hb7511c9b8271bd93E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast { i64, i64 }* %_3 to i64*
  store i64 %self, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %_5, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h647d97e84fcab736E"(i64 %3, i64 %5, [0 x i8]* %slice.0, i64 %slice.1)
  %7 = extractvalue { [0 x i8]*, i64 } %6, 0
  %8 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  ret { [0 x i8]*, i64 } %10
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h9c1b3a9dcff05229E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self, %slice.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h4c1abe7a1b8390b3E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1)
  %_11.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_11.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb3

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index26slice_start_index_len_fail17h48cc10d8d86b5a1cE(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #10
  unreachable

bb3:                                              ; preds = %bb2
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_11.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_11.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hf7971450f05e34d5E"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17haddad7e8249153c4E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h70f98ace02427bd4E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17heff2d1dbb579606bE"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  ret i8* %1
}

; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2f15241d232c488cE(void ()* %f) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  call void @_ZN4core3ops8function6FnOnce9call_once17h77cf5df5cdc16661E(void ()* %f)
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint9black_box17hf878bc8a2cb2fc18E()
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
define internal void @_ZN3std2fs11OpenOptions4open17h1e545ddad199f610E(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %0, %"std::fs::OpenOptions"* align 4 %self, %"std::path::Path"* align 1 %1, i64 %2) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %path = alloca { %"std::path::Path"*, i64 }, align 8
  %4 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %path, i32 0, i32 0
  store %"std::path::Path"* %1, %"std::path::Path"** %4, align 8
  %5 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %path, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = invoke { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hc9b8e2a019641d5fE"({ %"std::path::Path"*, i64 }* align 8 %path)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1, %start
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { %"std::path::Path"*, i64 } %6, 0
  %_5.1 = extractvalue { %"std::path::Path"*, i64 } %6, 1
  invoke void @_ZN3std2fs11OpenOptions5_open17h237383420ebac94fE(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %0, %"std::fs::OpenOptions"* align 4 %self, %"std::path::Path"* align 1 %_5.0, i64 %_5.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  br label %bb3

bb5:                                              ; preds = %bb4
  %12 = bitcast { i8*, i32 }* %3 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN3std2fs4File6create17h8b705f1a7ff3f2f9E(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %0, [0 x i8]* align 1 %1, i64 %2) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %_9 = alloca %"std::fs::OpenOptions", align 4
  %path = alloca { [0 x i8]*, i64 }, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %path, i32 0, i32 0
  store [0 x i8]* %1, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %path, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  invoke void @_ZN3std2fs11OpenOptions3new17h4009186b44844d4fE(%"std::fs::OpenOptions"* sret(%"std::fs::OpenOptions") %_9)
          to label %bb1 unwind label %cleanup

bb8:                                              ; preds = %cleanup
  br label %bb9

cleanup:                                          ; preds = %bb5, %bb4, %bb3, %bb2, %bb1, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb8

bb1:                                              ; preds = %start
  %_7 = invoke align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions5write17hc70825f3326fd644E(%"std::fs::OpenOptions"* align 4 %_9, i1 zeroext true)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_5 = invoke align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions6create17he17ea93b296a7529E(%"std::fs::OpenOptions"* align 4 %_7, i1 zeroext true)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_3 = invoke align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions8truncate17h9f5d99feab2838e5E(%"std::fs::OpenOptions"* align 4 %_5, i1 zeroext true)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %11 = invoke { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hb60972562dcc8e75E"({ [0 x i8]*, i64 }* align 8 %path)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %_10.0 = extractvalue { %"std::path::Path"*, i64 } %11, 0
  %_10.1 = extractvalue { %"std::path::Path"*, i64 } %11, 1
  invoke void @_ZN3std2fs11OpenOptions4open17h1e545ddad199f610E(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %0, %"std::fs::OpenOptions"* align 4 %_3, %"std::path::Path"* align 1 %_10.0, i64 %_10.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  br label %bb7

bb9:                                              ; preds = %bb8
  %12 = bitcast { i8*, i32 }* %3 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

bb7:                                              ; preds = %bb6
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal i8* @_ZN3std2io5Write9write_all17h795e4cfd303b2445E(i32* align 4 %self, [0 x i8]* align 1 %0, i64 %1) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_24 = alloca i8, align 1
  %e = alloca i8**, align 8
  %_18 = alloca i64, align 8
  %_6 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %3 = alloca i8*, align 8
  %buf = alloca { [0 x i8]*, i64 }, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %bb20, %start
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  %_5.0 = load [0 x i8]*, [0 x i8]** %6, align 8, !nonnull !3, !align !4, !noundef !3
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_5.1 = load i64, i64* %7, align 8
  %_4 = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hd7c25125b1c9e56bE"([0 x i8]* align 1 %_5.0, i64 %_5.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb3, label %bb16

bb16:                                             ; preds = %bb2
  %8 = bitcast i8** %3 to {}**
  store {}* null, {}** %8, align 8
  br label %bb18

bb3:                                              ; preds = %bb2
  %9 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  %_8.0 = load [0 x i8]*, [0 x i8]** %9, align 8, !nonnull !3, !align !4, !noundef !3
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_8.1 = load i64, i64* %10, align 8
  call void @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h04d9f6328c30c71fE"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>") %_6, i32* align 4 %self, [0 x i8]* align 1 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %11 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to i64*
  %_9 = load i64, i64* %11, align 8, !range !5, !noundef !3
  switch i64 %_9, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb11
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %12 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %13 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %bb7, label %bb9

bb11:                                             ; preds = %bb4
  %16 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %17 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %16, i32 0, i32 1
  store i8** %17, i8*** %e, align 8
  %_31 = load i8**, i8*** %e, align 8, !nonnull !3, !align !6, !noundef !3
  %18 = invoke i8 @_ZN3std2io5error5Error4kind17h039179e571a4ee00E(i8** align 8 %_31)
          to label %bb12 unwind label %cleanup, !range !7

bb26:                                             ; preds = %cleanup
  %19 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to i64*
  %_34 = load i64, i64* %19, align 8, !range !5, !noundef !3
  %20 = icmp eq i64 %_34, 1
  br i1 %20, label %bb24, label %bb19

cleanup:                                          ; preds = %bb9, %bb7, %bb12, %bb11
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  %23 = extractvalue { i8*, i32 } %21, 1
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %bb26

bb12:                                             ; preds = %bb11
  store i8 %18, i8* %_24, align 1
  %_22 = invoke zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h26be8433055bf1b3E"(i8* align 1 %_24, i8* align 1 getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc27, i32 0, i32 0, i32 0))
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  br i1 %_22, label %bb14, label %bb15

bb15:                                             ; preds = %bb13
  %26 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %27 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %26, i32 0, i32 1
  %e1 = load i8*, i8** %27, align 8, !nonnull !3, !noundef !3
  store i8* %e1, i8** %3, align 8
  br label %bb17

bb14:                                             ; preds = %bb13
  br label %bb23

bb23:                                             ; preds = %bb10, %bb14
  %28 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to i64*
  %_33 = load i64, i64* %28, align 8, !range !5, !noundef !3
  %29 = icmp eq i64 %_33, 1
  br i1 %29, label %bb21, label %bb20

bb17:                                             ; preds = %bb8, %bb15
  br label %bb18

bb7:                                              ; preds = %bb5
  %_10 = invoke i8* @_ZN3std2io5error5Error19from_static_message17h4c6e963d47000b12E(%"std::io::error::SimpleMessage"* align 8 bitcast (<{ i8*, [9 x i8], [7 x i8] }>* @alloc25 to %"std::io::error::SimpleMessage"*))
          to label %bb8 unwind label %cleanup

bb9:                                              ; preds = %bb5
  %30 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Ok"*
  %31 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Ok", %"core::result::Result<usize, std::io::error::Error>::Ok"* %30, i32 0, i32 1
  %n = load i64, i64* %31, align 8
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  %_17.0 = load [0 x i8]*, [0 x i8]** %32, align 8, !nonnull !3, !align !4, !noundef !3
  %33 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_17.1 = load i64, i64* %33, align 8
  store i64 %n, i64* %_18, align 8
  %34 = load i64, i64* %_18, align 8
  %35 = invoke { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h2840fa4a4ce00bf4E"([0 x i8]* align 1 %_17.0, i64 %_17.1, i64 %34, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc120 to %"core::panic::location::Location"*))
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %_16.0 = extractvalue { [0 x i8]*, i64 } %35, 0
  %_16.1 = extractvalue { [0 x i8]*, i64 } %35, 1
  %36 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  store [0 x i8]* %_16.0, [0 x i8]** %36, align 8
  %37 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  store i64 %_16.1, i64* %37, align 8
  br label %bb23

bb21:                                             ; preds = %bb23
  br i1 true, label %bb22, label %bb20

bb20:                                             ; preds = %bb22, %bb21, %bb23
  br label %bb1

bb22:                                             ; preds = %bb21
  %38 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %39 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %38, i32 0, i32 1
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h65b3488d0fe929eaE"(i8** %39)
  br label %bb20

bb8:                                              ; preds = %bb7
  store i8* %_10, i8** %3, align 8
  br label %bb17

bb24:                                             ; preds = %bb26
  br i1 true, label %bb25, label %bb19

bb19:                                             ; preds = %bb25, %bb24, %bb26
  %40 = bitcast { i8*, i32 }* %2 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = insertvalue { i8*, i32 } undef, i8* %41, 0
  %45 = insertvalue { i8*, i32 } %44, i32 %43, 1
  resume { i8*, i32 } %45

bb25:                                             ; preds = %bb24
  %46 = bitcast %"core::result::Result<usize, std::io::error::Error>"* %_6 to %"core::result::Result<usize, std::io::error::Error>::Err"*
  %47 = getelementptr inbounds %"core::result::Result<usize, std::io::error::Error>::Err", %"core::result::Result<usize, std::io::error::Error>::Err"* %46, i32 0, i32 1
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h65b3488d0fe929eaE"(i8** %47) #11
          to label %bb19 unwind label %abort

abort:                                            ; preds = %bb25
  %48 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #12
  unreachable

bb18:                                             ; preds = %bb17, %bb16
  %49 = load i8*, i8** %3, align 8
  ret i8* %49
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std2io5error14repr_bitpacked11decode_repr17h2ca9a92beb2111c9E(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %0, i8* %ptr) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %_34 = alloca i64*, align 8
  %_19 = alloca i64*, align 8
  %bits = alloca i64, align 8
  store i8 1, i8* %_37, align 1
  %_4 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6114f82f4688b234E"(i8* %ptr)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
  %2 = load i8, i8* %_37, align 1, !range !8, !noundef !3
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb21, label %bb19

cleanup:                                          ; preds = %bb6, %bb9, %bb15, %bb13, %bb11, %bb8, %bb5, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb22

bb1:                                              ; preds = %start
  %9 = invoke i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h53a61e9233e1da66E"({}* %_4)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i64 %9, i64* %bits, align 8
  %_7 = load i64, i64* %bits, align 8
  %_6 = and i64 %_7, 3
  switch i64 %_6, label %bb3 [
    i64 2, label %bb4
    i64 3, label %bb5
    i64 0, label %bb8
    i64 1, label %bb11
  ]

bb3:                                              ; preds = %bb2
  invoke void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast (<{ [40 x i8] }>* @alloc124 to [0 x i8]*), i64 40, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc123 to %"core::panic::location::Location"*)) #10
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb2
  %_11 = load i64, i64* %bits, align 8
  %_9 = ashr i64 %_11, 32
  %code = trunc i64 %_9 to i32
  %10 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os"*
  %11 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Os"* %10, i32 0, i32 1
  store i32 %code, i32* %11, align 4
  %12 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 0, i8* %12, align 8
  br label %bb17

bb5:                                              ; preds = %bb2
  %_15 = load i64, i64* %bits, align 8
  %_14 = lshr i64 %_15, 32
  %kind_bits = trunc i64 %_14 to i32
  %_17 = invoke i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h6d212d26018e4caeE(i32 %kind_bits)
          to label %bb6 unwind label %cleanup, !range !9

bb8:                                              ; preds = %bb2
  %_25 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h29f904452b883a7dE"(i8* %ptr)
          to label %bb9 unwind label %cleanup

bb11:                                             ; preds = %bb2
  %_30 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6114f82f4688b234E"(i8* %ptr)
          to label %bb12 unwind label %cleanup

unreachable:                                      ; preds = %bb3
  unreachable

bb12:                                             ; preds = %bb11
  %13 = bitcast {}* %_30 to i8*
  br label %bb13

bb13:                                             ; preds = %bb12
  %_28 = invoke i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h8b3a35da65a47b37E"(i8* %13, i64 1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %14 = bitcast i8* %_28 to %"std::io::error::Custom"*
  br label %bb15

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_37, align 1
  %15 = bitcast i64** %_34 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %14, %"std::io::error::Custom"** %15, align 8
  %16 = load i64*, i64** %_34, align 8
  %17 = bitcast i64* %16 to %"std::io::error::Custom"*
  %_32 = invoke align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h9778b9f340bd2326E"(%"std::io::error::Custom"* %17)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %18 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %19 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %18, i32 0, i32 1
  store %"std::io::error::Custom"* %_32, %"std::io::error::Custom"** %19, align 8
  %20 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 3, i8* %20, align 8
  br label %bb17

bb17:                                             ; preds = %bb7, %bb10, %bb16, %bb4
  %21 = load i8, i8* %_37, align 1, !range !8, !noundef !3
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb20, label %bb18

bb9:                                              ; preds = %bb8
  %_24 = invoke %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha85c8379a5da9573E"(i64* %_25)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %23 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage"*
  %24 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::SimpleMessage"* %23, i32 0, i32 1
  store %"std::io::error::SimpleMessage"* %_24, %"std::io::error::SimpleMessage"** %24, align 8
  %25 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 2, i8* %25, align 8
  br label %bb17

bb6:                                              ; preds = %bb5
  store i64* %bits, i64** %_19, align 8
  %26 = load i64*, i64** %_19, align 8, !nonnull !3, !align !6, !noundef !3
  %kind = invoke i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h683d4372a1d69a3eE"(i8 %_17, i64* align 8 %26)
          to label %bb7 unwind label %cleanup, !range !7

bb7:                                              ; preds = %bb6
  %27 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple"*
  %28 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Simple"* %27, i32 0, i32 1
  store i8 %kind, i8* %28, align 1
  %29 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %0 to i8*
  store i8 1, i8* %29, align 8
  br label %bb17

bb19:                                             ; preds = %bb21, %bb22
  %30 = bitcast { i8*, i32 }* %1 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35

bb21:                                             ; preds = %bb22
  br label %bb19

bb18:                                             ; preds = %bb20, %bb17
  ret void

bb20:                                             ; preds = %bb17
  br label %bb18
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std2io5error14repr_bitpacked11decode_repr17ha4fd8e33ef69b574E(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %0, i8* %ptr) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_37 = alloca i8, align 1
  %_34 = alloca i64*, align 8
  %_19 = alloca i64*, align 8
  %bits = alloca i64, align 8
  store i8 1, i8* %_37, align 1
  %_4 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6114f82f4688b234E"(i8* %ptr)
          to label %bb1 unwind label %cleanup

bb22:                                             ; preds = %cleanup
  %2 = load i8, i8* %_37, align 1, !range !8, !noundef !3
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb21, label %bb19

cleanup:                                          ; preds = %bb6, %bb9, %bb15, %bb13, %bb11, %bb8, %bb5, %bb3, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb22

bb1:                                              ; preds = %start
  %9 = invoke i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h53a61e9233e1da66E"({}* %_4)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i64 %9, i64* %bits, align 8
  %_7 = load i64, i64* %bits, align 8
  %_6 = and i64 %_7, 3
  switch i64 %_6, label %bb3 [
    i64 2, label %bb4
    i64 3, label %bb5
    i64 0, label %bb8
    i64 1, label %bb11
  ]

bb3:                                              ; preds = %bb2
  invoke void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast (<{ [40 x i8] }>* @alloc124 to [0 x i8]*), i64 40, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc123 to %"core::panic::location::Location"*)) #10
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb2
  %_11 = load i64, i64* %bits, align 8
  %_9 = ashr i64 %_11, 32
  %code = trunc i64 %_9 to i32
  %10 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to %"std::io::error::ErrorData<&std::io::error::Custom>::Os"*
  %11 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Os", %"std::io::error::ErrorData<&std::io::error::Custom>::Os"* %10, i32 0, i32 1
  store i32 %code, i32* %11, align 4
  %12 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to i8*
  store i8 0, i8* %12, align 8
  br label %bb17

bb5:                                              ; preds = %bb2
  %_15 = load i64, i64* %bits, align 8
  %_14 = lshr i64 %_15, 32
  %kind_bits = trunc i64 %_14 to i32
  %_17 = invoke i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h6d212d26018e4caeE(i32 %kind_bits)
          to label %bb6 unwind label %cleanup, !range !9

bb8:                                              ; preds = %bb2
  %_25 = invoke i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h29f904452b883a7dE"(i8* %ptr)
          to label %bb9 unwind label %cleanup

bb11:                                             ; preds = %bb2
  %_30 = invoke {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6114f82f4688b234E"(i8* %ptr)
          to label %bb12 unwind label %cleanup

unreachable:                                      ; preds = %bb3
  unreachable

bb12:                                             ; preds = %bb11
  %13 = bitcast {}* %_30 to i8*
  br label %bb13

bb13:                                             ; preds = %bb12
  %_28 = invoke i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h8b3a35da65a47b37E"(i8* %13, i64 1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %14 = bitcast i8* %_28 to %"std::io::error::Custom"*
  br label %bb15

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_37, align 1
  %15 = bitcast i64** %_34 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %14, %"std::io::error::Custom"** %15, align 8
  %16 = load i64*, i64** %_34, align 8
  %17 = bitcast i64* %16 to %"std::io::error::Custom"*
  %_32 = invoke align 8 %"std::io::error::Custom"* @"_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17he1b5744ee6f0ea5eE"(%"std::io::error::Custom"* %17)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %18 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"*
  %19 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Custom", %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"* %18, i32 0, i32 1
  store %"std::io::error::Custom"* %_32, %"std::io::error::Custom"** %19, align 8
  %20 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to i8*
  store i8 3, i8* %20, align 8
  br label %bb17

bb17:                                             ; preds = %bb7, %bb10, %bb16, %bb4
  %21 = load i8, i8* %_37, align 1, !range !8, !noundef !3
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb20, label %bb18

bb9:                                              ; preds = %bb8
  %_24 = invoke %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha85c8379a5da9573E"(i64* %_25)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %23 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage"*
  %24 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage", %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage"* %23, i32 0, i32 1
  store %"std::io::error::SimpleMessage"* %_24, %"std::io::error::SimpleMessage"** %24, align 8
  %25 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to i8*
  store i8 2, i8* %25, align 8
  br label %bb17

bb6:                                              ; preds = %bb5
  store i64* %bits, i64** %_19, align 8
  %26 = load i64*, i64** %_19, align 8, !nonnull !3, !align !6, !noundef !3
  %kind = invoke i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h50d0c2f7c0c61d3eE"(i8 %_17, i64* align 8 %26)
          to label %bb7 unwind label %cleanup, !range !7

bb7:                                              ; preds = %bb6
  %27 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to %"std::io::error::ErrorData<&std::io::error::Custom>::Simple"*
  %28 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Simple", %"std::io::error::ErrorData<&std::io::error::Custom>::Simple"* %27, i32 0, i32 1
  store i8 %kind, i8* %28, align 1
  %29 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %0 to i8*
  store i8 1, i8* %29, align 8
  br label %bb17

bb19:                                             ; preds = %bb21, %bb22
  %30 = bitcast { i8*, i32 }* %1 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = insertvalue { i8*, i32 } undef, i8* %31, 0
  %35 = insertvalue { i8*, i32 } %34, i32 %33, 1
  resume { i8*, i32 } %35

bb21:                                             ; preds = %bb22
  br label %bb19

bb18:                                             ; preds = %bb20, %bb17
  ret void

bb20:                                             ; preds = %bb17
  br label %bb18
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h294436bc1b1dabb9E"(i64* align 8 %_1) unnamed_addr #0 {
start:
  call void @_ZN4core4hint21unreachable_unchecked17hd4e996bd13ed8ae9E() #10
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h963e9d6bec459e47E"(i64* align 8 %_1) unnamed_addr #0 {
start:
  call void @_ZN4core4hint21unreachable_unchecked17hd4e996bd13ed8ae9E() #10
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN3std2io5error14repr_bitpacked14kind_from_prim17h6d212d26018e4caeE(i32 %0) unnamed_addr #0 {
start:
  %1 = alloca i8, align 1
  %ek = alloca i32, align 4
  store i32 %0, i32* %ek, align 4
  %_5 = load i32, i32* %ek, align 4
  %_4 = icmp eq i32 %_5, 0
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_10 = load i32, i32* %ek, align 4
  %_9 = icmp eq i32 %_10, 1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 0, i8* %1, align 1
  br label %bb83

bb83:                                             ; preds = %bb81, %bb82, %bb79, %bb77, %bb75, %bb73, %bb71, %bb69, %bb67, %bb65, %bb63, %bb61, %bb59, %bb57, %bb55, %bb53, %bb51, %bb49, %bb47, %bb45, %bb43, %bb41, %bb39, %bb37, %bb35, %bb33, %bb31, %bb29, %bb27, %bb25, %bb23, %bb21, %bb19, %bb17, %bb15, %bb13, %bb11, %bb9, %bb7, %bb5, %bb3, %bb1
  %2 = load i8, i8* %1, align 1, !range !9, !noundef !3
  ret i8 %2

bb4:                                              ; preds = %bb2
  %_15 = load i32, i32* %ek, align 4
  %_14 = icmp eq i32 %_15, 2
  br i1 %_14, label %bb5, label %bb6

bb3:                                              ; preds = %bb2
  store i8 1, i8* %1, align 1
  br label %bb83

bb6:                                              ; preds = %bb4
  %_20 = load i32, i32* %ek, align 4
  %_19 = icmp eq i32 %_20, 3
  br i1 %_19, label %bb7, label %bb8

bb5:                                              ; preds = %bb4
  store i8 2, i8* %1, align 1
  br label %bb83

bb8:                                              ; preds = %bb6
  %_25 = load i32, i32* %ek, align 4
  %_24 = icmp eq i32 %_25, 4
  br i1 %_24, label %bb9, label %bb10

bb7:                                              ; preds = %bb6
  store i8 3, i8* %1, align 1
  br label %bb83

bb10:                                             ; preds = %bb8
  %_30 = load i32, i32* %ek, align 4
  %_29 = icmp eq i32 %_30, 5
  br i1 %_29, label %bb11, label %bb12

bb9:                                              ; preds = %bb8
  store i8 4, i8* %1, align 1
  br label %bb83

bb12:                                             ; preds = %bb10
  %_35 = load i32, i32* %ek, align 4
  %_34 = icmp eq i32 %_35, 6
  br i1 %_34, label %bb13, label %bb14

bb11:                                             ; preds = %bb10
  store i8 5, i8* %1, align 1
  br label %bb83

bb14:                                             ; preds = %bb12
  %_40 = load i32, i32* %ek, align 4
  %_39 = icmp eq i32 %_40, 7
  br i1 %_39, label %bb15, label %bb16

bb13:                                             ; preds = %bb12
  store i8 6, i8* %1, align 1
  br label %bb83

bb16:                                             ; preds = %bb14
  %_45 = load i32, i32* %ek, align 4
  %_44 = icmp eq i32 %_45, 8
  br i1 %_44, label %bb17, label %bb18

bb15:                                             ; preds = %bb14
  store i8 7, i8* %1, align 1
  br label %bb83

bb18:                                             ; preds = %bb16
  %_50 = load i32, i32* %ek, align 4
  %_49 = icmp eq i32 %_50, 9
  br i1 %_49, label %bb19, label %bb20

bb17:                                             ; preds = %bb16
  store i8 8, i8* %1, align 1
  br label %bb83

bb20:                                             ; preds = %bb18
  %_55 = load i32, i32* %ek, align 4
  %_54 = icmp eq i32 %_55, 10
  br i1 %_54, label %bb21, label %bb22

bb19:                                             ; preds = %bb18
  store i8 9, i8* %1, align 1
  br label %bb83

bb22:                                             ; preds = %bb20
  %_60 = load i32, i32* %ek, align 4
  %_59 = icmp eq i32 %_60, 11
  br i1 %_59, label %bb23, label %bb24

bb21:                                             ; preds = %bb20
  store i8 10, i8* %1, align 1
  br label %bb83

bb24:                                             ; preds = %bb22
  %_65 = load i32, i32* %ek, align 4
  %_64 = icmp eq i32 %_65, 12
  br i1 %_64, label %bb25, label %bb26

bb23:                                             ; preds = %bb22
  store i8 11, i8* %1, align 1
  br label %bb83

bb26:                                             ; preds = %bb24
  %_70 = load i32, i32* %ek, align 4
  %_69 = icmp eq i32 %_70, 13
  br i1 %_69, label %bb27, label %bb28

bb25:                                             ; preds = %bb24
  store i8 12, i8* %1, align 1
  br label %bb83

bb28:                                             ; preds = %bb26
  %_75 = load i32, i32* %ek, align 4
  %_74 = icmp eq i32 %_75, 14
  br i1 %_74, label %bb29, label %bb30

bb27:                                             ; preds = %bb26
  store i8 13, i8* %1, align 1
  br label %bb83

bb30:                                             ; preds = %bb28
  %_80 = load i32, i32* %ek, align 4
  %_79 = icmp eq i32 %_80, 15
  br i1 %_79, label %bb31, label %bb32

bb29:                                             ; preds = %bb28
  store i8 14, i8* %1, align 1
  br label %bb83

bb32:                                             ; preds = %bb30
  %_85 = load i32, i32* %ek, align 4
  %_84 = icmp eq i32 %_85, 16
  br i1 %_84, label %bb33, label %bb34

bb31:                                             ; preds = %bb30
  store i8 15, i8* %1, align 1
  br label %bb83

bb34:                                             ; preds = %bb32
  %_90 = load i32, i32* %ek, align 4
  %_89 = icmp eq i32 %_90, 17
  br i1 %_89, label %bb35, label %bb36

bb33:                                             ; preds = %bb32
  store i8 16, i8* %1, align 1
  br label %bb83

bb36:                                             ; preds = %bb34
  %_95 = load i32, i32* %ek, align 4
  %_94 = icmp eq i32 %_95, 18
  br i1 %_94, label %bb37, label %bb38

bb35:                                             ; preds = %bb34
  store i8 17, i8* %1, align 1
  br label %bb83

bb38:                                             ; preds = %bb36
  %_100 = load i32, i32* %ek, align 4
  %_99 = icmp eq i32 %_100, 19
  br i1 %_99, label %bb39, label %bb40

bb37:                                             ; preds = %bb36
  store i8 18, i8* %1, align 1
  br label %bb83

bb40:                                             ; preds = %bb38
  %_105 = load i32, i32* %ek, align 4
  %_104 = icmp eq i32 %_105, 20
  br i1 %_104, label %bb41, label %bb42

bb39:                                             ; preds = %bb38
  store i8 19, i8* %1, align 1
  br label %bb83

bb42:                                             ; preds = %bb40
  %_110 = load i32, i32* %ek, align 4
  %_109 = icmp eq i32 %_110, 21
  br i1 %_109, label %bb43, label %bb44

bb41:                                             ; preds = %bb40
  store i8 20, i8* %1, align 1
  br label %bb83

bb44:                                             ; preds = %bb42
  %_115 = load i32, i32* %ek, align 4
  %_114 = icmp eq i32 %_115, 22
  br i1 %_114, label %bb45, label %bb46

bb43:                                             ; preds = %bb42
  store i8 21, i8* %1, align 1
  br label %bb83

bb46:                                             ; preds = %bb44
  %_120 = load i32, i32* %ek, align 4
  %_119 = icmp eq i32 %_120, 23
  br i1 %_119, label %bb47, label %bb48

bb45:                                             ; preds = %bb44
  store i8 22, i8* %1, align 1
  br label %bb83

bb48:                                             ; preds = %bb46
  %_125 = load i32, i32* %ek, align 4
  %_124 = icmp eq i32 %_125, 24
  br i1 %_124, label %bb49, label %bb50

bb47:                                             ; preds = %bb46
  store i8 23, i8* %1, align 1
  br label %bb83

bb50:                                             ; preds = %bb48
  %_130 = load i32, i32* %ek, align 4
  %_129 = icmp eq i32 %_130, 25
  br i1 %_129, label %bb51, label %bb52

bb49:                                             ; preds = %bb48
  store i8 24, i8* %1, align 1
  br label %bb83

bb52:                                             ; preds = %bb50
  %_135 = load i32, i32* %ek, align 4
  %_134 = icmp eq i32 %_135, 26
  br i1 %_134, label %bb53, label %bb54

bb51:                                             ; preds = %bb50
  store i8 25, i8* %1, align 1
  br label %bb83

bb54:                                             ; preds = %bb52
  %_140 = load i32, i32* %ek, align 4
  %_139 = icmp eq i32 %_140, 27
  br i1 %_139, label %bb55, label %bb56

bb53:                                             ; preds = %bb52
  store i8 26, i8* %1, align 1
  br label %bb83

bb56:                                             ; preds = %bb54
  %_145 = load i32, i32* %ek, align 4
  %_144 = icmp eq i32 %_145, 28
  br i1 %_144, label %bb57, label %bb58

bb55:                                             ; preds = %bb54
  store i8 27, i8* %1, align 1
  br label %bb83

bb58:                                             ; preds = %bb56
  %_150 = load i32, i32* %ek, align 4
  %_149 = icmp eq i32 %_150, 29
  br i1 %_149, label %bb59, label %bb60

bb57:                                             ; preds = %bb56
  store i8 28, i8* %1, align 1
  br label %bb83

bb60:                                             ; preds = %bb58
  %_155 = load i32, i32* %ek, align 4
  %_154 = icmp eq i32 %_155, 30
  br i1 %_154, label %bb61, label %bb62

bb59:                                             ; preds = %bb58
  store i8 29, i8* %1, align 1
  br label %bb83

bb62:                                             ; preds = %bb60
  %_160 = load i32, i32* %ek, align 4
  %_159 = icmp eq i32 %_160, 31
  br i1 %_159, label %bb63, label %bb64

bb61:                                             ; preds = %bb60
  store i8 30, i8* %1, align 1
  br label %bb83

bb64:                                             ; preds = %bb62
  %_165 = load i32, i32* %ek, align 4
  %_164 = icmp eq i32 %_165, 32
  br i1 %_164, label %bb65, label %bb66

bb63:                                             ; preds = %bb62
  store i8 31, i8* %1, align 1
  br label %bb83

bb66:                                             ; preds = %bb64
  %_170 = load i32, i32* %ek, align 4
  %_169 = icmp eq i32 %_170, 33
  br i1 %_169, label %bb67, label %bb68

bb65:                                             ; preds = %bb64
  store i8 32, i8* %1, align 1
  br label %bb83

bb68:                                             ; preds = %bb66
  %_175 = load i32, i32* %ek, align 4
  %_174 = icmp eq i32 %_175, 34
  br i1 %_174, label %bb69, label %bb70

bb67:                                             ; preds = %bb66
  store i8 33, i8* %1, align 1
  br label %bb83

bb70:                                             ; preds = %bb68
  %_180 = load i32, i32* %ek, align 4
  %_179 = icmp eq i32 %_180, 35
  br i1 %_179, label %bb71, label %bb72

bb69:                                             ; preds = %bb68
  store i8 34, i8* %1, align 1
  br label %bb83

bb72:                                             ; preds = %bb70
  %_185 = load i32, i32* %ek, align 4
  %_184 = icmp eq i32 %_185, 39
  br i1 %_184, label %bb73, label %bb74

bb71:                                             ; preds = %bb70
  store i8 35, i8* %1, align 1
  br label %bb83

bb74:                                             ; preds = %bb72
  %_190 = load i32, i32* %ek, align 4
  %_189 = icmp eq i32 %_190, 37
  br i1 %_189, label %bb75, label %bb76

bb73:                                             ; preds = %bb72
  store i8 39, i8* %1, align 1
  br label %bb83

bb76:                                             ; preds = %bb74
  %_195 = load i32, i32* %ek, align 4
  %_194 = icmp eq i32 %_195, 36
  br i1 %_194, label %bb77, label %bb78

bb75:                                             ; preds = %bb74
  store i8 37, i8* %1, align 1
  br label %bb83

bb78:                                             ; preds = %bb76
  %_200 = load i32, i32* %ek, align 4
  %_199 = icmp eq i32 %_200, 38
  br i1 %_199, label %bb79, label %bb80

bb77:                                             ; preds = %bb76
  store i8 36, i8* %1, align 1
  br label %bb83

bb80:                                             ; preds = %bb78
  %_205 = load i32, i32* %ek, align 4
  %_204 = icmp eq i32 %_205, 40
  br i1 %_204, label %bb81, label %bb82

bb79:                                             ; preds = %bb78
  store i8 38, i8* %1, align 1
  br label %bb83

bb82:                                             ; preds = %bb80
  store i8 41, i8* %1, align 1
  br label %bb83

bb81:                                             ; preds = %bb80
  store i8 40, i8* %1, align 1
  br label %bb83
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17h3c801d911d24f105E(%"std::io::error::SimpleMessage"* align 8 %m) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = bitcast %"std::io::error::SimpleMessage"* %m to {}*
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h4c64dd65e4e90546E"({}* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN3std2io5error14repr_bitpacked4Repr4data17hadef74b661d92315E(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %0, i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = load i8*, i8** %self, align 8, !nonnull !3, !noundef !3
  call void @_ZN3std2io5error14repr_bitpacked11decode_repr17ha4fd8e33ef69b574E(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %0, i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 %"std::io::error::Custom"* @"_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17he1b5744ee6f0ea5eE"(%"std::io::error::Custom"* %c) unnamed_addr #0 {
start:
  ret %"std::io::error::Custom"* %c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN3std2io5error5Error19from_static_message17h4c6e963d47000b12E(%"std::io::error::SimpleMessage"* align 8 %msg) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_2 = call i8* @_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17h3c801d911d24f105E(%"std::io::error::SimpleMessage"* align 8 %msg)
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %_2, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN3std2io5error5Error4kind17h039179e571a4ee00E(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::error::ErrorData<&std::io::error::Custom>", align 8
  %0 = alloca i8, align 1
  call void @_ZN3std2io5error14repr_bitpacked4Repr4data17hadef74b661d92315E(%"std::io::error::ErrorData<&std::io::error::Custom>"* sret(%"std::io::error::ErrorData<&std::io::error::Custom>") %_2, i8** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to i8*
  %2 = load i8, i8* %1, align 8, !range !10, !noundef !3
  %_4 = zext i8 %2 to i64
  switch i64 %_4, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb7
    i64 2, label %bb2
    i64 3, label %bb6
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %3 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to %"std::io::error::ErrorData<&std::io::error::Custom>::Os"*
  %4 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Os", %"std::io::error::ErrorData<&std::io::error::Custom>::Os"* %3, i32 0, i32 1
  %code = load i32, i32* %4, align 4
  %5 = call i8 @_ZN3std3sys4unix17decode_error_kind17hb41f9e389208fdcfE(i32 %code), !range !7
  store i8 %5, i8* %0, align 1
  br label %bb5

bb7:                                              ; preds = %bb1
  %6 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to %"std::io::error::ErrorData<&std::io::error::Custom>::Simple"*
  %7 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Simple", %"std::io::error::ErrorData<&std::io::error::Custom>::Simple"* %6, i32 0, i32 1
  %kind = load i8, i8* %7, align 1, !range !7, !noundef !3
  store i8 %kind, i8* %0, align 1
  br label %bb8

bb2:                                              ; preds = %bb1
  %8 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage"*
  %9 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage", %"std::io::error::ErrorData<&std::io::error::Custom>::SimpleMessage"* %8, i32 0, i32 1
  %m = load %"std::io::error::SimpleMessage"*, %"std::io::error::SimpleMessage"** %9, align 8, !nonnull !3, !align !6, !noundef !3
  %10 = getelementptr inbounds %"std::io::error::SimpleMessage", %"std::io::error::SimpleMessage"* %m, i32 0, i32 1
  %11 = load i8, i8* %10, align 8, !range !7, !noundef !3
  store i8 %11, i8* %0, align 1
  br label %bb8

bb6:                                              ; preds = %bb1
  %12 = bitcast %"std::io::error::ErrorData<&std::io::error::Custom>"* %_2 to %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"*
  %13 = getelementptr inbounds %"std::io::error::ErrorData<&std::io::error::Custom>::Custom", %"std::io::error::ErrorData<&std::io::error::Custom>::Custom"* %12, i32 0, i32 1
  %c = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %13, align 8, !nonnull !3, !align !6, !noundef !3
  %14 = getelementptr inbounds %"std::io::error::Custom", %"std::io::error::Custom"* %c, i32 0, i32 1
  %15 = load i8, i8* %14, align 8, !range !7, !noundef !3
  store i8 %15, i8* %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb5, %bb6, %bb2, %bb7
  %16 = load i8, i8* %0, align 1, !range !7, !noundef !3
  ret i8 %16

bb5:                                              ; preds = %bb4
  br label %bb8
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17hdb231489281cc5d8E(void ()* %main, i64 %argc, i8** %argv) unnamed_addr #2 {
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
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hac06f892e06c79cfE"(i64** align 8 %_1) unnamed_addr #0 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_4 = load void ()*, void ()** %0, align 8, !nonnull !3, !noundef !3
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2f15241d232c488cE(void ()* %_4)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbfd206bc28b48f21E"()
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call i32 @_ZN3std7process8ExitCode6to_i3217hf0394d30cee90735E(i8 %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @_ZN3std3ffi6os_str5OsStr10from_inner17h6f3c079f8b84caebE(%"std::sys::unix::os_str::Slice"* align 1 %inner.0, i64 %inner.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast %"std::sys::unix::os_str::Slice"* %inner.0 to %"std::ffi::os_str::OsStr"*
  %0 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %_2.0, 0
  %1 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, i64 %inner.1, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17hdcc87471ddc40422E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice8from_str17hdd1e60cca7c9b093E([0 x i8]* align 1 %self.0, i64 %self.1)
  %_3.0 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %0, 0
  %_3.1 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { %"std::ffi::os_str::OsStr"*, i64 } @_ZN3std3ffi6os_str5OsStr10from_inner17h6f3c079f8b84caebE(%"std::sys::unix::os_str::Slice"* align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 0
  %3 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %2, 0
  %5 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %4, i64 %3, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice13from_u8_slice17h791610380dedf403E([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %0 = alloca { %"std::sys::unix::os_str::Slice"*, i64 }, align 8
  %1 = bitcast { %"std::sys::unix::os_str::Slice"*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %s.1, i64* %3, align 8
  %4 = getelementptr inbounds { %"std::sys::unix::os_str::Slice"*, i64 }, { %"std::sys::unix::os_str::Slice"*, i64 }* %0, i32 0, i32 0
  %5 = load %"std::sys::unix::os_str::Slice"*, %"std::sys::unix::os_str::Slice"** %4, align 8, !nonnull !3, !align !4, !noundef !3
  %6 = getelementptr inbounds { %"std::sys::unix::os_str::Slice"*, i64 }, { %"std::sys::unix::os_str::Slice"*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } undef, %"std::sys::unix::os_str::Slice"* %5, 0
  %9 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } %8, i64 %7, 1
  ret { %"std::sys::unix::os_str::Slice"*, i64 } %9
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice8from_str17hdd1e60cca7c9b093E([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %s.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !3, !align !4, !noundef !3
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  %_3.0 = extractvalue { [0 x i8]*, i64 } %8, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = call { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice13from_u8_slice17h791610380dedf403E([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %10 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %9, 0
  %11 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %9, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %12 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } undef, %"std::sys::unix::os_str::Slice"* %10, 0
  %13 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } %12, i64 %11, 1
  ret { %"std::sys::unix::os_str::Slice"*, i64 } %13
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8f81841af471e591E(i8* align 1 %self) unnamed_addr #0 {
start:
  %_2 = load i8, i8* %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; Function Attrs: nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17h6f31cbb52911cc33E([0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #2 {
start:
  %0 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17hdcc87471ddc40422E"([0 x i8]* align 1 %s.0, i64 %s.1)
  %_4.0 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 0
  %_4.1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2.0 = bitcast %"std::ffi::os_str::OsStr"* %_4.0 to %"std::path::Path"*
  %1 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %_2.0, 0
  %2 = insertvalue { %"std::path::Path"*, i64 } %1, i64 %_4.1, 1
  ret { %"std::path::Path"*, i64 } %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN3std4path77_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$str$GT$6as_ref17hd2e06afe5abbb65aE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17h6f31cbb52911cc33E([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { %"std::path::Path"*, i64 } %0, 0
  %2 = extractvalue { %"std::path::Path"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %1, 0
  %4 = insertvalue { %"std::path::Path"*, i64 } %3, i64 %2, 1
  ret { %"std::path::Path"*, i64 } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std7process8ExitCode6to_i3217hf0394d30cee90735E(i8 %0) unnamed_addr #0 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8f81841af471e591E(i8* align 1 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h06ba5084548c36e2E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %_24 = alloca { i64*, i64 }, align 8
  %_16 = alloca %"core::fmt::Arguments", align 8
  %_3 = alloca i8, align 1
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i64 %args.1, 1
  %_9 = icmp ugt i64 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = load i8, i8* %_3, align 1, !range !8, !noundef !3
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %4 = bitcast { i64*, i64 }* %_24 to {}**
  store {}* null, {}** %4, align 8
  %5 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %5, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %6, align 8
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %5, i32 0, i32 1
  store i64 %pieces.1, i64* %7, align 8
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %9 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8, !align !6
  %11 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %8, i32 0, i32 0
  store i64* %10, i64** %13, align 8
  %14 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %8, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %16 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %15, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %16, align 8
  %17 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %15, i32 0, i32 1
  store i64 %args.1, i64* %17, align 8
  ret void

bb4:                                              ; preds = %bb3
  call void @_ZN4core3fmt9Arguments6new_v117h06ba5084548c36e2E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc30 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc10 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @_ZN4core9panicking9panic_fmt17ha6dc7f2ab2479463E(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc131 to %"core::panic::location::Location"*)) #10
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h23d30003d8e95110E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !11, !noundef !3
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hcc2e1db91072562eE(i64 %_3), !range !12
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hb08fd4c4fc389b1aE(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !11, !noundef !3
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hcc2e1db91072562eE(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !12, !noundef !3
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hc37c695375694288E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hee4c4025e89b9550E"(i64** %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  %0 = load i64*, i64** %_1, align 8, !nonnull !3, !noundef !3
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h06f84c5d2801f17bE(i64* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h06f84c5d2801f17bE(i64* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
  %2 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hac06f892e06c79cfE"(i64** align 8 %_1)
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
define internal void @_ZN4core3ops8function6FnOnce9call_once17h77cf5df5cdc16661E(void ()* %_1) unnamed_addr #0 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h6ec4de827d789bc4E"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1) unnamed_addr #2 {
start:
  %0 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1 to i8*
  %1 = load i8, i8* %0, align 8, !range !10, !noundef !3
  %_2 = zext i8 %1 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  %2 = bitcast %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_1 to %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"*
  %3 = getelementptr inbounds %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom", %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>::Custom"* %2, i32 0, i32 1
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h5939d4ae5295b676E"(%"std::io::error::Custom"** %3)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hfb3c7de25610fdc9E"({ {}*, [3 x i64]* }* %_1) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %2 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  %4 = load {}*, {}** %3, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  %6 = load [3 x i64]*, [3 x i64]** %5, align 8, !nonnull !3, !align !6, !noundef !3
  %7 = bitcast [3 x i64]* %6 to void ({}*)**
  %8 = getelementptr inbounds void ({}*)*, void ({}*)** %7, i64 0
  %9 = load void ({}*)*, void ({}*)** %8, align 8, !invariant.load !3, !nonnull !3
  invoke void %9({}* %4)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %10 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8, !nonnull !3, !noundef !3
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8, !nonnull !3, !align !6, !noundef !3
  invoke void @_ZN5alloc5alloc8box_free17h8e8e9fccbec6cecfE(i8* %12, i64* align 8 %14) #11
          to label %bb2 unwind label %abort

cleanup:                                          ; preds = %start
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %20 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !nonnull !3, !noundef !3
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8, !nonnull !3, !align !6, !noundef !3
  call void @_ZN5alloc5alloc8box_free17h8e8e9fccbec6cecfE(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #12
  unreachable

bb2:                                              ; preds = %bb4
  %26 = bitcast { i8*, i32 }* %0 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h5f295e4d924df431E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h6137e96ad001a027E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h184eaab2059c7a4eE({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h7279bfcda3b0f2f8E"(i32* %_1) unnamed_addr #2 {
start:
  call void @"_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17hf48183f14291ccc0E"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h65b3488d0fe929eaE"(i8** %_1) unnamed_addr #2 {
start:
  call void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hbca60ebb13afefa3E"(i8** %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h6c3166f144c1496bE"(%"std::io::error::Custom"* %_1) unnamed_addr #2 {
start:
  %0 = bitcast %"std::io::error::Custom"* %_1 to { {}*, [3 x i64]* }*
  call void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hfb3c7de25610fdc9E"({ {}*, [3 x i64]* }* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17hf48183f14291ccc0E"(i32* %_1) unnamed_addr #2 {
start:
  call void @"_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17h0587dcc1e70620dbE"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17h289a341c0807731fE"(i32* %_1) unnamed_addr #2 {
start:
  call void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb84718ac7cbe48aE"(i32* align 4 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17h0587dcc1e70620dbE"(i32* %_1) unnamed_addr #2 {
start:
  call void @"_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17h289a341c0807731fE"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hbca60ebb13afefa3E"(i8** %_1) unnamed_addr #2 {
start:
  call void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h208bf1a4958d6473E"(i8** align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h5939d4ae5295b676E"(%"std::io::error::Custom"** %_1) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %2 = bitcast i64** %1 to %"std::io::error::Custom"**
  %3 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %2, align 8
  invoke void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h6c3166f144c1496bE"(%"std::io::error::Custom"* %3)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %4 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %5 = load i64*, i64** %4, align 8, !nonnull !3, !noundef !3
  invoke void @_ZN5alloc5alloc8box_free17h3ffb1ce1045b9590E(i64* %5) #11
          to label %bb2 unwind label %abort

cleanup:                                          ; preds = %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %11 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %12 = load i64*, i64** %11, align 8, !nonnull !3, !noundef !3
  call void @_ZN5alloc5alloc8box_free17h3ffb1ce1045b9590E(i64* %12)
  br label %bb1

abort:                                            ; preds = %bb4
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #12
  unreachable

bb2:                                              ; preds = %bb4
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h370f8f40c669be36E"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %_2 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17headd3facd1904f40E"(%"std::io::error::Custom"* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  store i64* %_2, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !3, !noundef !3
  ret i64* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h06583e7a7fab794bE"(i64* %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h7e312e861654af5bE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17heff2d1dbb579606bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h6dfb16f761ec6eeeE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd7956e2126100576E"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17heff2d1dbb579606bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17haddad7e8249153c4E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4ec5f646effa0213E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hbfc58f2ab64ca10bE"(i64** align 8 %self) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hcb03eeccb9f4f0a7E"(i64** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hc954c353b58d2a73E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h5962446cc07b57beE"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h8b3a35da65a47b37E"(i8* %self, i64 %count) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = sub i64 0, %count
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr i8, i8* %self, i64 %1
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %_3.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17ha5be38ba9fa26e8eE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !8, !noundef !3
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h53a61e9233e1da66E"({}* %self) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast i64* %0 to {}**
  store {}* %self, {}** %1, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbc8fa8790b6b983fE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h9aa1f3e88032d3e8E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17ha5be38ba9fa26e8eE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9b8041ae596377deE"(i8** %_1) unnamed_addr #2 {
start:
  %0 = bitcast i8** %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h65b3488d0fe929eaE"(i8** %_1)
  br label %bb1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haf94f6178788e770E"(i64** %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h184eaab2059c7a4eE({}* %data_address, i64 %metadata) unnamed_addr #0 {
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
define internal i8* @_ZN4core3ptr8metadata14from_raw_parts17h91497e2f336fe32dE({}* %data_address) unnamed_addr #0 {
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
define internal i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h9aa1f3e88032d3e8E({}* %data_address) unnamed_addr #0 {
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
define internal i64 @_ZN4core3ptr8metadata8metadata17heccb41432665220dE([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %ptr.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h4c64dd65e4e90546E"({}* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast i8** %0 to {}**
  store {}* %ptr, {}** %1, align 8
  %2 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  ret i8* %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6d63184b955426f3E"(%"std::io::error::SimpleMessage"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::SimpleMessage"**
  store %"std::io::error::SimpleMessage"* %ptr, %"std::io::error::SimpleMessage"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !3, !noundef !3
  ret i64* %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h70f98ace02427bd4E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17headd3facd1904f40E"(%"std::io::error::Custom"* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"std::io::error::Custom"**
  store %"std::io::error::Custom"* %ptr, %"std::io::error::Custom"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !3, !noundef !3
  ret i64* %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h29f904452b883a7dE"(i8* %self) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6114f82f4688b234E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3 to %"std::io::error::SimpleMessage"*
  %0 = call i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6d63184b955426f3E"(%"std::io::error::SimpleMessage"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h7e312e861654af5bE"(i64* %self) unnamed_addr #0 {
start:
  %_3 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9223f0ccf7d9801fE"(i64* %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"std::io::error::Custom"* %_3 to i8*
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h70f98ace02427bd4E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd7956e2126100576E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb84b34c2d8bce81aE"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h70f98ace02427bd4E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4ec5f646effa0213E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal {}* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6114f82f4688b234E"(i8* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i8* %self to {}*
  ret {}* %_2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9223f0ccf7d9801fE"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::Custom"*
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal %"std::io::error::SimpleMessage"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha85c8379a5da9573E"(i64* %self) unnamed_addr #0 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::SimpleMessage"*
  ret %"std::io::error::SimpleMessage"* %_2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb84b34c2d8bce81aE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h5962446cc07b57beE"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !3, !align !6, !noundef !3
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb84b34c2d8bce81aE"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hcb03eeccb9f4f0a7E"(i64** align 8 %self) unnamed_addr #0 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !3, !noundef !3
  %_2 = call %"std::io::error::Custom"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9223f0ccf7d9801fE"(i64* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %_2
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h2e2f7ba6c0e74020E"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #2 {
start:
  %0 = bitcast [3 x i64]* %_1.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !3, !nonnull !3
  call void %2({}* %_1.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h2fb7dbe33593e100E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !8, !noundef !3
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h6137e96ad001a027E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hb31031e2adc4aa7cE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata14from_raw_parts17h91497e2f336fe32dE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h2fb7dbe33593e100E"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hb7511c9b8271bd93E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call i64 @_ZN4core3ptr8metadata8metadata17heccb41432665220dE([0 x i8]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h7ded1e6d41014176E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17hd4e996bd13ed8ae9E() unnamed_addr #3 {
start:
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4hint9black_box17hf878bc8a2cb2fc18E() unnamed_addr #0 {
start:
  call void asm sideeffect "", "r,~{memory}"({}* undef), !srcloc !13
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdd973190bf30bd0aE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hb08fd4c4fc389b1aE(i64 %align), !range !11
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !11, !noundef !3
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h0c3f4a3ac3d57b56E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h7a60ff5c7ec67644E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !11, !noundef !3
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h23d30003d8e95110E(i64 %_3), !range !12
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17hc37c695375694288E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hea3f083ce475b8c7E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h110db43f0446224eE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hd5af78a46a6ea7d4E"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hf694a758f26db352E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hd7c25125b1c9e56bE"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = icmp eq i64 %self.1, 0
  ret i1 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h4f44cce752980b6aE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h5f295e4d924df431E(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i8* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hd5af78a46a6ea7d4E"([0 x i8]* align 1 %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %2 = alloca { i8*, i8* }, align 8
  %ptr = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hf694a758f26db352E"([0 x i8]* align 1 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hb31031e2adc4aa7cE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 1, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %4 = getelementptr i8, i8* %ptr, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds i8, i8* %ptr, i64 %slice.1
  store i8* %6, i8** %0, align 8
  %7 = load i8*, i8** %0, align 8
  store i8* %7, i8** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
  %_18 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h70f98ace02427bd4E"(i8* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  store i8* %5, i8** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load i8*, i8** %end, align 8
  %8 = bitcast { i8*, i8* }* %2 to i8**
  store i8* %_18, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  store i8* %_21, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !nonnull !3, !noundef !3
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %2, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = insertvalue { i8*, i8* } undef, i8* %11, 0
  %15 = insertvalue { i8*, i8* } %14, i8* %13, 1
  ret { i8*, i8* } %15
}

; Function Attrs: nonlazybind uwtable
define internal { i8*, i8* } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17ha842d9be3aa15848E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #2 {
start:
  %0 = call { i8*, i8* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h110db43f0446224eE"([0 x i8]* align 1 %self.0, i64 %self.1)
  %1 = extractvalue { i8*, i8* } %0, 0
  %2 = extractvalue { i8*, i8* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i8* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i8* } %3, i8* %2, 1
  ret { i8*, i8* } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h2840fa4a4ce00bf4E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h9c1b3a9dcff05229E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h50d0c2f7c0c61d3eE"(i8 %0, i64* align 8 %f) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  store i8 1, i8* %_7, align 1
  %2 = load i8, i8* %self, align 1, !range !9, !noundef !3
  %3 = sub i8 %2, 41
  %4 = icmp eq i8 %3, 0
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = call i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h963e9d6bec459e47E"(i64* align 8 %f), !range !7
  store i8 %5, i8* %1, align 1
  br label %bb4

bb3:                                              ; preds = %start
  %x = load i8, i8* %self, align 1, !range !7, !noundef !3
  store i8 %x, i8* %1, align 1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %6 = load i8, i8* %_7, align 1, !range !8, !noundef !3
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb6, label %bb5

bb4:                                              ; preds = %bb1
  br label %bb7

bb5:                                              ; preds = %bb6, %bb7
  %8 = load i8, i8* %1, align 1, !range !7, !noundef !3
  ret i8 %8

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h683d4372a1d69a3eE"(i8 %0, i64* align 8 %f) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8, align 1
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  store i8 1, i8* %_7, align 1
  %2 = load i8, i8* %self, align 1, !range !9, !noundef !3
  %3 = sub i8 %2, 41
  %4 = icmp eq i8 %3, 0
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = call i8 @"_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h294436bc1b1dabb9E"(i64* align 8 %f), !range !7
  store i8 %5, i8* %1, align 1
  br label %bb4

bb3:                                              ; preds = %start
  %x = load i8, i8* %self, align 1, !range !7, !noundef !3
  store i8 %x, i8* %1, align 1
  br label %bb7

bb7:                                              ; preds = %bb4, %bb3
  %6 = load i8, i8* %_7, align 1, !range !8, !noundef !3
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb6, label %bb5

bb4:                                              ; preds = %bb1
  br label %bb7

bb5:                                              ; preds = %bb6, %bb7
  %8 = load i8, i8* %1, align 1, !range !7, !noundef !3
  ret i8 %8

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h41735e6e2aa9a470E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast i8** %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_2, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %0, align 1, !range !8, !noundef !3
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h47a9d8170ace8a2fE"(%"core::result::Result<std::fs::File, std::io::error::Error>"* %self, [0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %e = alloca i8*, align 8
  %2 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %self to i32*
  %3 = load i32, i32* %2, align 8, !range !14, !noundef !3
  %_3 = zext i32 %3 to i64
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %4 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %self to %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"*
  %5 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Ok", %"core::result::Result<std::fs::File, std::io::error::Error>::Ok"* %4, i32 0, i32 1
  %t = load i32, i32* %5, align 4, !range !15, !noundef !3
  ret i32 %t

bb1:                                              ; preds = %start
  %6 = bitcast %"core::result::Result<std::fs::File, std::io::error::Error>"* %self to %"core::result::Result<std::fs::File, std::io::error::Error>::Err"*
  %7 = getelementptr inbounds %"core::result::Result<std::fs::File, std::io::error::Error>::Err", %"core::result::Result<std::fs::File, std::io::error::Error>::Err"* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8, !nonnull !3, !noundef !3
  store i8* %8, i8** %e, align 8
  %_7.0 = bitcast i8** %e to {}*
  invoke void @_ZN4core6result13unwrap_failed17h42ad8e915aa0a906E([0 x i8]* align 1 %msg.0, i64 %msg.1, {}* align 1 %_7.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* align 8 %0) #10
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h65b3488d0fe929eaE"(i8** %e) #11
          to label %bb5 unwind label %abort

cleanup:                                          ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb4

unreachable:                                      ; preds = %bb1
  unreachable

abort:                                            ; preds = %bb4
  %14 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #12
  unreachable

bb5:                                              ; preds = %bb4
  %15 = bitcast { i8*, i32 }* %1 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h435e84f4b520835eE"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = call zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h41735e6e2aa9a470E"(i8** align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_2, true
  ret i1 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbfd206bc28b48f21E"() unnamed_addr #0 {
start:
  ret i8 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hb60972562dcc8e75E"({ [0 x i8]*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_3.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !3, !align !4, !noundef !3
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_3.1 = load i64, i64* %1, align 8
  %2 = call { %"std::path::Path"*, i64 } @"_ZN3std4path77_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$str$GT$6as_ref17hd2e06afe5abbb65aE"([0 x i8]* align 1 %_3.0, i64 %_3.1)
  %3 = extractvalue { %"std::path::Path"*, i64 } %2, 0
  %4 = extractvalue { %"std::path::Path"*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %3, 0
  %6 = insertvalue { %"std::path::Path"*, i64 } %5, i64 %4, 1
  ret { %"std::path::Path"*, i64 } %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hc9b8e2a019641d5fE"({ %"std::path::Path"*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %self, i32 0, i32 0
  %_3.0 = load %"std::path::Path"*, %"std::path::Path"** %0, align 8, !nonnull !3, !align !4, !noundef !3
  %1 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %self, i32 0, i32 1
  %_3.1 = load i64, i64* %1, align 8
  %2 = call { %"std::path::Path"*, i64 } @"_ZN79_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..path..Path$GT$$GT$6as_ref17h74cf1896e9f9107fE"(%"std::path::Path"* align 1 %_3.0, i64 %_3.1)
  %3 = extractvalue { %"std::path::Path"*, i64 } %2, 0
  %4 = extractvalue { %"std::path::Path"*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %3, 0
  %6 = insertvalue { %"std::path::Path"*, i64 } %5, i64 %4, 1
  ret { %"std::path::Path"*, i64 } %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc7dealloc17hb32ffc023bae4687E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h0c3f4a3ac3d57b56E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h7a60ff5c7ec67644E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #13
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17h3ffb1ce1045b9590E(i64* %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca i64*, align 8
  store i64* %0, i64** %ptr, align 8
  %_5 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hbfc58f2ab64ca10bE"(i64** align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb10

bb1:                                              ; preds = %start
  store i64 24, i64* %2, align 8
  %size = load i64, i64* %2, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_9 = invoke align 8 %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hbfc58f2ab64ca10bE"(i64** align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64 8, i64* %1, align 8
  %align = load i64, i64* %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdd973190bf30bd0aE(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  %_17 = load i64*, i64** %ptr, align 8, !nonnull !3, !noundef !3
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h06583e7a7fab794bE"(i64* %_17)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hf7971450f05e34d5E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h50127263f9c1a0c1E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %10 = bitcast { i8*, i32 }* %3 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17h8e8e9fccbec6cecfE(i8* %0, i64* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca { i8*, i64* }, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  store i64* %1, i64** %6, align 8
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hc954c353b58d2a73E"({ i8*, i64* }* align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { {}*, [3 x i64]* } %7, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %7, 1
  %13 = bitcast [3 x i64]* %_5.1 to i64*
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8, !invariant.load !3
  %16 = bitcast [3 x i64]* %_5.1 to i64*
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %17, align 8, !range !12, !invariant.load !3
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hc954c353b58d2a73E"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !3
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !12, !invariant.load !3
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdd973190bf30bd0aE(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !3, !noundef !3
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !3, !align !6, !noundef !3
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h6dfb16f761ec6eeeE"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hf7971450f05e34d5E"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h50127263f9c1a0c1E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %29 = bitcast { i8*, i32 }* %4 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %34 = insertvalue { i8*, i32 } %33, i32 %32, 1
  resume { i8*, i32 } %34

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h07ed6eee5edd4403E"(%"std::io::error::Custom"* %raw) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hd7e3587fdabe8c88E"(%"std::io::error::Custom"* %raw)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hd7e3587fdabe8c88E"(%"std::io::error::Custom"* %raw) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca %"std::io::error::Custom"*, align 8
  %_3 = invoke i64* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h370f8f40c669be36E"(%"std::io::error::Custom"* %raw)
          to label %bb1 unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb2

bb1:                                              ; preds = %start
  %7 = bitcast %"std::io::error::Custom"** %1 to i64**
  store i64* %_3, i64** %7, align 8
  %8 = bitcast %"std::io::error::Custom"** %1 to %"alloc::alloc::Global"*
  %9 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %1, align 8, !nonnull !3, !align !6, !noundef !3
  ret %"std::io::error::Custom"* %9

bb3:                                              ; preds = %bb2
  %10 = bitcast { i8*, i32 }* %0 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h50127263f9c1a0c1E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h0c3f4a3ac3d57b56E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4ec5f646effa0213E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !11, !noundef !3
  call void @_ZN5alloc5alloc7dealloc17hb32ffc023bae4687E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h26be8433055bf1b3E"(i8* align 1 %self, i8* align 1 %other) unnamed_addr #0 {
start:
  %0 = load i8, i8* %self, align 1, !range !7, !noundef !3
  %__self_tag = zext i8 %0 to i64
  %1 = load i8, i8* %other, align 1, !range !7, !noundef !3
  %__arg1_tag = zext i8 %1 to i64
  %2 = icmp eq i64 %__self_tag, %__arg1_tag
  ret i1 %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb84718ac7cbe48aE"(i32* align 4 %self) unnamed_addr #0 {
start:
  %_3 = load i32, i32* %self, align 4
  %_2 = call i32 @close(i32 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h208bf1a4958d6473E"(i8** align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca %"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>", align 8
  %_3 = load i8*, i8** %self, align 8, !nonnull !3, !noundef !3
  call void @_ZN3std2io5error14repr_bitpacked11decode_repr17h2ca9a92beb2111c9E(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* sret(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>") %_2, i8* %_3)
  br label %bb1

bb1:                                              ; preds = %start
  call void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h6ec4de827d789bc4E"(%"std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom>>"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 %"std::io::error::Custom"* @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h9778b9f340bd2326E"(%"std::io::error::Custom"* %p) unnamed_addr #0 {
start:
  %0 = call align 8 %"std::io::error::Custom"* @"_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h07ed6eee5edd4403E"(%"std::io::error::Custom"* %p)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN79_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..path..Path$GT$$GT$6as_ref17h74cf1896e9f9107fE"(%"std::path::Path"* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %self.0, 0
  %1 = insertvalue { %"std::path::Path"*, i64 } %0, i64 %self.1, 1
  ret { %"std::path::Path"*, i64 } %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h61dc408033d7dd7cE"({ i8*, i8* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast { i8*, i8* }* %self to i8**
  %_6 = load i8*, i8** %3, align 8, !nonnull !3, !noundef !3
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4ec5f646effa0213E"(i8* %_6)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbc8fa8790b6b983fE"(i8* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 1, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_11 = load i8*, i8** %5, align 8
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hb31031e2adc4aa7cE"(i8* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %6 = bitcast { i8*, i8* }* %self to i8**
  %_15 = load i8*, i8** %6, align 8, !nonnull !3, !noundef !3
  %_14 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4ec5f646effa0213E"(i8* %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %self, i32 0, i32 1
  %_16 = load i8*, i8** %7, align 8
  %_12 = icmp eq i8* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %8 = bitcast { i8*, i8* }* %self to i8**
  %_12.i = load i8*, i8** %8, align 8, !nonnull !3, !noundef !3
  %old.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4ec5f646effa0213E"(i8* %_12.i)
  %9 = bitcast { i8*, i8* }* %self to i8**
  %_16.i = load i8*, i8** %9, align 8, !nonnull !3, !noundef !3
  %_15.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4ec5f646effa0213E"(i8* %_16.i)
  %10 = getelementptr inbounds i8, i8* %_15.i, i64 1
  store i8* %10, i8** %0, align 8
  %_3.i.i = load i8*, i8** %0, align 8
  %_13.i = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h70f98ace02427bd4E"(i8* %_3.i.i)
  %11 = bitcast { i8*, i8* }* %self to i8**
  store i8* %_13.i, i8** %11, align 8
  store i8* %old.i, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %13 = bitcast i8** %2 to {}**
  store {}* null, {}** %13, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %14 = load i8*, i8** %2, align 8, !align !4
  ret i8* %14

bb13:                                             ; preds = %bb12
  store i8* %12, i8** %2, align 8
  br label %bb14
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN11csv_fwrite211csv_fwrite217h7b5ebdb752edf479E(i32* align 4 %fp, i8* %src, i64 %src_size, i8 %quote) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_54 = alloca [1 x i8], align 1
  %_49 = alloca i8*, align 8
  %_45 = alloca [1 x i8], align 1
  %_40 = alloca i8*, align 8
  %_36 = alloca [1 x i8], align 1
  %_31 = alloca i8*, align 8
  %_21 = alloca i8*, align 8
  %iter = alloca { i8*, i8* }, align 8
  %_16 = alloca [1 x i8], align 1
  %_11 = alloca i8*, align 8
  %1 = alloca i32, align 4
  %2 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h4f44cce752980b6aE(i8* %src, i64 %src_size)
  %csrc.0 = extractvalue { [0 x i8]*, i64 } %2, 0
  %csrc.1 = extractvalue { [0 x i8]*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds [1 x i8], [1 x i8]* %_16, i64 0, i64 0
  store i8 %quote, i8* %3, align 1
  %_13.0 = bitcast [1 x i8]* %_16 to [0 x i8]*
  %4 = call i8* @_ZN3std2io5Write9write_all17h795e4cfd303b2445E(i32* align 4 %fp, [0 x i8]* align 1 %_13.0, i64 1)
  store i8* %4, i8** %_11, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_9 = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h435e84f4b520835eE"(i8** align 8 %_11)
          to label %bb3 unwind label %cleanup

bb32:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9b8041ae596377deE"(i8** %_11) #11
          to label %bb33 unwind label %abort

cleanup:                                          ; preds = %bb2
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb32

bb3:                                              ; preds = %bb2
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9b8041ae596377deE"(i8** %_11)
  br label %bb4

abort:                                            ; preds = %bb29, %bb30, %bb31, %bb32
  %10 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #12
  unreachable

bb33:                                             ; preds = %bb29, %bb30, %bb31, %bb32
  %11 = bitcast { i8*, i32 }* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb4:                                              ; preds = %bb3
  br i1 %_9, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  %17 = call { i8*, i8* } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17ha842d9be3aa15848E"([0 x i8]* align 1 %csrc.0, i64 %csrc.1)
  %_18.0 = extractvalue { i8*, i8* } %17, 0
  %_18.1 = extractvalue { i8*, i8* } %17, 1
  br label %bb7

bb5:                                              ; preds = %bb4
  store i32 -1, i32* %1, align 4
  br label %bb28

bb28:                                             ; preds = %bb26, %bb27, %bb22, %bb17, %bb5
  %18 = load i32, i32* %1, align 4
  ret i32 %18

bb7:                                              ; preds = %bb6
  %19 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 0
  store i8* %_18.0, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %iter, i32 0, i32 1
  store i8* %_18.1, i8** %20, align 8
  br label %bb8

bb8:                                              ; preds = %bb21, %bb7
  %21 = call align 1 i8* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h61dc408033d7dd7cE"({ i8*, i8* }* align 8 %iter)
  store i8* %21, i8** %_21, align 8
  br label %bb9

bb9:                                              ; preds = %bb8
  %22 = bitcast i8** %_21 to {}**
  %23 = load {}*, {}** %22, align 8
  %24 = icmp eq {}* %23, null
  %_24 = select i1 %24, i64 0, i64 1
  switch i64 %_24, label %bb11 [
    i64 0, label %bb12
    i64 1, label %bb10
  ]

bb11:                                             ; preds = %bb9
  unreachable

bb12:                                             ; preds = %bb9
  %25 = getelementptr inbounds [1 x i8], [1 x i8]* %_54, i64 0, i64 0
  store i8 %quote, i8* %25, align 1
  %_51.0 = bitcast [1 x i8]* %_54 to [0 x i8]*
  %26 = call i8* @_ZN3std2io5Write9write_all17h795e4cfd303b2445E(i32* align 4 %fp, [0 x i8]* align 1 %_51.0, i64 1)
  store i8* %26, i8** %_49, align 8
  br label %bb23

bb10:                                             ; preds = %bb9
  %_56 = load i8*, i8** %_21, align 8, !nonnull !3, !align !4, !noundef !3
  %byte = load i8, i8* %_56, align 1
  %_26 = icmp eq i8 %byte, %quote
  br i1 %_26, label %bb13, label %bb18

bb18:                                             ; preds = %bb16, %bb10
  %27 = getelementptr inbounds [1 x i8], [1 x i8]* %_45, i64 0, i64 0
  store i8 %byte, i8* %27, align 1
  %_42.0 = bitcast [1 x i8]* %_45 to [0 x i8]*
  %28 = call i8* @_ZN3std2io5Write9write_all17h795e4cfd303b2445E(i32* align 4 %fp, [0 x i8]* align 1 %_42.0, i64 1)
  store i8* %28, i8** %_40, align 8
  br label %bb19

bb13:                                             ; preds = %bb10
  %29 = getelementptr inbounds [1 x i8], [1 x i8]* %_36, i64 0, i64 0
  store i8 %quote, i8* %29, align 1
  %_33.0 = bitcast [1 x i8]* %_36 to [0 x i8]*
  %30 = call i8* @_ZN3std2io5Write9write_all17h795e4cfd303b2445E(i32* align 4 %fp, [0 x i8]* align 1 %_33.0, i64 1)
  store i8* %30, i8** %_31, align 8
  br label %bb14

bb14:                                             ; preds = %bb13
  %_29 = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h435e84f4b520835eE"(i8** align 8 %_31)
          to label %bb15 unwind label %cleanup1

bb31:                                             ; preds = %cleanup1
  invoke void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9b8041ae596377deE"(i8** %_31) #11
          to label %bb33 unwind label %abort

cleanup1:                                         ; preds = %bb14
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  %33 = extractvalue { i8*, i32 } %31, 1
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %bb31

bb15:                                             ; preds = %bb14
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9b8041ae596377deE"(i8** %_31)
  br label %bb16

bb16:                                             ; preds = %bb15
  br i1 %_29, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  store i32 -1, i32* %1, align 4
  br label %bb28

bb19:                                             ; preds = %bb18
  %_38 = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h435e84f4b520835eE"(i8** align 8 %_40)
          to label %bb20 unwind label %cleanup2

bb30:                                             ; preds = %cleanup2
  invoke void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9b8041ae596377deE"(i8** %_40) #11
          to label %bb33 unwind label %abort

cleanup2:                                         ; preds = %bb19
  %36 = landingpad { i8*, i32 }
          cleanup
  %37 = extractvalue { i8*, i32 } %36, 0
  %38 = extractvalue { i8*, i32 } %36, 1
  %39 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %bb30

bb20:                                             ; preds = %bb19
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9b8041ae596377deE"(i8** %_40)
  br label %bb21

bb21:                                             ; preds = %bb20
  br i1 %_38, label %bb22, label %bb8

bb22:                                             ; preds = %bb21
  store i32 -1, i32* %1, align 4
  br label %bb28

bb23:                                             ; preds = %bb12
  %_47 = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h435e84f4b520835eE"(i8** align 8 %_49)
          to label %bb24 unwind label %cleanup3

bb29:                                             ; preds = %cleanup3
  invoke void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9b8041ae596377deE"(i8** %_49) #11
          to label %bb33 unwind label %abort

cleanup3:                                         ; preds = %bb23
  %41 = landingpad { i8*, i32 }
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  %43 = extractvalue { i8*, i32 } %41, 1
  %44 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %bb29

bb24:                                             ; preds = %bb23
  call void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9b8041ae596377deE"(i8** %_49)
  br label %bb25

bb25:                                             ; preds = %bb24
  br i1 %_47, label %bb26, label %bb27

bb27:                                             ; preds = %bb25
  store i32 0, i32* %1, align 4
  br label %bb28

bb26:                                             ; preds = %bb25
  store i32 -1, i32* %1, align 4
  br label %bb28
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN11csv_fwrite24main17hf5b11c14805bfb5eE() unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_20 = alloca %"core::fmt::Arguments", align 8
  %_2 = alloca %"core::result::Result<std::fs::File, std::io::error::Error>", align 8
  %file = alloca i32, align 4
  call void @_ZN3std2fs4File6create17h8b705f1a7ff3f2f9E(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>") %_2, [0 x i8]* align 1 bitcast (<{ [10 x i8] }>* @alloc135 to [0 x i8]*), i64 10)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i32 @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h47a9d8170ace8a2fE"(%"core::result::Result<std::fs::File, std::io::error::Error>"* %_2, [0 x i8]* align 1 bitcast (<{ [21 x i8] }>* @alloc136 to [0 x i8]*), i64 21, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc138 to %"core::panic::location::Location"*)), !range !15
  store i32 %1, i32* %file, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
  %_11 = invoke i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hf694a758f26db352E"([0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc1 to [0 x i8]*), i64 12)
          to label %bb3 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  invoke void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h7279bfcda3b0f2f8E"(i32* %file) #11
          to label %bb11 unwind label %abort

cleanup:                                          ; preds = %bb7, %bb6, %bb4, %bb3, %bb2
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb10

bb3:                                              ; preds = %bb2
  %_14 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hea3f083ce475b8c7E"([0 x i8]* align 1 bitcast (<{ [12 x i8] }>* @alloc1 to [0 x i8]*), i64 12)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %result = invoke i32 @_ZN11csv_fwrite211csv_fwrite217h7b5ebdb752edf479E(i32* align 4 %file, i8* %_11, i64 %_14, i8 34)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %7 = icmp eq i32 %result, -1
  br i1 %7, label %bb6, label %bb8

bb6:                                              ; preds = %bb5
  invoke void @_ZN4core3fmt9Arguments6new_v117h06ba5084548c36e2E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_20, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc8 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc10 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb7 unwind label %cleanup

bb8:                                              ; preds = %bb12, %bb5
  call void @"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h7279bfcda3b0f2f8E"(i32* %file)
  br label %bb9

bb7:                                              ; preds = %bb6
  invoke void @_ZN3std2io5stdio7_eprint17h26dc88e15d3fde3cE(%"core::fmt::Arguments"* %_20)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb7
  br label %bb8

abort:                                            ; preds = %bb10
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() #12
  unreachable

bb11:                                             ; preds = %bb10
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index26slice_start_index_len_fail17h48cc10d8d86b5a1cE(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2fs11OpenOptions5_open17h237383420ebac94fE(%"core::result::Result<std::fs::File, std::io::error::Error>"* sret(%"core::result::Result<std::fs::File, std::io::error::Error>"), %"std::fs::OpenOptions"* align 4, %"std::path::Path"* align 1, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2fs11OpenOptions3new17h4009186b44844d4fE(%"std::fs::OpenOptions"* sret(%"std::fs::OpenOptions")) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions5write17hc70825f3326fd644E(%"std::fs::OpenOptions"* align 4, i1 zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions6create17he17ea93b296a7529E(%"std::fs::OpenOptions"* align 4, i1 zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare align 4 %"std::fs::OpenOptions"* @_ZN3std2fs11OpenOptions8truncate17h9f5d99feab2838e5E(%"std::fs::OpenOptions"* align 4, i1 zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h04d9f6328c30c71fE"(%"core::result::Result<usize, std::io::error::Error>"* sret(%"core::result::Result<usize, std::io::error::Error>"), i32* align 4, [0 x i8]* align 1, i64) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E() unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare i8 @_ZN3std3sys4unix17decode_error_kind17hb41f9e389208fdcfE(i32) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE({}* align 1, [3 x i64]* align 8, i64, i8**) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17ha6dc7f2ab2479463E(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c9d3e6f2f9e3a87E"(i8** align 8, %"core::fmt::Formatter"* align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h42ad8e915aa0a906E([0 x i8]* align 1, i64, {}* align 1, [3 x i64]* align 8, %"core::panic::location::Location"* align 8) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare i32 @close(i32) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio7_eprint17h26dc88e15d3fde3cE(%"core::fmt::Arguments"*) unnamed_addr #2

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #9 {
top:
  %2 = sext i32 %0 to i64
  %3 = call i64 @_ZN3std2rt10lang_start17hdb231489281cc5d8E(void ()* @_ZN11csv_fwrite24main17hf5b11c14805bfb5eE, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { inlinehint noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #9 = { nonlazybind "target-cpu"="x86-64" }
attributes #10 = { noreturn }
attributes #11 = { noinline }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{}
!4 = !{i64 1}
!5 = !{i64 0, i64 2}
!6 = !{i64 8}
!7 = !{i8 0, i8 41}
!8 = !{i8 0, i8 2}
!9 = !{i8 0, i8 42}
!10 = !{i8 0, i8 4}
!11 = !{i64 1, i64 -9223372036854775807}
!12 = !{i64 1, i64 0}
!13 = !{i32 3341798}
!14 = !{i32 0, i32 2}
!15 = !{i32 0, i32 -1}

^0 = module: (path: "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_fwrite2.rs.bc", hash: (2220200718, 2187457927, 3445964210, 1273394719, 2980776754))
^1 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hea3f083ce475b8c7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10))) ; guid = 42468860086005873
^2 = gv: (name: "_ZN3std2io5stdio7_eprint17h26dc88e15d3fde3cE") ; guid = 86802245790804164
^3 = gv: (name: "_ZN4core4hint21unreachable_unchecked17hd4e996bd13ed8ae9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1)))) ; guid = 197287529379654507
^4 = gv: (name: "_ZN3std2fs11OpenOptions3new17h4009186b44844d4fE") ; guid = 200805640929366137
^5 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hc954c353b58d2a73E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^147))))) ; guid = 365966256800579646
^6 = gv: (name: "_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2f15241d232c488cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 21, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^92), (callee: ^150)), refs: (^122)))) ; guid = 454507716353752648
^7 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^8 = gv: (name: "close") ; guid = 694551982725885809
^9 = gv: (name: "_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c9d3e6f2f9e3a87E") ; guid = 949043914165616508
^10 = gv: (name: "alloc135", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 972696043108554439
^11 = gv: (name: "alloc119", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1040378018053490419
^12 = gv: (name: "_ZN5alloc5alloc8box_free17h3ffb1ce1045b9590E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^160), (callee: ^91), (callee: ^46), (callee: ^66), (callee: ^85)), refs: (^122)))) ; guid = 1089566377151575531
^13 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17ha5be38ba9fa26e8eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8))) ; guid = 1520186023297654453
^14 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$12wrapping_sub17h8b3a35da65a47b37E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8))) ; guid = 1580109562064542890
^15 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h6d63184b955426f3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 1782881056468990198
^16 = gv: (name: "_ZN3std2fs4File6create17h8b705f1a7ff3f2f9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 33, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^4), (callee: ^117), (callee: ^58), (callee: ^72), (callee: ^149), (callee: ^114)), refs: (^122)))) ; guid = 1863052882471643974
^17 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h683d4372a1d69a3eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 25, calls: ((callee: ^157))))) ; guid = 2167398596273104179
^18 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^144, ^55, ^143)))) ; guid = 2363279325602815144
^19 = gv: (name: "_ZN4core9panicking5panic17hb3ad04c589a0e3c8E") ; guid = 2372449950952319908
^20 = gv: (name: "_ZN3std3ffi6os_str5OsStr10from_inner17h6f3c079f8b84caebE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 2460306562456100521
^21 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hcb03eeccb9f4f0a7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^24))))) ; guid = 2537894123265754052
^22 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2921617407946436688
^23 = gv: (name: "_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h61dc408033d7dd7cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 54, calls: ((callee: ^134), (callee: ^61), (callee: ^65), (callee: ^75))))) ; guid = 2971584777748447808
^24 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9223f0ccf7d9801fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 3013578265834058440
^25 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^64, ^9)))) ; guid = 3196570981842526402
^26 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17headd3facd1904f40E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 3200470660052210796
^27 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h7a60ff5c7ec67644E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^123), (callee: ^158))))) ; guid = 3275184637747727851
^28 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hb08fd4c4fc389b1aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 3278291557938351494
^29 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h963e9d6bec459e47E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^3))))) ; guid = 3281946921036401475
^30 = gv: (name: "_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17ha842d9be3aa15848E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^137))))) ; guid = 3395271059625647152
^31 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h06f84c5d2801f17bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^144)), refs: (^122)))) ; guid = 3491697321989414158
^32 = gv: (name: "_ZN5alloc5alloc7dealloc17hb32ffc023bae4687E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^82), (callee: ^27), (callee: ^40))))) ; guid = 3498501568285145576
^33 = gv: (name: "_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h5939d4ae5295b676E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 31, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^42), (callee: ^12), (callee: ^80)), refs: (^122)))) ; guid = 3707924717534893739
^34 = gv: (name: "_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17he1b5744ee6f0ea5eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 3863899939298334290
^35 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h4c1abe7a1b8390b3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 18, calls: ((callee: ^100), (callee: ^133))))) ; guid = 3925868486781575712
^36 = gv: (name: "alloc124", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 3946984187643843949
^37 = gv: (name: "_ZN3std2io5Write9write_all17h795e4cfd303b2445E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 111, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^70), (callee: ^44), (callee: ^146), (callee: ^86), (callee: ^118), (callee: ^79), (callee: ^64), (callee: ^80)), refs: (^122, ^107, ^161, ^103)))) ; guid = 3955775730799845624
^38 = gv: (name: "alloc10", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4202119706878288800
^39 = gv: (name: "_ZN3std2io5error14repr_bitpacked14kind_from_prim17h6d212d26018e4caeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 212))) ; guid = 4508783445471110686
^40 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^41 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h208bf1a4958d6473E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^101), (callee: ^105))))) ; guid = 4876930203309046959
^42 = gv: (name: "_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h6c3166f144c1496bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^111))))) ; guid = 4925279802699272126
^43 = gv: (name: "_ZN4core6result13unwrap_failed17h42ad8e915aa0a906E") ; guid = 5460062411891558865
^44 = gv: (name: "_ZN48_$LT$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h04d9f6328c30c71fE") ; guid = 5483171059243534417
^45 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb84b34c2d8bce81aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 5662909269900908374
^46 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h06583e7a7fab794bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^81), (callee: ^148))))) ; guid = 5673708734496393483
^47 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11from_raw_in17hd7e3587fdabe8c88E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 24, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^110)), refs: (^122)))) ; guid = 5691133802396843163
^48 = gv: (name: "_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17hdcc87471ddc40422E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^83), (callee: ^20))))) ; guid = 5719060976292895903
^49 = gv: (name: "_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hbca60ebb13afefa3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^41))))) ; guid = 5725611466636914760
^50 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h6137e96ad001a027E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 5810402079260538457
^51 = gv: (name: "_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h9778b9f340bd2326E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^129))))) ; guid = 5843952575217487561
^52 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h5f295e4d924df431E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^50), (callee: ^140))))) ; guid = 5864293856122724338
^53 = gv: (name: "_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb84718ac7cbe48aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^8))))) ; guid = 5892949939893712404
^54 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^55 = gv: (name: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hee4c4025e89b9550E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^31))))) ; guid = 6532998518817154384
^56 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6expect17h47a9d8170ace8a2fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 37, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^43), (callee: ^64), (callee: ^80)), refs: (^122, ^25)))) ; guid = 6730718983560810635
^57 = gv: (name: "_ZN4core3ptr45drop_in_place$LT$std..sys..unix..fs..File$GT$17hf48183f14291ccc0E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^120))))) ; guid = 6913557090375310342
^58 = gv: (name: "_ZN3std2fs11OpenOptions6create17he17ea93b296a7529E") ; guid = 7076650071752914830
^59 = gv: (name: "alloc130", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7599640047740121773
^60 = gv: (name: "alloc136", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7674445609709301175
^61 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbc8fa8790b6b983fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^62), (callee: ^13))))) ; guid = 7764150969906354654
^62 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h9aa1f3e88032d3e8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 7813709196905101718
^63 = gv: (name: "alloc22", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 7861631501817052539
^64 = gv: (name: "_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h65b3488d0fe929eaE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^49))))) ; guid = 8045181039707816296
^65 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17hb31031e2adc4aa7cE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^141), (callee: ^132))))) ; guid = 8112596702919998031
^66 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hf7971450f05e34d5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^127), (callee: ^75))))) ; guid = 8138692900556567611
^67 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17h4f44cce752980b6aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^52))))) ; guid = 8276033265977729557
^68 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 8332304126922611791
^69 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h6dfb16f761ec6eeeE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^108), (callee: ^148))))) ; guid = 8543221740063820313
^70 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17hd7c25125b1c9e56bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 8593776399438292720
^71 = gv: (name: "_ZN3std3sys4unix6os_str5Slice13from_u8_slice17h791610380dedf403E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14))) ; guid = 8825107020218021509
^72 = gv: (name: "_ZN3std2fs11OpenOptions8truncate17h9f5d99feab2838e5E") ; guid = 8859491526194974571
^73 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr17ha4fd8e33ef69b574E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 86, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^131), (callee: ^119), (callee: ^19), (callee: ^39), (callee: ^115), (callee: ^14), (callee: ^34), (callee: ^93), (callee: ^139)), refs: (^122, ^112, ^36)))) ; guid = 9017064062206896534
^74 = gv: (name: "_ZN4core5slice5index26slice_start_index_len_fail17h48cc10d8d86b5a1cE") ; guid = 9229059736015197779
^75 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h70f98ace02427bd4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 9232955061935157024
^76 = gv: (name: "_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hc9b8e2a019641d5fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^152))))) ; guid = 9279658393856574115
^77 = gv: (name: "_ZN3std2fs11OpenOptions5_open17h237383420ebac94fE") ; guid = 9292995154260443207
^78 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h41735e6e2aa9a470E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14))) ; guid = 9331859504185977882
^79 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h2840fa4a4ce00bf4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^159))))) ; guid = 9349398696324105572
^80 = gv: (name: "_ZN4core9panicking15panic_no_unwind17h9acf2a4612dd1861E") ; guid = 9588502806599032397
^81 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h7e312e861654af5bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^24), (callee: ^75))))) ; guid = 9622308069634676543
^82 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h0c3f4a3ac3d57b56E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 9694567131606660064
^83 = gv: (name: "_ZN3std3sys4unix6os_str5Slice8from_str17hdd1e60cca7c9b093E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 21, calls: ((callee: ^71))))) ; guid = 10823923125252515928
^84 = gv: (name: "_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h7279bfcda3b0f2f8E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^57))))) ; guid = 10907621971067600125
^85 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h50127263f9c1a0c1E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^82), (callee: ^134), (callee: ^32))))) ; guid = 11047598827116514957
^86 = gv: (name: "_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h26be8433055bf1b3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 11093423441676628009
^87 = gv: (name: "_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbfd206bc28b48f21E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 11157726483529279605
^88 = gv: (name: "_ZN11csv_fwrite211csv_fwrite217h7b5ebdb752edf479E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 136, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^67), (callee: ^37), (callee: ^151), (callee: ^90), (callee: ^80), (callee: ^30), (callee: ^23)), refs: (^122)))) ; guid = 11188079035106789631
^89 = gv: (name: "_ZN3std2io5error14repr_bitpacked4Repr18new_simple_message17h3c801d911d24f105E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^138))))) ; guid = 11403465379232840388
^90 = gv: (name: "_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9b8041ae596377deE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^64))))) ; guid = 11542256297004671340
^91 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hdd973190bf30bd0aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^28))))) ; guid = 11723116537631091984
^92 = gv: (name: "_ZN4core3ops8function6FnOnce9call_once17h77cf5df5cdc16661E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 11881441140190240943
^93 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17ha85c8379a5da9573E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 12011798939950558548
^94 = gv: (name: "_ZN3std2io5error14repr_bitpacked4Repr4data17hadef74b661d92315E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^73))))) ; guid = 12134847003459873097
^95 = gv: (name: "_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h8f81841af471e591E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 12150656017580377514
^96 = gv: (name: "_ZN4core3fmt9Arguments6new_v117h06ba5084548c36e2E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 41, calls: ((callee: ^96), (callee: ^126)), refs: (^38, ^113, ^102)))) ; guid = 12171247947300903993
^97 = gv: (name: "_ZN3std7process8ExitCode6to_i3217hf0394d30cee90735E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^95))))) ; guid = 12180454168212968326
^98 = gv: (name: "_ZN5alloc5alloc8box_free17h8e8e9fccbec6cecfE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^5), (callee: ^91), (callee: ^69), (callee: ^66), (callee: ^85)), refs: (^122)))) ; guid = 12191066297362176968
^99 = gv: (name: "_ZN3std3sys4unix17decode_error_kind17hb41f9e389208fdcfE") ; guid = 12617669453704454004
^100 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$3len17hb7511c9b8271bd93E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^128))))) ; guid = 12635830080128159503
^101 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr17h2ca9a92beb2111c9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 86, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^131), (callee: ^119), (callee: ^19), (callee: ^39), (callee: ^115), (callee: ^14), (callee: ^51), (callee: ^93), (callee: ^17)), refs: (^122, ^112, ^36)))) ; guid = 12638018200029273578
^102 = gv: (name: "alloc131", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^59)))) ; guid = 12643691368115873736
^103 = gv: (name: "alloc120", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^11)))) ; guid = 12958808451766241298
^104 = gv: (name: "alloc137", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13003820402605235712
^105 = gv: (name: "_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h6ec4de827d789bc4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^33))))) ; guid = 13097311489801480029
^106 = gv: (name: "_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17h289a341c0807731fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^53))))) ; guid = 13194852380346786046
^107 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13209456110402248360
^108 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hd7956e2126100576E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, calls: ((callee: ^45), (callee: ^75))))) ; guid = 13245094848575354762
^109 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hf694a758f26db352E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 13284710355263827352
^110 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h370f8f40c669be36E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^26))))) ; guid = 13381645930860035501
^111 = gv: (name: "_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hfb3c7de25610fdc9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^98), (callee: ^80)), refs: (^122)))) ; guid = 13439109244797402649
^112 = gv: (name: "alloc123", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^135)))) ; guid = 13583399312328627743
^113 = gv: (name: "alloc30", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^22)))) ; guid = 13650249775004991999
^114 = gv: (name: "_ZN3std2fs11OpenOptions4open17h1e545ddad199f610E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^76), (callee: ^77)), refs: (^122)))) ; guid = 13898233700475734612
^115 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h29f904452b883a7dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^131), (callee: ^15))))) ; guid = 14089427588477040819
^116 = gv: (name: "alloc138", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^104)))) ; guid = 14232638823687469622
^117 = gv: (name: "_ZN3std2fs11OpenOptions5write17hc70825f3326fd644E") ; guid = 14267101339262091481
^118 = gv: (name: "_ZN3std2io5error5Error19from_static_message17h4c6e963d47000b12E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^89))))) ; guid = 14347600386408688583
^119 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4addr17h53a61e9233e1da66E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6))) ; guid = 14444378144375946129
^120 = gv: (name: "_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17h0587dcc1e70620dbE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^106))))) ; guid = 14523981747337647469
^121 = gv: (name: "_ZN3std4path77_$LT$impl$u20$core..convert..AsRef$LT$std..path..Path$GT$$u20$for$u20$str$GT$6as_ref17hd2e06afe5abbb65aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^136))))) ; guid = 14525597348833538701
^122 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^123 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h23d30003d8e95110E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^155))))) ; guid = 15018139139126550446
^124 = gv: (name: "_ZN3std2rt10lang_start17hdb231489281cc5d8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: hidden, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^153)), refs: (^18)))) ; guid = 15024655905493557234
^125 = gv: (name: "_ZN11csv_fwrite24main17hf5b11c14805bfb5eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^16), (callee: ^56), (callee: ^109), (callee: ^84), (callee: ^1), (callee: ^88), (callee: ^96), (callee: ^2), (callee: ^80)), refs: (^122, ^10, ^116, ^60, ^142, ^38, ^162)))) ; guid = 15117463615208512964
^126 = gv: (name: "_ZN4core9panicking9panic_fmt17ha6dc7f2ab2479463E") ; guid = 15158028984549019756
^127 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17haddad7e8249153c4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^134))))) ; guid = 15368200854008837333
^128 = gv: (name: "_ZN4core3ptr8metadata8metadata17heccb41432665220dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10))) ; guid = 15399402711767704024
^129 = gv: (name: "_ZN5alloc5boxed12Box$LT$T$GT$8from_raw17h07ed6eee5edd4403E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^47))))) ; guid = 15406309351368655597
^130 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^124)), refs: (^125)))) ; guid = 15822663052811949562
^131 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h6114f82f4688b234E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 15869052652864655899
^132 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17h2fb7dbe33593e100E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8))) ; guid = 15882728803538728702
^133 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h647d97e84fcab736E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 16, calls: ((callee: ^156), (callee: ^52))))) ; guid = 16005626733218835486
^134 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h4ec5f646effa0213E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16105501435957913755
^135 = gv: (name: "alloc122", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16207933432312565224
^136 = gv: (name: "_ZN3std4path4Path3new17h6f31cbb52911cc33E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, calls: ((callee: ^48))))) ; guid = 16375306197370458163
^137 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h110db43f0446224eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^145))))) ; guid = 16425753958544127171
^138 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h4c64dd65e4e90546E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 16480850531375680066
^139 = gv: (name: "_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h50d0c2f7c0c61d3eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 25, calls: ((callee: ^29))))) ; guid = 16538976217119585633
^140 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h184eaab2059c7a4eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23))) ; guid = 16588240771738501096
^141 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h91497e2f336fe32dE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12))) ; guid = 16600760193570349011
^142 = gv: (name: "alloc1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16696478377152433305
^143 = gv: (name: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haf94f6178788e770E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 16732267298940004594
^144 = gv: (name: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hac06f892e06c79cfE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 9, calls: ((callee: ^6), (callee: ^87), (callee: ^97))))) ; guid = 16866492451346702848
^145 = gv: (name: "_ZN4core5slice4iter13Iter$LT$T$GT$3new17hd5af78a46a6ea7d4E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 40, calls: ((callee: ^109), (callee: ^65), (callee: ^75))))) ; guid = 17030671211847677229
^146 = gv: (name: "_ZN3std2io5error5Error4kind17h039179e571a4ee00E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 37, calls: ((callee: ^94), (callee: ^99))))) ; guid = 17039500423337537011
^147 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17h5962446cc07b57beE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^45))))) ; guid = 17059466875893219379
^148 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17heff2d1dbb579606bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 17061079969480323999
^149 = gv: (name: "_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hb60972562dcc8e75E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^121))))) ; guid = 17090179631099084049
^150 = gv: (name: "_ZN4core4hint9black_box17hf878bc8a2cb2fc18E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 17101762238398380462
^151 = gv: (name: "_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h435e84f4b520835eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^78))))) ; guid = 17250893138564553912
^152 = gv: (name: "_ZN79_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..path..Path$GT$$GT$6as_ref17h74cf1896e9f9107fE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 17443260203665099272
^153 = gv: (name: "_ZN3std2rt19lang_start_internal17h6612c8a7a6861b8bE") ; guid = 17451603669320732862
^154 = gv: (name: "_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17h2e2f7ba6c0e74020E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 17702571771125612978
^155 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hcc2e1db91072562eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 17755501695012432326
^156 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h7ded1e6d41014176E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 17855962127896630321
^157 = gv: (name: "_ZN3std2io5error14repr_bitpacked11decode_repr28_$u7b$$u7b$closure$u7d$$u7d$17h294436bc1b1dabb9E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 0, mustBeUnreachable: 1), calls: ((callee: ^3))))) ; guid = 18019931835933509302
^158 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17hc37c695375694288E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 18028844760610371172
^159 = gv: (name: "_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h9c1b3a9dcff05229E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 11, calls: ((callee: ^35), (callee: ^74))))) ; guid = 18067041358621459551
^160 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hbfc58f2ab64ca10bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^21))))) ; guid = 18129039076081631718
^161 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^63)))) ; guid = 18220690903030936087
^162 = gv: (name: "alloc8", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^68)))) ; guid = 18284911229334110569
^163 = blockcount: 554
