; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_560 = alloca i64
  store i64 %x1, i64* %_560
  %_561 = alloca i64
  store i64 %x2, i64* %_561
  %_562 = alloca i64
  store i64 %x3, i64* %_562
  %_563 = alloca i64
  store i64 %x4, i64* %_563
  %_564 = alloca i64
  store i64 %x5, i64* %_564
  %_565 = alloca i64
  store i64 %x6, i64* %_565
  %_566 = alloca i64
  store i64 %x7, i64* %_566
  %_567 = alloca i64
  store i64 %x8, i64* %_567
  %_568 = load i64, i64* %_560
  %_569 = load i64, i64* %_561
  %_570 = add i64 %_568, %_569
  %_571 = load i64, i64* %_562
  %_572 = add i64 %_570, %_571
  %_573 = load i64, i64* %_563
  %_574 = add i64 %_572, %_573
  %_575 = load i64, i64* %_564
  %_576 = add i64 %_574, %_575
  %_577 = load i64, i64* %_565
  %_578 = add i64 %_576, %_577
  %_579 = load i64, i64* %_566
  %_580 = add i64 %_578, %_579
  %_581 = load i64, i64* %_567
  %_582 = add i64 %_580, %_581
  ret i64 %_582
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_554 = alloca i64
  store i64 %argc, i64* %_554
  %_555 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_555
  %_557 = sub i64 0, 5
  %_558 = sub i64 0, 4
  %_559 = sub i64 0, 3
  %_556 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_557, i64 %_558, i64 %_559)
  ret i64 %_556
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
