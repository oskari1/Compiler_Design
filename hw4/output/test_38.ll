; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_515 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_512 = alloca i64
  store i64 %argc, i64* %_512
  %_513 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_513
  %_514 = alloca i8*
  %_517 = alloca { i64, [0 x i64] }*
  %_520 = alloca i64
  %_521 = alloca i64
  %_516 = getelementptr [6 x i8], [6 x i8]* @_515, i32 0, i32 0
  store i8* %_516, i8** %_514
  %_519 = load i8*, i8** %_514
  %_518 = call { i64, [0 x i64] }* @array_of_string(i8* %_519)
  store { i64, [0 x i64] }* %_518, { i64, [0 x i64] }** %_517
  store i64 0, i64* %_520
  store i64 0, i64* %_521
  br label %_524
_524:
  %_522 = load i64, i64* %_521
  %_523 = icmp slt i64 %_522, 5
  br i1 %_523, label %_525, label %_526
_525:
  %_527 = load i64, i64* %_520
  %_528 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_517
  %_529 = load i64, i64* %_521
  %_530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_528, i32 0, i32 1, i64 %_529
  %_531 = load i64, i64* %_530
  %_532 = add i64 %_527, %_531
  store i64 %_532, i64* %_520
  %_533 = load i64, i64* %_521
  %_534 = add i64 %_533, 1
  store i64 %_534, i64* %_521
  br label %_524
_526:
  %_535 = load i64, i64* %_520
  ret i64 %_535
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
