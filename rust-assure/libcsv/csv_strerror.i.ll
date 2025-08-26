; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_strerror.i.bc'
source_filename = "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_strerror.i"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"error parsing data while strict checking enabled\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"memory exhausted while increasing buffer size\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"data size too large\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"invalid status code\00", align 1
@csv_errors = dso_local global [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @csv_strerror(i32 noundef %status) #0 {
entry:
  %retval = alloca i8*, align 8
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %cmp = icmp sge i32 %0, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %status.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @csv_errors, i64 0, i64 4), align 16
  store i8* %2, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %status.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @csv_errors, i64 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (git@github.com:taptipalit/typedefextractor.git fc1e79f9530360ad5b316913f5cb89037ebeb3b6)"}
