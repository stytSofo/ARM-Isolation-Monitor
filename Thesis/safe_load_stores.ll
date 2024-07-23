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
  %4 = and i8** %2, i64 72057594037927935
  %5 = or i8** %4, i64 648518346341351424
  store i8** %5, i8** %2, align 8
  %6 = and i8** %2, i64 72057594037927935
  %7 = or i8** %6, i64 648518346341351424
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef %8)
  %10 = and i8** %2, i64 72057594037927935
  %11 = or i8** %10, i64 648518346341351424
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = and i8* %13, i64 72057594037927935
  %15 = or i8* %14, i64 648518346341351424
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef %17)
  %19 = and i8** %2, i64 72057594037927935
  %20 = or i8** %19, i64 648518346341351424
  %21 = load i8*, i8** %20, align 8
  %22 = and i8** %3, i64 72057594037927935
  %23 = or i8** %22, i64 648518346341351424
  store i8** %23, i8** %3, align 8
  %24 = and i8** %3, i64 72057594037927935
  %25 = or i8** %24, i64 648518346341351424
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = and i8* %27, i64 72057594037927935
  %29 = or i8* %28, i64 648518346341351424
  store i8* %29, i8* %27, align 1
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
