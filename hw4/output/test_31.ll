; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_619 = alloca i64
  store i64 %x, i64* %_619
  %_620 = alloca i64
  store i64 %y, i64* %_620
  %_621 = load i64, i64* %_619
  %_622 = load i64, i64* %_620
  %_623 = icmp eq i64 %_621, %_622
  br i1 %_623, label %_624, label %_625
_624:
  %_627 = load i64, i64* %_619
  ret i64 %_627
_625:
  br label %_626
_626:
  %_628 = load i64, i64* %_619
  %_629 = icmp eq i64 %_628, 0
  br i1 %_629, label %_630, label %_631
_630:
  %_633 = load i64, i64* %_620
  ret i64 %_633
_631:
  br label %_632
_632:
  %_634 = load i64, i64* %_620
  %_635 = icmp eq i64 %_634, 0
  br i1 %_635, label %_636, label %_637
_636:
  %_639 = load i64, i64* %_619
  ret i64 %_639
_637:
  br label %_638
_638:
  %_640 = load i64, i64* %_619
  %_641 = xor i64 9223372036854775807, %_640
  %_642 = and i64 %_641, 1
  %_643 = icmp eq i64 %_642, 1
  br i1 %_643, label %_644, label %_645
_644:
  %_647 = load i64, i64* %_620
  %_648 = and i64 %_647, 1
  %_649 = icmp eq i64 %_648, 1
  br i1 %_649, label %_650, label %_651
_650:
  %_654 = load i64, i64* %_619
  %_655 = lshr i64 %_654, 1
  %_656 = load i64, i64* %_620
  %_653 = call i64 @binary_gcd(i64 %_655, i64 %_656)
  ret i64 %_653
_651:
  %_658 = load i64, i64* %_619
  %_659 = lshr i64 %_658, 1
  %_660 = load i64, i64* %_620
  %_661 = lshr i64 %_660, 1
  %_657 = call i64 @binary_gcd(i64 %_659, i64 %_661)
  %_662 = shl i64 %_657, 1
  ret i64 %_662
_652:
  br label %_646
_645:
  br label %_646
_646:
  %_663 = load i64, i64* %_620
  %_664 = xor i64 9223372036854775807, %_663
  %_665 = and i64 %_664, 1
  %_666 = icmp eq i64 %_665, 1
  br i1 %_666, label %_667, label %_668
_667:
  %_671 = load i64, i64* %_619
  %_672 = load i64, i64* %_620
  %_673 = lshr i64 %_672, 1
  %_670 = call i64 @binary_gcd(i64 %_671, i64 %_673)
  ret i64 %_670
_668:
  br label %_669
_669:
  %_674 = load i64, i64* %_619
  %_675 = load i64, i64* %_620
  %_676 = icmp sgt i64 %_674, %_675
  br i1 %_676, label %_677, label %_678
_677:
  %_681 = load i64, i64* %_619
  %_682 = load i64, i64* %_620
  %_683 = sub i64 %_681, %_682
  %_684 = lshr i64 %_683, 1
  %_685 = load i64, i64* %_620
  %_680 = call i64 @binary_gcd(i64 %_684, i64 %_685)
  ret i64 %_680
_678:
  br label %_679
_679:
  %_687 = load i64, i64* %_620
  %_688 = load i64, i64* %_619
  %_689 = sub i64 %_687, %_688
  %_690 = lshr i64 %_689, 1
  %_691 = load i64, i64* %_619
  %_686 = call i64 @binary_gcd(i64 %_690, i64 %_691)
  ret i64 %_686
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_612 = alloca i64
  store i64 %argc, i64* %_612
  %_613 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_613
  %_614 = alloca i64
  %_615 = alloca i64
  store i64 21, i64* %_614
  store i64 15, i64* %_615
  %_617 = load i64, i64* %_614
  %_618 = load i64, i64* %_615
  %_616 = call i64 @binary_gcd(i64 %_617, i64 %_618)
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
