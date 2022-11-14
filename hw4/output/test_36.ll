; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_655 = alloca i64
  store i64 %x, i64* %_655
  %_656 = alloca i64
  store i64 %y, i64* %_656
  %_657 = load i64, i64* %_655
  %_658 = load i64, i64* %_656
  %_659 = icmp eq i64 %_657, %_658
  br i1 %_659, label %_660, label %_661
_660:
  %_663 = load i64, i64* %_655
  ret i64 %_663
_661:
  br label %_662
_662:
  %_664 = load i64, i64* %_655
  %_665 = icmp eq i64 %_664, 0
  br i1 %_665, label %_666, label %_667
_666:
  %_669 = load i64, i64* %_656
  ret i64 %_669
_667:
  br label %_668
_668:
  %_670 = load i64, i64* %_656
  %_671 = icmp eq i64 %_670, 0
  br i1 %_671, label %_672, label %_673
_672:
  %_675 = load i64, i64* %_655
  ret i64 %_675
_673:
  br label %_674
_674:
  %_676 = load i64, i64* %_655
  %_677 = xor i64 9223372036854775807, %_676
  %_678 = and i64 %_677, 1
  %_679 = icmp eq i64 %_678, 1
  br i1 %_679, label %_680, label %_681
_680:
  %_683 = load i64, i64* %_656
  %_684 = and i64 %_683, 1
  %_685 = icmp eq i64 %_684, 1
  br i1 %_685, label %_686, label %_687
_686:
  %_690 = load i64, i64* %_655
  %_691 = lshr i64 %_690, 1
  %_692 = load i64, i64* %_656
  %_689 = call i64 @binary_gcd(i64 %_691, i64 %_692)
  ret i64 %_689
_687:
  %_694 = load i64, i64* %_655
  %_695 = lshr i64 %_694, 1
  %_696 = load i64, i64* %_656
  %_697 = lshr i64 %_696, 1
  %_693 = call i64 @binary_gcd(i64 %_695, i64 %_697)
  %_698 = shl i64 %_693, 1
  ret i64 %_698
_688:
  br label %_682
_681:
  br label %_682
_682:
  %_699 = load i64, i64* %_656
  %_700 = xor i64 9223372036854775807, %_699
  %_701 = and i64 %_700, 1
  %_702 = icmp eq i64 %_701, 1
  br i1 %_702, label %_703, label %_704
_703:
  %_707 = load i64, i64* %_655
  %_708 = load i64, i64* %_656
  %_709 = lshr i64 %_708, 1
  %_706 = call i64 @binary_gcd(i64 %_707, i64 %_709)
  ret i64 %_706
_704:
  br label %_705
_705:
  %_710 = load i64, i64* %_655
  %_711 = load i64, i64* %_656
  %_712 = icmp sgt i64 %_710, %_711
  br i1 %_712, label %_713, label %_714
_713:
  %_717 = load i64, i64* %_655
  %_718 = load i64, i64* %_656
  %_719 = sub i64 %_717, %_718
  %_720 = lshr i64 %_719, 1
  %_721 = load i64, i64* %_656
  %_716 = call i64 @binary_gcd(i64 %_720, i64 %_721)
  ret i64 %_716
_714:
  br label %_715
_715:
  %_723 = load i64, i64* %_656
  %_724 = load i64, i64* %_655
  %_725 = sub i64 %_723, %_724
  %_726 = lshr i64 %_725, 1
  %_727 = load i64, i64* %_655
  %_722 = call i64 @binary_gcd(i64 %_726, i64 %_727)
  ret i64 %_722
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_648 = alloca i64
  store i64 %argc, i64* %_648
  %_649 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_649
  %_650 = alloca i64
  %_651 = alloca i64
  store i64 21, i64* %_650
  store i64 15, i64* %_651
  %_653 = load i64, i64* %_650
  %_654 = load i64, i64* %_651
  %_652 = call i64 @binary_gcd(i64 %_653, i64 %_654)
  ret i64 %_652
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
