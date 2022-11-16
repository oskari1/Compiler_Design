; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_535 = alloca i64
  store i64 %i, i64* %_535
  %_536 = alloca i64
  store i64 0, i64* %_536
  %_537 = load i64, i64* %_535
  %_538 = icmp eq i64 %_537, 0
  br i1 %_538, label %_539, label %_540
_539:
  store i64 1, i64* %_536
  br label %_541
_540:
  %_542 = load i64, i64* %_535
  %_544 = load i64, i64* %_535
  %_545 = sub i64 %_544, 1
  %_543 = call i64 @f(i64 %_545)
  %_546 = mul i64 %_542, %_543
  store i64 %_546, i64* %_536
  br label %_541
_541:
  %_547 = load i64, i64* %_536
  ret i64 %_547
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_532 = alloca i64
  store i64 %argc, i64* %_532
  %_533 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_533
  %_534 = call i64 @f(i64 5)
  ret i64 %_534
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
