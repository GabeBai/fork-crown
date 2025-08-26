; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_set_delim.rs.bc'
source_filename = "csv_set_delim.df9adf24-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%CsvParser = type { i64, %"core::option::Option<alloc::vec::Vec<u8>>", i64, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i32, i32, i32, i8, i8, i8, [1 x i8] }
%"core::option::Option<alloc::vec::Vec<u8>>" = type { {}*, [2 x i64] }

; Function Attrs: nonlazybind uwtable
define void @csv_set_delim(%CsvParser* align 8 %p, i8 %c) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 15
  %_3 = load i8, i8* %0, align 2
  %1 = icmp eq i8 %_3, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 15
  store i8 %c, i8* %2, align 2
  br label %bb2
}

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}

^0 = module: (path: "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_set_delim.rs.bc", hash: (3683042497, 1013443689, 121964133, 253318638, 3458883359))
^1 = gv: (name: "csv_set_delim", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 6346716638398507878
^2 = blockcount: 3
