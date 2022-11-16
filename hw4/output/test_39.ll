; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_598 = alloca i64
  store i64 %i, i64* %_598
  %_600 = load i64, i64* %_598
  %_599 = call i64 @f2(i64 %_600)
  ret i64 %_599
}

define i64 @f2(i64 %i) {
  %_595 = alloca i64
  store i64 %i, i64* %_595
  %_597 = load i64, i64* %_595
  %_596 = call i64 @f3(i64 %_597)
  ret i64 %_596
}

define i64 @f3(i64 %i) {
  %_592 = alloca i64
  store i64 %i, i64* %_592
  %_594 = load i64, i64* %_592
  %_593 = call i64 @f4(i64 %_594)
  ret i64 %_593
}

define i64 @f4(i64 %i) {
  %_589 = alloca i64
  store i64 %i, i64* %_589
  %_591 = load i64, i64* %_589
  %_590 = call i64 @f5(i64 %_591)
  ret i64 %_590
}

define i64 @f5(i64 %i) {
  %_586 = alloca i64
  store i64 %i, i64* %_586
  %_588 = load i64, i64* %_586
  %_587 = call i64 @f6(i64 %_588)
  ret i64 %_587
}

define i64 @f6(i64 %i) {
  %_583 = alloca i64
  store i64 %i, i64* %_583
  %_585 = load i64, i64* %_583
  %_584 = call i64 @f7(i64 %_585)
  ret i64 %_584
}

define i64 @f7(i64 %i) {
  %_580 = alloca i64
  store i64 %i, i64* %_580
  %_582 = load i64, i64* %_580
  %_581 = call i64 @f8(i64 %_582)
  ret i64 %_581
}

define i64 @f8(i64 %i) {
  %_577 = alloca i64
  store i64 %i, i64* %_577
  %_579 = load i64, i64* %_577
  %_578 = call i64 @f9(i64 %_579)
  ret i64 %_578
}

define i64 @f9(i64 %i) {
  %_575 = alloca i64
  store i64 %i, i64* %_575
  %_576 = load i64, i64* %_575
  ret i64 %_576
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_571 = alloca i64
  store i64 %argc, i64* %_571
  %_572 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_572
  %_574 = load i64, i64* %_571
  %_573 = call i64 @f1(i64 %_574)
  ret i64 %_573
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
