; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_656 = alloca i64
  store i64 %x, i64* %_656
  %_657 = alloca i64
  store i64 %y, i64* %_657
  %_658 = load i64, i64* %_656
  %_659 = load i64, i64* %_657
  %_660 = icmp eq i64 %_658, %_659
  br i1 %_660, label %_661, label %_662
_661:
  %_664 = load i64, i64* %_656
  ret i64 %_664
_662:
  br label %_663
_663:
  %_665 = load i64, i64* %_656
  %_666 = icmp eq i64 %_665, 0
  br i1 %_666, label %_667, label %_668
_667:
  %_670 = load i64, i64* %_657
  ret i64 %_670
_668:
  br label %_669
_669:
  %_671 = load i64, i64* %_657
  %_672 = icmp eq i64 %_671, 0
  br i1 %_672, label %_673, label %_674
_673:
  %_676 = load i64, i64* %_656
  ret i64 %_676
_674:
  br label %_675
_675:
  %_677 = load i64, i64* %_656
  %_678 = xor i64 9223372036854775807, %_677
  %_679 = and i64 %_678, 1
  %_680 = icmp eq i64 %_679, 1
  br i1 %_680, label %_681, label %_682
_681:
  %_684 = load i64, i64* %_657
  %_685 = and i64 %_684, 1
  %_686 = icmp eq i64 %_685, 1
  br i1 %_686, label %_687, label %_688
_687:
  %_691 = load i64, i64* %_656
  %_692 = lshr i64 %_691, 1
  %_693 = load i64, i64* %_657
  %_690 = call i64 @binary_gcd(i64 %_692, i64 %_693)
  ret i64 %_690
_688:
  %_695 = load i64, i64* %_656
  %_696 = lshr i64 %_695, 1
  %_697 = load i64, i64* %_657
  %_698 = lshr i64 %_697, 1
  %_694 = call i64 @binary_gcd(i64 %_696, i64 %_698)
  %_699 = shl i64 %_694, 1
  ret i64 %_699
_689:
  br label %_683
_682:
  br label %_683
_683:
  %_700 = load i64, i64* %_657
  %_701 = xor i64 9223372036854775807, %_700
  %_702 = and i64 %_701, 1
  %_703 = icmp eq i64 %_702, 1
  br i1 %_703, label %_704, label %_705
_704:
  %_708 = load i64, i64* %_656
  %_709 = load i64, i64* %_657
  %_710 = lshr i64 %_709, 1
  %_707 = call i64 @binary_gcd(i64 %_708, i64 %_710)
  ret i64 %_707
_705:
  br label %_706
_706:
  %_711 = load i64, i64* %_656
  %_712 = load i64, i64* %_657
  %_713 = icmp sgt i64 %_711, %_712
  br i1 %_713, label %_714, label %_715
_714:
  %_718 = load i64, i64* %_656
  %_719 = load i64, i64* %_657
  %_720 = sub i64 %_718, %_719
  %_721 = lshr i64 %_720, 1
  %_722 = load i64, i64* %_657
  %_717 = call i64 @binary_gcd(i64 %_721, i64 %_722)
  ret i64 %_717
_715:
  br label %_716
_716:
  %_724 = load i64, i64* %_657
  %_725 = load i64, i64* %_656
  %_726 = sub i64 %_724, %_725
  %_727 = lshr i64 %_726, 1
  %_728 = load i64, i64* %_656
  %_723 = call i64 @binary_gcd(i64 %_727, i64 %_728)
  ret i64 %_723
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_649 = alloca i64
  store i64 %argc, i64* %_649
  %_650 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_650
  %_651 = alloca i64
  %_652 = alloca i64
  store i64 21, i64* %_651
  store i64 15, i64* %_652
  %_654 = load i64, i64* %_651
  %_655 = load i64, i64* %_652
  %_653 = call i64 @binary_gcd(i64 %_654, i64 %_655)
  ret i64 %_653
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
