; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_544 = alloca i64
  store i64 %i, i64* %_544
  %_546 = load i64, i64* %_544
  %_545 = call i64 @f2(i64 %_546)
  ret i64 %_545
}

define i64 @f2(i64 %i) {
  %_541 = alloca i64
  store i64 %i, i64* %_541
  %_543 = load i64, i64* %_541
  %_542 = call i64 @f3(i64 %_543)
  ret i64 %_542
}

define i64 @f3(i64 %i) {
  %_538 = alloca i64
  store i64 %i, i64* %_538
  %_540 = load i64, i64* %_538
  %_539 = call i64 @f4(i64 %_540)
  ret i64 %_539
}

define i64 @f4(i64 %i) {
  %_535 = alloca i64
  store i64 %i, i64* %_535
  %_537 = load i64, i64* %_535
  %_536 = call i64 @f5(i64 %_537)
  ret i64 %_536
}

define i64 @f5(i64 %i) {
  %_532 = alloca i64
  store i64 %i, i64* %_532
  %_534 = load i64, i64* %_532
  %_533 = call i64 @f6(i64 %_534)
  ret i64 %_533
}

define i64 @f6(i64 %i) {
  %_529 = alloca i64
  store i64 %i, i64* %_529
  %_531 = load i64, i64* %_529
  %_530 = call i64 @f7(i64 %_531)
  ret i64 %_530
}

define i64 @f7(i64 %i) {
  %_526 = alloca i64
  store i64 %i, i64* %_526
  %_528 = load i64, i64* %_526
  %_527 = call i64 @f8(i64 %_528)
  ret i64 %_527
}

define i64 @f8(i64 %i) {
  %_523 = alloca i64
  store i64 %i, i64* %_523
  %_525 = load i64, i64* %_523
  %_524 = call i64 @f9(i64 %_525)
  ret i64 %_524
}

define i64 @f9(i64 %i) {
  %_521 = alloca i64
  store i64 %i, i64* %_521
  %_522 = load i64, i64* %_521
  ret i64 %_522
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_517 = alloca i64
  store i64 %argc, i64* %_517
  %_518 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_518
  %_520 = load i64, i64* %_517
  %_519 = call i64 @f1(i64 %_520)
  ret i64 %_519
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
