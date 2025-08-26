; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_set_quote.rs.bc'
source_filename = "csv_set_quote.ec185fc2-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%CsvParser = type { i64, %"core::option::Option<alloc::vec::Vec<u8>>", i64, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i32, i32, i32, i8, i8, i8, [1 x i8] }
%"core::option::Option<alloc::vec::Vec<u8>>" = type { {}*, [2 x i64] }

; Function Attrs: nonlazybind uwtable
define void @csv_set_quote(i64* align 8 %0, i8 %c) unnamed_addr #0 {
start:
  %p = alloca i64*, align 8
  store i64* %0, i64** %p, align 8
  %1 = bitcast i64** %p to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_3 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_3, 1
  br i1 %4, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %5 = bitcast i64** %p to %CsvParser**
  %parser = load %CsvParser*, %CsvParser** %5, align 8, !nonnull !2, !align !3, !noundef !2
  %6 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 14
  store i8 %c, i8* %6, align 1
  br label %bb2

bb2:                                              ; preds = %bb1, %start
  ret void
}

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{i64 8}

^0 = module: (path: "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_set_quote.rs.bc", hash: (2254071094, 694214434, 1511759411, 1576132348, 3732105966))
^1 = gv: (name: "csv_set_quote", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 9849287556585081217
^2 = blockcount: 3
