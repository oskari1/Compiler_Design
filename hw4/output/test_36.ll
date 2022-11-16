; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_649 = alloca i64
  store i64 %n, i64* %_649
  %_650 = load i64, i64* %_649
  %_651 = icmp eq i64 %_650, 0
  br i1 %_651, label %_652, label %_653
_652:
  ret i64 0
_653:
  br label %_654
_654:
  %_655 = load i64, i64* %_649
  %_656 = icmp eq i64 %_655, 1
  br i1 %_656, label %_657, label %_658
_657:
  ret i64 1
_658:
  br label %_659
_659:
  %_661 = load i64, i64* %_649
  %_662 = sub i64 %_661, 1
  %_660 = call i64 @fibR(i64 %_662)
  %_664 = load i64, i64* %_649
  %_665 = sub i64 %_664, 2
  %_663 = call i64 @fibR(i64 %_665)
  %_666 = add i64 %_660, %_663
  ret i64 %_666
}

define i64 @fibI(i64 %n) {
  %_617 = alloca i64
  store i64 %n, i64* %_617
  %_618 = alloca i64
  %_619 = alloca i64
  %_638 = alloca i64
  store i64 0, i64* %_618
  store i64 1, i64* %_619
  %_620 = load i64, i64* %_617
  %_621 = icmp eq i64 %_620, 0
  br i1 %_621, label %_622, label %_623
_622:
  %_625 = load i64, i64* %_618
  ret i64 %_625
_623:
  br label %_624
_624:
  %_626 = load i64, i64* %_617
  %_627 = icmp eq i64 %_626, 1
  br i1 %_627, label %_628, label %_629
_628:
  %_631 = load i64, i64* %_619
  ret i64 %_631
_629:
  br label %_630
_630:
  br label %_635
_635:
  %_632 = load i64, i64* %_617
  %_633 = sub i64 %_632, 2
  %_634 = icmp sgt i64 %_633, 0
  br i1 %_634, label %_636, label %_637
_636:
  %_639 = load i64, i64* %_619
  store i64 %_639, i64* %_638
  %_640 = load i64, i64* %_619
  %_641 = load i64, i64* %_618
  %_642 = add i64 %_640, %_641
  store i64 %_642, i64* %_619
  %_643 = load i64, i64* %_638
  store i64 %_643, i64* %_618
  %_644 = load i64, i64* %_617
  %_645 = sub i64 %_644, 1
  store i64 %_645, i64* %_617
  br label %_635
_637:
  %_646 = load i64, i64* %_618
  %_647 = load i64, i64* %_619
  %_648 = add i64 %_646, %_647
  ret i64 %_648
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_605 = alloca i64
  store i64 %argc, i64* %_605
  %_606 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_606
  %_607 = alloca i64
  store i64 1, i64* %_607
  %_608 = call i64 @fibR(i64 12)
  %_609 = icmp eq i64 %_608, 144
  %_610 = call i64 @fibI(i64 12)
  %_611 = icmp eq i64 %_610, 144
  %_612 = and i1 %_609, %_611
  br i1 %_612, label %_613, label %_614
_613:
  store i64 0, i64* %_607
  br label %_615
_614:
  br label %_615
_615:
  %_616 = load i64, i64* %_607
  ret i64 %_616
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
