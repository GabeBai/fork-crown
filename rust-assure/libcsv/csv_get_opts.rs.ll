; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_get_opts.rs.bc'
source_filename = "csv_get_opts.ffdb6fcc-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%CsvParser = type { i64, %"core::option::Option<alloc::vec::Vec<u8>>", i64, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i32, i32, i32, i8, i8, i8, [1 x i8] }
%"core::option::Option<alloc::vec::Vec<u8>>" = type { {}*, [2 x i64] }

; Function Attrs: nonlazybind uwtable
define i32 @csv_get_opts(i64* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca i32, align 4
  %p = alloca i64*, align 8
  store i64* %0, i64** %p, align 8
  %2 = bitcast i64** %p to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  store i32 -1, i32* %1, align 4
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast i64** %p to %CsvParser**
  %parser = load %CsvParser*, %CsvParser** %5, align 8, !nonnull !2, !align !3, !noundef !2
  %6 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 13
  %_4 = load i8, i8* %6, align 4
  %7 = zext i8 %_4 to i32
  store i32 %7, i32* %1, align 4
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %8 = load i32, i32* %1, align 4
  ret i32 %8
}

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{i64 8}

^0 = module: (path: "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_get_opts.rs.bc", hash: (2977009363, 1535309077, 2605112847, 1819304716, 1873666009))
^1 = gv: (name: "csv_get_opts", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 20))) ; guid = 5073074585535028091
^2 = blockcount: 5
