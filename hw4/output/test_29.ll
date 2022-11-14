; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_478 = alloca i64
  store i64 %i, i64* %_478
  %_479 = alloca i64
  store i64 0, i64* %_479
  %_480 = load i64, i64* %_478
  %_481 = icmp eq i64 %_480, 0
  br i1 %_481, label %_482, label %_483
_482:
  store i64 1, i64* %_479
  br label %_484
_483:
  %_485 = load i64, i64* %_478
  %_487 = load i64, i64* %_478
  %_488 = sub i64 %_487, 1
  %_486 = call i64 @f(i64 %_488)
  %_489 = mul i64 %_485, %_486
  store i64 %_489, i64* %_479
  br label %_484
_484:
  %_490 = load i64, i64* %_479
  ret i64 %_490
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_475 = alloca i64
  store i64 %argc, i64* %_475
  %_476 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_476
  %_477 = call i64 @f(i64 5)
  ret i64 %_477
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
