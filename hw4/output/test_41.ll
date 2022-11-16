; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_570 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_566 = alloca i64
  store i64 %argc, i64* %_566
  %_567 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_567
  %_568 = alloca { i64, [0 x i64] }*
  %_572 = alloca i64
  %_573 = alloca i64
  %_585 = alloca i64
  %_571 = getelementptr [11 x i8], [11 x i8]* @_570, i32 0, i32 0
  %_569 = call { i64, [0 x i64] }* @array_of_string(i8* %_571)
  store { i64, [0 x i64] }* %_569, { i64, [0 x i64] }** %_568
  store i64 0, i64* %_572
  store i64 0, i64* %_573
  br label %_576
_576:
  %_574 = load i64, i64* %_573
  %_575 = icmp slt i64 %_574, 10
  br i1 %_575, label %_577, label %_578
_577:
  %_579 = load i64, i64* %_573
  %_581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_568
  %_582 = load i64, i64* %_573
  %_580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_581, i32 0, i32 1, i64 %_582
  store i64 %_579, i64* %_580
  %_583 = load i64, i64* %_573
  %_584 = add i64 %_583, 1
  store i64 %_584, i64* %_573
  br label %_576
_578:
  store i64 0, i64* %_585
  br label %_588
_588:
  %_586 = load i64, i64* %_585
  %_587 = icmp slt i64 %_586, 10
  br i1 %_587, label %_589, label %_590
_589:
  %_591 = load i64, i64* %_572
  %_592 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_568
  %_593 = load i64, i64* %_585
  %_594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_592, i32 0, i32 1, i64 %_593
  %_595 = load i64, i64* %_594
  %_596 = add i64 %_591, %_595
  store i64 %_596, i64* %_572
  %_597 = load i64, i64* %_585
  %_598 = add i64 %_597, 1
  store i64 %_598, i64* %_585
  br label %_588
_590:
  %_599 = load i64, i64* %_572
  ret i64 %_599
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
