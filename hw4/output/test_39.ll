; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_473 = alloca i64
  store i64 %x, i64* %_473
  %_474 = alloca i64
  store i64 %y, i64* %_474
  %_475 = alloca i64
  store i64 0, i64* %_475
  %_476 = load i64, i64* %_473
  %_477 = icmp sge i64 %_476, 1
  br i1 %_477, label %_478, label %_479
_478:
  %_482 = load i64, i64* %_473
  %_483 = sub i64 %_482, 1
  %_484 = load i64, i64* %_474
  %_481 = call i64 @f(i64 %_483, i64 %_484)
  %_485 = add i64 1, %_481
  store i64 %_485, i64* %_475
  br label %_480
_479:
  %_486 = load i64, i64* %_473
  %_487 = load i64, i64* %_474
  %_488 = add i64 %_486, %_487
  store i64 %_488, i64* %_475
  br label %_480
_480:
  %_489 = load i64, i64* %_475
  ret i64 %_489
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_464 = alloca i64
  store i64 %argc, i64* %_464
  %_465 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_465
  %_466 = alloca i64
  %_467 = alloca i64
  store i64 3, i64* %_466
  store i64 3, i64* %_467
  %_469 = load i64, i64* %_466
  %_470 = load i64, i64* %_467
  %_468 = call i64 @f(i64 %_469, i64 %_470)
  %_471 = load i64, i64* @i
  %_472 = add i64 %_468, %_471
  ret i64 %_472
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
