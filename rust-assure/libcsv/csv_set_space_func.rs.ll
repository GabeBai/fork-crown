; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_set_space_func.rs.bc'
source_filename = "csv_set_space_func.e791becc-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%CsvParser = type { i64, %"core::option::Option<alloc::vec::Vec<u8>>", i64, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i32, i32, i32, i8, i8, i8, [1 x i8] }
%"core::option::Option<alloc::vec::Vec<u8>>" = type { {}*, [2 x i64] }

; Function Attrs: nonlazybind uwtable
define void @csv_set_space_func(%CsvParser* align 8 %p, {}* align 1 %f.0, [3 x i64]* align 8 %f.1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  %1 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %0, i32 0, i32 0
  store {}* %f.0, {}** %1, align 8
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %0, i32 0, i32 1
  store [3 x i64]* %f.1, [3 x i64]** %2, align 8
  ret void
}

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}

^0 = module: (path: "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_set_space_func.rs.bc", hash: (1398926209, 1581667396, 772538522, 3952650167, 541639197))
^1 = gv: (name: "csv_set_space_func", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6))) ; guid = 14879079467965550850
^2 = blockcount: 1
