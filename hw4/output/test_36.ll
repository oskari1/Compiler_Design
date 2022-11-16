; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_628 = alloca i64
  store i64 %n, i64* %_628
  %_629 = load i64, i64* %_628
  %_630 = icmp eq i64 %_629, 0
  br i1 %_630, label %_631, label %_632
_631:
  ret i64 0
_632:
  br label %_633
_633:
  %_634 = load i64, i64* %_628
  %_635 = icmp eq i64 %_634, 1
  br i1 %_635, label %_636, label %_637
_636:
  ret i64 1
_637:
  br label %_638
_638:
  %_640 = load i64, i64* %_628
  %_641 = sub i64 %_640, 1
  %_639 = call i64 @fibR(i64 %_641)
  %_643 = load i64, i64* %_628
  %_644 = sub i64 %_643, 2
  %_642 = call i64 @fibR(i64 %_644)
  %_645 = add i64 %_639, %_642
  ret i64 %_645
}

define i64 @fibI(i64 %n) {
  %_596 = alloca i64
  store i64 %n, i64* %_596
  %_597 = alloca i64
  %_598 = alloca i64
  %_617 = alloca i64
  store i64 0, i64* %_597
  store i64 1, i64* %_598
  %_599 = load i64, i64* %_596
  %_600 = icmp eq i64 %_599, 0
  br i1 %_600, label %_601, label %_602
_601:
  %_604 = load i64, i64* %_597
  ret i64 %_604
_602:
  br label %_603
_603:
  %_605 = load i64, i64* %_596
  %_606 = icmp eq i64 %_605, 1
  br i1 %_606, label %_607, label %_608
_607:
  %_610 = load i64, i64* %_598
  ret i64 %_610
_608:
  br label %_609
_609:
  br label %_614
_614:
  %_611 = load i64, i64* %_596
  %_612 = sub i64 %_611, 2
  %_613 = icmp sgt i64 %_612, 0
  br i1 %_613, label %_615, label %_616
_615:
  %_618 = load i64, i64* %_598
  store i64 %_618, i64* %_617
  %_619 = load i64, i64* %_598
  %_620 = load i64, i64* %_597
  %_621 = add i64 %_619, %_620
  store i64 %_621, i64* %_598
  %_622 = load i64, i64* %_617
  store i64 %_622, i64* %_597
  %_623 = load i64, i64* %_596
  %_624 = sub i64 %_623, 1
  store i64 %_624, i64* %_596
  br label %_614
_616:
  %_625 = load i64, i64* %_597
  %_626 = load i64, i64* %_598
  %_627 = add i64 %_625, %_626
  ret i64 %_627
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_584 = alloca i64
  store i64 %argc, i64* %_584
  %_585 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_585
  %_586 = alloca i64
  store i64 1, i64* %_586
  %_587 = call i64 @fibR(i64 12)
  %_588 = icmp eq i64 %_587, 144
  %_589 = call i64 @fibI(i64 12)
  %_590 = icmp eq i64 %_589, 144
  %_591 = and i1 %_588, %_590
  br i1 %_591, label %_592, label %_593
_592:
  store i64 0, i64* %_586
  br label %_594
_593:
  br label %_594
_594:
  %_595 = load i64, i64* %_586
  ret i64 %_595
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
