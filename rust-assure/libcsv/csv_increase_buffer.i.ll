; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_increase_buffer.i.bc'
source_filename = "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_increase_buffer.i"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csv_increase_buffer(%struct.csv_parser* noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.csv_parser*, align 8
  %to_add = alloca i64, align 8
  %vp = alloca i8*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %cmp = icmp eq %struct.csv_parser* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %realloc_func = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 14
  %2 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func, align 8
  %cmp1 = icmp eq i8* (i8*, i64)* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %blk_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %3, i32 0, i32 12
  %4 = load i64, i64* %blk_size, align 8
  store i64 %4, i64* %to_add, align 8
  %5 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %5, i32 0, i32 5
  %6 = load i64, i64* %entry_size, align 8
  %7 = load i64, i64* %to_add, align 8
  %sub = sub i64 -1, %7
  %cmp4 = icmp uge i64 %6, %sub
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %8 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size6 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %8, i32 0, i32 5
  %9 = load i64, i64* %entry_size6, align 8
  %sub7 = sub i64 -1, %9
  store i64 %sub7, i64* %to_add, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3
  %10 = load i64, i64* %to_add, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end8
  %11 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %11, i32 0, i32 6
  store i32 3, i32* %status, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.end10
  %12 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %realloc_func11 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %12, i32 0, i32 14
  %13 = load i8* (i8*, i64)*, i8* (i8*, i64)** %realloc_func11, align 8
  %14 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %14, i32 0, i32 3
  %15 = load i8*, i8** %entry_buf, align 8
  %16 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size12 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %16, i32 0, i32 5
  %17 = load i64, i64* %entry_size12, align 8
  %18 = load i64, i64* %to_add, align 8
  %add = add i64 %17, %18
  %call = call i8* %13(i8* noundef %15, i64 noundef %add)
  store i8* %call, i8** %vp, align 8
  %cmp13 = icmp eq i8* %call, null
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i64, i64* %to_add, align 8
  %div = udiv i64 %19, 2
  store i64 %div, i64* %to_add, align 8
  %20 = load i64, i64* %to_add, align 8
  %tobool14 = icmp ne i64 %20, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %while.body
  %21 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %status16 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %21, i32 0, i32 6
  store i32 2, i32* %status16, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %22 = load i8*, i8** %vp, align 8
  %23 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_buf18 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %23, i32 0, i32 3
  store i8* %22, i8** %entry_buf18, align 8
  %24 = load i64, i64* %to_add, align 8
  %25 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %entry_size19 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %25, i32 0, i32 5
  %26 = load i64, i64* %entry_size19, align 8
  %add20 = add i64 %26, %24
  store i64 %add20, i64* %entry_size19, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then15, %if.then9, %if.then2, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (git@github.com:taptipalit/typedefextractor.git fc1e79f9530360ad5b316913f5cb89037ebeb3b6)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
