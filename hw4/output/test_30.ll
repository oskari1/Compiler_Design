; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_591 = alloca i64
  store i64 %n, i64* %_591
  %_592 = load i64*, i64** %_591
  %_593 = icmp eq i64* %_592, 0
  br i1 %_593, label %_594, label %_595
_594:
  ret i64 0
_595:
  br label %_596
_596:
  %_597 = load i64*, i64** %_591
  %_598 = icmp eq i64* %_597, 1
  br i1 %_598, label %_599, label %_600
_599:
  ret i64 1
_600:
  br label %_601
_601:
  %_603 = load i64*, i64** %_591
  %_604 = sub i64* %_603, 1
  %_602 = call i64 @fibR(i64 %_604)
  %_606 = load i64*, i64** %_591
  %_607 = sub i64* %_606, 2
  %_605 = call i64 @fibR(i64 %_607)
  %_608 = add i64 %_602, %_605
  ret i64 %_608
}

define i64 @fibI(i64 %n) {
  %_559 = alloca i64
  store i64 %n, i64* %_559
  %_560 = alloca i64
  %_561 = alloca i64
  %_580 = alloca i64
  store i64 0, i64* %_560
  store i64 1, i64* %_561
  %_562 = load i64*, i64** %_559
  %_563 = icmp eq i64* %_562, 0
  br i1 %_563, label %_564, label %_565
_564:
  %_567 = load i64, i64* %_560
  ret i64 %_567
_565:
  br label %_566
_566:
  %_568 = load i64*, i64** %_559
  %_569 = icmp eq i64* %_568, 1
  br i1 %_569, label %_570, label %_571
_570:
  %_573 = load i64, i64* %_561
  ret i64 %_573
_571:
  br label %_572
_572:
  br label %_577
_577:
  %_574 = load i64*, i64** %_559
  %_575 = sub i64* %_574, 2
  %_576 = icmp sgt i64 %_575, 0
  br i1 %_576, label %_578, label %_579
_578:
  %_581 = load i64, i64* %_561
  store i64 %_581, i64* %_580
  %_582 = load i64, i64* %_561
  %_583 = load i64, i64* %_560
  %_584 = add i64 %_582, %_583
  store i64 %_584, i64* %_561
  %_585 = load i64, i64* %_580
  store i64 %_585, i64* %_560
  %_586 = load i64*, i64** %_559
  %_587 = sub i64* %_586, 1
  store i64 %_587, i64* %_559
  br label %_577
_579:
  %_588 = load i64, i64* %_560
  %_589 = load i64, i64* %_561
  %_590 = add i64 %_588, %_589
  ret i64 %_590
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_547 = alloca i64
  store i64 %argc, i64* %_547
  %_548 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_548
  %_549 = alloca i64
  store i64 1, i64* %_549
  %_550 = call i64 @fibR(i64 12)
  %_551 = icmp eq i64 %_550, 144
  %_552 = call i64 @fibI(i64 12)
  %_553 = icmp eq i64 %_552, 144
  %_554 = and i1 %_551, %_553
  br i1 %_554, label %_555, label %_556
_555:
  store i64 0, i64* %_549
  br label %_557
_556:
  br label %_557
_557:
  %_558 = load i64, i64* %_549
  ret i64 %_558
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
