; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_get_quote.i.bc'
source_filename = "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_get_quote.i"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

@.str = private unnamed_addr constant [25 x i8] c"received null csv_parser\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"p && \22received null csv_parser\22\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"libcsv.c\00", align 1
@__PRETTY_FUNCTION__.csv_get_quote = private unnamed_addr constant [55 x i8] c"unsigned char csv_get_quote(const struct csv_parser *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @csv_get_quote(%struct.csv_parser* noundef %p) #0 {
entry:
  %p.addr = alloca %struct.csv_parser*, align 8
  store %struct.csv_parser* %p, %struct.csv_parser** %p.addr, align 8
  %0 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %tobool = icmp ne %struct.csv_parser* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  br i1 true, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.csv_get_quote, i64 0, i64 0)) #2
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.csv_parser*, %struct.csv_parser** %p.addr, align 8
  %quote_char = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %1, i32 0, i32 8
  %2 = load i8, i8* %quote_char, align 1
  ret i8 %2
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (git@github.com:taptipalit/typedefextractor.git fc1e79f9530360ad5b316913f5cb89037ebeb3b6)"}
