; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_get_buffer_size.rs.bc'
source_filename = "csv_get_buffer_size.46e5dacb-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%CsvParser = type { i64, %"core::option::Option<alloc::vec::Vec<u8>>", i64, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i32, i32, i32, i8, i8, i8, [1 x i8] }
%"core::option::Option<alloc::vec::Vec<u8>>" = type { {}*, [2 x i64] }

; Function Attrs: nonlazybind uwtable
define i64 @csv_get_buffer_size(%CsvParser* align 8 %p) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %_2 = load i64, i64* %1, align 8
  %2 = icmp eq i64 %_2, 0
  br i1 %2, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i64 0, i64* %0, align 8
  br label %bb3

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %0, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i64, i64* %0, align 8
  ret i64 %5
}

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}

^0 = module: (path: "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_get_buffer_size.rs.bc", hash: (858535155, 2800228360, 3091776888, 2190831962, 27443947))
^1 = gv: (name: "csv_get_buffer_size", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 1598847220423286414
^2 = blockcount: 4
