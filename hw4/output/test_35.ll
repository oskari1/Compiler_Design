; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_627 = alloca i64
  store i64 %n, i64* %_627
  %_628 = load i64, i64* %_627
  %_629 = icmp eq i64 %_628, 0
  br i1 %_629, label %_630, label %_631
_630:
  ret i64 0
_631:
  br label %_632
_632:
  %_633 = load i64, i64* %_627
  %_634 = icmp eq i64 %_633, 1
  br i1 %_634, label %_635, label %_636
_635:
  ret i64 1
_636:
  br label %_637
_637:
  %_639 = load i64, i64* %_627
  %_640 = sub i64 %_639, 1
  %_638 = call i64 @fibR(i64 %_640)
  %_642 = load i64, i64* %_627
  %_643 = sub i64 %_642, 2
  %_641 = call i64 @fibR(i64 %_643)
  %_644 = add i64 %_638, %_641
  ret i64 %_644
}

define i64 @fibI(i64 %n) {
  %_595 = alloca i64
  store i64 %n, i64* %_595
  %_596 = alloca i64
  %_597 = alloca i64
  %_616 = alloca i64
  store i64 0, i64* %_596
  store i64 1, i64* %_597
  %_598 = load i64, i64* %_595
  %_599 = icmp eq i64 %_598, 0
  br i1 %_599, label %_600, label %_601
_600:
  %_603 = load i64, i64* %_596
  ret i64 %_603
_601:
  br label %_602
_602:
  %_604 = load i64, i64* %_595
  %_605 = icmp eq i64 %_604, 1
  br i1 %_605, label %_606, label %_607
_606:
  %_609 = load i64, i64* %_597
  ret i64 %_609
_607:
  br label %_608
_608:
  br label %_613
_613:
  %_610 = load i64, i64* %_595
  %_611 = sub i64 %_610, 2
  %_612 = icmp sgt i64 %_611, 0
  br i1 %_612, label %_614, label %_615
_614:
  %_617 = load i64, i64* %_597
  store i64 %_617, i64* %_616
  %_618 = load i64, i64* %_597
  %_619 = load i64, i64* %_596
  %_620 = add i64 %_618, %_619
  store i64 %_620, i64* %_597
  %_621 = load i64, i64* %_616
  store i64 %_621, i64* %_596
  %_622 = load i64, i64* %_595
  %_623 = sub i64 %_622, 1
  store i64 %_623, i64* %_595
  br label %_613
_615:
  %_624 = load i64, i64* %_596
  %_625 = load i64, i64* %_597
  %_626 = add i64 %_624, %_625
  ret i64 %_626
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_583 = alloca i64
  store i64 %argc, i64* %_583
  %_584 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_584
  %_585 = alloca i64
  store i64 1, i64* %_585
  %_586 = call i64 @fibR(i64 12)
  %_587 = icmp eq i64 %_586, 144
  %_588 = call i64 @fibI(i64 12)
  %_589 = icmp eq i64 %_588, 144
  %_590 = and i1 %_587, %_589
  br i1 %_590, label %_591, label %_592
_591:
  store i64 0, i64* %_585
  br label %_593
_592:
  br label %_593
_593:
  %_594 = load i64, i64* %_585
  ret i64 %_594
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
