; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_write.i.bc'
source_filename = "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_write.i"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @csv_write(i8* noundef %dest, i64 noundef %dest_size, i8* noundef %src, i64 noundef %src_size) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  %0 = load i8*, i8** %dest.addr, align 8
  %1 = load i64, i64* %dest_size.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i64, i64* %src_size.addr, align 8
  %call = call i64 @csv_write2(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i8 noundef zeroext 34)
  ret i64 %call
}

declare dso_local i64 @csv_write2(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8 noundef zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (git@github.com:taptipalit/typedefextractor.git fc1e79f9530360ad5b316913f5cb89037ebeb3b6)"}
