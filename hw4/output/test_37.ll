; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_511 to i8*)
@_511 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_488 = alloca i64
  store i64 %argc, i64* %_488
  %_489 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_489
  %_490 = alloca { i64, [0 x i64] }*
  %_493 = alloca i64
  %_494 = alloca i64
  %_492 = load i8*, i8** @str
  %_491 = call { i64, [0 x i64] }* @array_of_string(i8* %_492)
  store { i64, [0 x i64] }* %_491, { i64, [0 x i64] }** %_490
  store i64 0, i64* %_493
  store i64 0, i64* %_494
  br label %_497
_497:
  %_495 = load i64, i64* %_494
  %_496 = icmp slt i64 %_495, 5
  br i1 %_496, label %_498, label %_499
_498:
  %_500 = load i64, i64* %_493
  %_501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_490
  %_502 = load i64, i64* %_494
  %_503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_501, i32 0, i32 1, i64 %_502
  %_504 = load i64, i64* %_503
  %_505 = add i64 %_500, %_504
  store i64 %_505, i64* %_493
  %_506 = load i64, i64* %_494
  %_507 = add i64 %_506, 1
  store i64 %_507, i64* %_494
  br label %_497
_499:
  %_509 = load i64, i64* %_493
  call void @print_int(i64 %_509)
  %_510 = load i64, i64* %_493
  ret i64 %_510
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
