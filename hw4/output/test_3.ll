; generated from: oatprograms/calculator.oat
target triple = "x86_64-unknown-linux"
@_621 = global [2 x i8] c"
\00"

define { i64, [0 x i64] }* @new_stack() {
  %_907 = alloca { i64, [0 x i64] }*
  %_raw_array908 = call i64* @oat_alloc_array(i64 7)
  %_array909 = bitcast i64* %_raw_array908 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array909, { i64, [0 x i64] }** %_907
  %_911 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_907
  %_910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_911, i32 0, i32 1, i32 0
  store i64 5, i64* %_910
  %_913 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_907
  %_912 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_913, i32 0, i32 1, i32 1
  store i64 0, i64* %_912
  %_914 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_907
  ret { i64, [0 x i64] }* %_914
}

define i64 @peek_stack({ i64, [0 x i64] }* %s) {
  %_897 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_897
  %_898 = alloca i64
  %_899 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_897
  %_900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_899, i32 0, i32 1, i32 1
  %_901 = load i64, i64* %_900
  %_902 = add i64 1, %_901
  store i64 %_902, i64* %_898
  %_903 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_897
  %_904 = load i64, i64* %_898
  %_905 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_903, i32 0, i32 1, i64 %_904
  %_906 = load i64, i64* %_905
  ret i64 %_906
}

define { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %s) {
  %_880 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_880
  %_881 = alloca i64
  %_882 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_880
  %_883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_882, i32 0, i32 1, i32 1
  %_884 = load i64, i64* %_883
  store i64 %_884, i64* %_881
  %_885 = load i64, i64* %_881
  %_886 = icmp sgt i64 %_885, 0
  br i1 %_886, label %_887, label %_888
_887:
  %_890 = load i64, i64* %_881
  %_891 = sub i64 %_890, 1
  store i64 %_891, i64* %_881
  br label %_889
_888:
  br label %_889
_889:
  %_892 = load i64, i64* %_881
  %_894 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_880
  %_893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_894, i32 0, i32 1, i32 1
  store i64 %_892, i64* %_893
  %_896 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_880
  %_895 = call { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %_896)
  ret { i64, [0 x i64] }* %_895
}

define { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %s, i64 %v) {
  %_863 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_863
  %_864 = alloca i64
  store i64 %v, i64* %_864
  %_865 = alloca i64
  %_866 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_863
  %_867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_866, i32 0, i32 1, i32 1
  %_868 = load i64, i64* %_867
  %_869 = add i64 2, %_868
  store i64 %_869, i64* %_865
  %_870 = load i64, i64* %_864
  %_872 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_863
  %_873 = load i64, i64* %_865
  %_871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_872, i32 0, i32 1, i64 %_873
  store i64 %_870, i64* %_871
  %_874 = load i64, i64* %_865
  %_875 = sub i64 %_874, 1
  %_877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_863
  %_876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_877, i32 0, i32 1, i32 1
  store i64 %_875, i64* %_876
  %_879 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_863
  %_878 = call { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %_879)
  ret { i64, [0 x i64] }* %_878
}

define { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %s) {
  %_765 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_765
  %_767 = alloca i64
  %_771 = alloca i64
  %_788 = alloca { i64, [0 x i64] }*
  %_802 = alloca i64
  %_829 = alloca { i64, [0 x i64] }*
  %_843 = alloca i64
  %_766 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_765
  ret { i64, [0 x i64] }* %_766
_777:
  %_780 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_765
  ret { i64, [0 x i64] }* %_780
_778:
  br label %_779
_779:
  %_781 = load i64, i64* %_767
  %_782 = load i64, i64* %_771
  %_783 = shl i64 %_782, 1
  %_784 = icmp sgt i64 %_781, %_783
  br i1 %_784, label %_785, label %_786
_785:
  %_789 = load i64, i64* %_771
  %_790 = mul i64 %_789, 2
  %_791 = add i64 2, %_790
  %_raw_array792 = call i64* @oat_alloc_array(i64 %_791)
  %_array793 = bitcast i64* %_raw_array792 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array793, { i64, [0 x i64] }** %_788
  %_794 = load i64, i64* %_771
  %_795 = mul i64 %_794, 2
  store i64 %_795, i64* %_771
  %_796 = load i64, i64* %_771
  %_798 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_788
  %_797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_798, i32 0, i32 1, i32 0
  store i64 %_796, i64* %_797
  %_799 = load i64, i64* %_767
  %_801 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_788
  %_800 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_801, i32 0, i32 1, i32 1
  store i64 %_799, i64* %_800
  store i64 0, i64* %_802
  br label %_806
_806:
  %_803 = load i64, i64* %_802
  %_804 = load i64, i64* %_767
  %_805 = icmp sle i64 %_803, %_804
  br i1 %_805, label %_807, label %_808
_807:
  %_809 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_765
  %_810 = load i64, i64* %_802
  %_811 = add i64 2, %_810
  %_812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_809, i32 0, i32 1, i64 %_811
  %_813 = load i64, i64* %_812
  %_815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_788
  %_816 = load i64, i64* %_802
  %_817 = add i64 2, %_816
  %_814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_815, i32 0, i32 1, i64 %_817
  store i64 %_813, i64* %_814
  %_818 = load i64, i64* %_802
  %_819 = add i64 %_818, 1
  store i64 %_819, i64* %_802
  br label %_806
_808:
  %_820 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_788
  ret { i64, [0 x i64] }* %_820
_786:
  %_821 = load i64, i64* %_767
  %_822 = load i64, i64* %_771
  %_823 = shl i64 %_822, 1
  %_824 = shl i64 %_823, 1
  %_825 = icmp slt i64 %_821, %_824
  br i1 %_825, label %_826, label %_827
_826:
  %_830 = load i64, i64* %_771
  %_831 = add i64 2, %_830
  %_832 = shl i64 %_831, 1
  %_raw_array833 = call i64* @oat_alloc_array(i64 %_832)
  %_array834 = bitcast i64* %_raw_array833 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array834, { i64, [0 x i64] }** %_829
  %_835 = load i64, i64* %_771
  %_836 = shl i64 %_835, 1
  store i64 %_836, i64* %_771
  %_837 = load i64, i64* %_771
  %_839 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_829
  %_838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_839, i32 0, i32 1, i32 0
  store i64 %_837, i64* %_838
  %_840 = load i64, i64* %_767
  %_842 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_829
  %_841 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_842, i32 0, i32 1, i32 1
  store i64 %_840, i64* %_841
  store i64 0, i64* %_843
  br label %_847
_847:
  %_844 = load i64, i64* %_843
  %_845 = load i64, i64* %_767
  %_846 = icmp sle i64 %_844, %_845
  br i1 %_846, label %_848, label %_849
_848:
  %_850 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_765
  %_851 = load i64, i64* %_843
  %_852 = add i64 2, %_851
  %_853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_850, i32 0, i32 1, i64 %_852
  %_854 = load i64, i64* %_853
  %_856 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_829
  %_857 = load i64, i64* %_843
  %_858 = add i64 2, %_857
  %_855 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_856, i32 0, i32 1, i64 %_858
  store i64 %_854, i64* %_855
  %_859 = load i64, i64* %_843
  %_860 = add i64 %_859, 1
  store i64 %_860, i64* %_843
  br label %_847
_849:
  %_861 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_829
  ret { i64, [0 x i64] }* %_861
_827:
  br label %_828
_828:
  br label %_787
_787:
  %_862 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_765
  ret { i64, [0 x i64] }* %_862
}

define i64 @get_val(i64 %i) {
  %_762 = alloca i64
  store i64 %i, i64* %_762
  %_763 = load i64, i64* %_762
  %_764 = sub i64 %_763, 48
  ret i64 %_764
}

define i64 @int_of_string(i8* %s) {
  %_733 = alloca i8*
  store i8* %s, i8** %_733
  %_734 = alloca { i64, [0 x i64] }*
  %_737 = alloca i64
  %_740 = alloca i64
  %_741 = alloca i64
  %_750 = alloca i64
  %_736 = load i8*, i8** %_733
  %_735 = call { i64, [0 x i64] }* @array_of_string(i8* %_736)
  store { i64, [0 x i64] }* %_735, { i64, [0 x i64] }** %_734
  %_739 = load i8*, i8** %_733
  %_738 = call i64 @length_of_string(i8* %_739)
  store i64 %_738, i64* %_737
  store i64 0, i64* %_740
  store i64 0, i64* %_741
  br label %_745
_745:
  %_742 = load i64, i64* %_741
  %_743 = load i64, i64* %_737
  %_744 = icmp slt i64 %_742, %_743
  br i1 %_744, label %_746, label %_747
_746:
  %_748 = load i64, i64* %_740
  %_749 = mul i64 %_748, 10
  store i64 %_749, i64* %_740
  %_752 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_734
  %_753 = load i64, i64* %_741
  %_754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_752, i32 0, i32 1, i64 %_753
  %_755 = load i64, i64* %_754
  %_751 = call i64 @get_val(i64 %_755)
  store i64 %_751, i64* %_750
  %_756 = load i64, i64* %_740
  %_757 = load i64, i64* %_750
  %_758 = add i64 %_756, %_757
  store i64 %_758, i64* %_740
  %_759 = load i64, i64* %_741
  %_760 = add i64 %_759, 1
  store i64 %_760, i64* %_741
  br label %_745
_747:
  %_761 = load i64, i64* %_740
  ret i64 %_761
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_618 = alloca i64
  store i64 %argc, i64* %_618
  %_619 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_619
  %_620 = alloca i8*
  %_623 = alloca { i64, [0 x i64] }*
  %_625 = alloca i64
  %_632 = alloca i8*
  %_637 = alloca i1
  %_638 = alloca i64
  %_646 = alloca { i64, [0 x i64] }*
  %_656 = alloca i64
  %_661 = alloca i64
  %_678 = alloca i64
  %_683 = alloca i64
  %_700 = alloca i64
  %_705 = alloca i64
  %_720 = alloca i64
  %_622 = getelementptr [2 x i8], [2 x i8]* @_621, i32 0, i32 0
  store i8* %_622, i8** %_620
  %_624 = call { i64, [0 x i64] }* @new_stack()
  store { i64, [0 x i64] }* %_624, { i64, [0 x i64] }** %_623
  store i64 1, i64* %_625
  br label %_629
_629:
  %_626 = load i64, i64* %_625
  %_627 = load i64, i64* %_618
  %_628 = icmp slt i64 %_626, %_627
  br i1 %_628, label %_630, label %_631
_630:
  %_633 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_619
  %_634 = load i64, i64* %_625
  %_635 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_633, i32 0, i32 1, i64 %_634
  %_636 = load i8*, i8** %_635
  store i8* %_636, i8** %_632
  store i1 0, i1* %_637
  %_640 = load i8*, i8** %_632
  %_639 = call i64 @length_of_string(i8* %_640)
  store i64 %_639, i64* %_638
  %_641 = load i64, i64* %_638
  %_642 = icmp eq i64 %_641, 1
  br i1 %_642, label %_643, label %_644
_643:
  %_648 = load i8*, i8** %_632
  %_647 = call { i64, [0 x i64] }* @array_of_string(i8* %_648)
  store { i64, [0 x i64] }* %_647, { i64, [0 x i64] }** %_646
  store i1 1, i1* %_637
  %_649 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_646
  %_650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_649, i32 0, i32 1, i32 0
  %_651 = load i64, i64* %_650
  %_652 = icmp eq i64 %_651, 43
  br i1 %_652, label %_653, label %_654
_653:
  %_658 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_657 = call i64 @peek_stack({ i64, [0 x i64] }* %_658)
  store i64 %_657, i64* %_656
  %_660 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_659 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_660)
  store { i64, [0 x i64] }* %_659, { i64, [0 x i64] }** %_623
  %_663 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_662 = call i64 @peek_stack({ i64, [0 x i64] }* %_663)
  store i64 %_662, i64* %_661
  %_665 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_664 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_665)
  store { i64, [0 x i64] }* %_664, { i64, [0 x i64] }** %_623
  %_667 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_668 = load i64, i64* %_656
  %_669 = load i64, i64* %_661
  %_670 = add i64 %_668, %_669
  %_666 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_667, i64 %_670)
  store { i64, [0 x i64] }* %_666, { i64, [0 x i64] }** %_623
  br label %_655
_654:
  %_671 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_646
  %_672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_671, i32 0, i32 1, i32 0
  %_673 = load i64, i64* %_672
  %_674 = icmp eq i64 %_673, 45
  br i1 %_674, label %_675, label %_676
_675:
  %_680 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_679 = call i64 @peek_stack({ i64, [0 x i64] }* %_680)
  store i64 %_679, i64* %_678
  %_682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_681 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_682)
  store { i64, [0 x i64] }* %_681, { i64, [0 x i64] }** %_623
  %_685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_684 = call i64 @peek_stack({ i64, [0 x i64] }* %_685)
  store i64 %_684, i64* %_683
  %_687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_686 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_687)
  store { i64, [0 x i64] }* %_686, { i64, [0 x i64] }** %_623
  %_689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_690 = load i64, i64* %_678
  %_691 = load i64, i64* %_683
  %_692 = sub i64 %_690, %_691
  %_688 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_689, i64 %_692)
  store { i64, [0 x i64] }* %_688, { i64, [0 x i64] }** %_623
  br label %_677
_676:
  %_693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_646
  %_694 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_693, i32 0, i32 1, i32 0
  %_695 = load i64, i64* %_694
  %_696 = icmp eq i64 %_695, 120
  br i1 %_696, label %_697, label %_698
_697:
  %_702 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_701 = call i64 @peek_stack({ i64, [0 x i64] }* %_702)
  store i64 %_701, i64* %_700
  %_704 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_703 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_704)
  store { i64, [0 x i64] }* %_703, { i64, [0 x i64] }** %_623
  %_707 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_706 = call i64 @peek_stack({ i64, [0 x i64] }* %_707)
  store i64 %_706, i64* %_705
  %_709 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_708 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_709)
  store { i64, [0 x i64] }* %_708, { i64, [0 x i64] }** %_623
  %_711 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_712 = load i64, i64* %_700
  %_713 = load i64, i64* %_705
  %_714 = mul i64 %_712, %_713
  %_710 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_711, i64 %_714)
  store { i64, [0 x i64] }* %_710, { i64, [0 x i64] }** %_623
  br label %_699
_698:
  store i1 0, i1* %_637
  br label %_699
_699:
  br label %_677
_677:
  br label %_655
_655:
  br label %_645
_644:
  br label %_645
_645:
  %_715 = load i1, i1* %_637
  %_716 = icmp eq i1 %_715, 0
  br i1 %_716, label %_717, label %_718
_717:
  %_722 = load i8*, i8** %_632
  %_721 = call i64 @int_of_string(i8* %_722)
  store i64 %_721, i64* %_720
  %_724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_725 = load i64, i64* %_720
  %_723 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_724, i64 %_725)
  store { i64, [0 x i64] }* %_723, { i64, [0 x i64] }** %_623
  br label %_719
_718:
  br label %_719
_719:
  %_726 = load i64, i64* %_625
  %_727 = add i64 %_726, 1
  store i64 %_727, i64* %_625
  br label %_629
_631:
  %_730 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_729 = call i64 @peek_stack({ i64, [0 x i64] }* %_730)
  call void @print_int(i64 %_729)
  %_732 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_623
  %_731 = call i64 @peek_stack({ i64, [0 x i64] }* %_732)
  ret i64 %_731
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
