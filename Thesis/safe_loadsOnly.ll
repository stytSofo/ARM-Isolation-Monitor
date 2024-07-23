; ModuleID = 'safe.c'
source_filename = "safe.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Address: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Dereferencing: %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_data(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = and i8** %2, i64 72057594037927935
  %5 = or i8** %4, i64 648518346341351424
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef %6)
  %8 = and i8** %2, i64 72057594037927935
  %9 = or i8** %8, i64 648518346341351424
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = and i8* %11, i64 72057594037927935
  %13 = or i8* %12, i64 648518346341351424
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15)
  %17 = and i8** %2, i64 72057594037927935
  %18 = or i8** %17, i64 648518346341351424
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %3, align 8
  %20 = and i8** %3, i64 72057594037927935
  %21 = or i8** %20, i64 648518346341351424
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 97, i8* %23, align 1
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+mte,+neon,+outline-atomics,+v8.5a" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+mte,+neon,+outline-atomics,+v8.5a" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Ubuntu clang version 14.0.6"}
