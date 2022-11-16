; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_677 = alloca i64
  store i64 %x, i64* %_677
  %_678 = alloca i64
  store i64 %y, i64* %_678
  %_679 = load i64, i64* %_677
  %_680 = load i64, i64* %_678
  %_681 = icmp eq i64 %_679, %_680
  br i1 %_681, label %_682, label %_683
_682:
  %_685 = load i64, i64* %_677
  ret i64 %_685
_683:
  br label %_684
_684:
  %_686 = load i64, i64* %_677
  %_687 = icmp eq i64 %_686, 0
  br i1 %_687, label %_688, label %_689
_688:
  %_691 = load i64, i64* %_678
  ret i64 %_691
_689:
  br label %_690
_690:
  %_692 = load i64, i64* %_678
  %_693 = icmp eq i64 %_692, 0
  br i1 %_693, label %_694, label %_695
_694:
  %_697 = load i64, i64* %_677
  ret i64 %_697
_695:
  br label %_696
_696:
  %_698 = load i64, i64* %_677
  %_699 = xor i64 9223372036854775807, %_698
  %_700 = and i64 %_699, 1
  %_701 = icmp eq i64 %_700, 1
  br i1 %_701, label %_702, label %_703
_702:
  %_705 = load i64, i64* %_678
  %_706 = and i64 %_705, 1
  %_707 = icmp eq i64 %_706, 1
  br i1 %_707, label %_708, label %_709
_708:
  %_712 = load i64, i64* %_677
  %_713 = lshr i64 %_712, 1
  %_714 = load i64, i64* %_678
  %_711 = call i64 @binary_gcd(i64 %_713, i64 %_714)
  ret i64 %_711
_709:
  %_716 = load i64, i64* %_677
  %_717 = lshr i64 %_716, 1
  %_718 = load i64, i64* %_678
  %_719 = lshr i64 %_718, 1
  %_715 = call i64 @binary_gcd(i64 %_717, i64 %_719)
  %_720 = shl i64 %_715, 1
  ret i64 %_720
_710:
  br label %_704
_703:
  br label %_704
_704:
  %_721 = load i64, i64* %_678
  %_722 = xor i64 9223372036854775807, %_721
  %_723 = and i64 %_722, 1
  %_724 = icmp eq i64 %_723, 1
  br i1 %_724, label %_725, label %_726
_725:
  %_729 = load i64, i64* %_677
  %_730 = load i64, i64* %_678
  %_731 = lshr i64 %_730, 1
  %_728 = call i64 @binary_gcd(i64 %_729, i64 %_731)
  ret i64 %_728
_726:
  br label %_727
_727:
  %_732 = load i64, i64* %_677
  %_733 = load i64, i64* %_678
  %_734 = icmp sgt i64 %_732, %_733
  br i1 %_734, label %_735, label %_736
_735:
  %_739 = load i64, i64* %_677
  %_740 = load i64, i64* %_678
  %_741 = sub i64 %_739, %_740
  %_742 = lshr i64 %_741, 1
  %_743 = load i64, i64* %_678
  %_738 = call i64 @binary_gcd(i64 %_742, i64 %_743)
  ret i64 %_738
_736:
  br label %_737
_737:
  %_745 = load i64, i64* %_678
  %_746 = load i64, i64* %_677
  %_747 = sub i64 %_745, %_746
  %_748 = lshr i64 %_747, 1
  %_749 = load i64, i64* %_677
  %_744 = call i64 @binary_gcd(i64 %_748, i64 %_749)
  ret i64 %_744
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_670 = alloca i64
  store i64 %argc, i64* %_670
  %_671 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_671
  %_672 = alloca i64
  %_673 = alloca i64
  store i64 21, i64* %_672
  store i64 15, i64* %_673
  %_675 = load i64, i64* %_672
  %_676 = load i64, i64* %_673
  %_674 = call i64 @binary_gcd(i64 %_675, i64 %_676)
  ret i64 %_674
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
