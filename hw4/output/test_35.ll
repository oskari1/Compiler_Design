; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_514 = alloca i64
  store i64 %i, i64* %_514
  %_515 = alloca i64
  store i64 0, i64* %_515
  %_516 = load i64, i64* %_514
  %_517 = icmp eq i64 %_516, 0
  br i1 %_517, label %_518, label %_519
_518:
  store i64 1, i64* %_515
  br label %_520
_519:
  %_521 = load i64, i64* %_514
  %_523 = load i64, i64* %_514
  %_524 = sub i64 %_523, 1
  %_522 = call i64 @f(i64 %_524)
  %_525 = mul i64 %_521, %_522
  store i64 %_525, i64* %_515
  br label %_520
_520:
  %_526 = load i64, i64* %_515
  ret i64 %_526
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_511 = alloca i64
  store i64 %argc, i64* %_511
  %_512 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_512
  %_513 = call i64 @f(i64 5)
  ret i64 %_513
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
