; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/__bswap_32.rs.bc'
source_filename = "__bswap_32.c477a7fc-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nonlazybind uwtable
define i32 @__bswap_32(i32 %__bsx) unnamed_addr #0 {
start:
  %_5 = and i32 %__bsx, -16777216
  %_7.0 = lshr i32 %_5, 24
  br label %bb1

bb1:                                              ; preds = %start
  %_9 = and i32 %__bsx, 16711680
  %_11.0 = lshr i32 %_9, 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = or i32 %_7.0, %_11.0
  %_13 = and i32 %__bsx, 65280
  %_15.0 = shl i32 %_13, 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %_2 = or i32 %_3, %_15.0
  %_17 = and i32 %__bsx, 255
  %_19.0 = shl i32 %_17, 24
  br label %bb4

bb4:                                              ; preds = %bb3
  %0 = or i32 %_2, %_19.0
  ret i32 %0
}

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}

^0 = module: (path: "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/__bswap_32.rs.bc", hash: (1753658551, 2867365885, 3456384790, 2250452764, 3714835779))
^1 = gv: (name: "__bswap_32", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16))) ; guid = 9880342275588899506
^2 = blockcount: 5
