; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_513 = alloca i64
  store i64 %i, i64* %_513
  %_514 = alloca i64
  store i64 0, i64* %_514
  %_515 = load i64, i64* %_513
  %_516 = icmp eq i64 %_515, 0
  br i1 %_516, label %_517, label %_518
_517:
  store i64 1, i64* %_514
  br label %_519
_518:
  %_520 = load i64, i64* %_513
  %_522 = load i64, i64* %_513
  %_523 = sub i64 %_522, 1
  %_521 = call i64 @f(i64 %_523)
  %_524 = mul i64 %_520, %_521
  store i64 %_524, i64* %_514
  br label %_519
_519:
  %_525 = load i64, i64* %_514
  ret i64 %_525
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_510 = alloca i64
  store i64 %argc, i64* %_510
  %_511 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_511
  %_512 = call i64 @f(i64 5)
  ret i64 %_512
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
