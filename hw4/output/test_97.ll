; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_3761 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_3761
  %_3762 = alloca i64
  store i64 %i, i64* %_3762
  %_3763 = alloca i64
  store i64 %len, i64* %_3763
  %_3764 = alloca i64
  %_3767 = alloca i64
  %_3770 = alloca i64
  %_3771 = alloca i64
  %_3765 = load i64, i64* %_3762
  %_3766 = mul i64 %_3765, 2
  store i64 %_3766, i64* %_3764
  %_3768 = load i64, i64* %_3762
  %_3769 = add i64 %_3768, 1
  store i64 %_3769, i64* %_3767
  store i64 0, i64* %_3770
  %_3772 = load i64, i64* %_3762
  store i64 %_3772, i64* %_3771
  %_3773 = load i64, i64* %_3764
  %_3774 = load i64, i64* %_3763
  %_3775 = icmp slt i64 %_3773, %_3774
  br i1 %_3775, label %_3776, label %_3777
_3776:
  %_3779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3780 = load i64, i64* %_3764
  %_3781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3779, i32 0, i32 1, i64 %_3780
  %_3782 = load i64, i64* %_3781
  %_3783 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3784 = load i64, i64* %_3771
  %_3785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3783, i32 0, i32 1, i64 %_3784
  %_3786 = load i64, i64* %_3785
  %_3787 = icmp sgt i64 %_3782, %_3786
  br i1 %_3787, label %_3788, label %_3789
_3788:
  %_3791 = load i64, i64* %_3764
  store i64 %_3791, i64* %_3771
  br label %_3790
_3789:
  br label %_3790
_3790:
  br label %_3778
_3777:
  br label %_3778
_3778:
  %_3792 = load i64, i64* %_3767
  %_3793 = load i64, i64* %_3763
  %_3794 = icmp slt i64 %_3792, %_3793
  br i1 %_3794, label %_3795, label %_3796
_3795:
  %_3798 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3799 = load i64, i64* %_3767
  %_3800 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3798, i32 0, i32 1, i64 %_3799
  %_3801 = load i64, i64* %_3800
  %_3802 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3803 = load i64, i64* %_3771
  %_3804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3802, i32 0, i32 1, i64 %_3803
  %_3805 = load i64, i64* %_3804
  %_3806 = icmp sgt i64 %_3801, %_3805
  br i1 %_3806, label %_3807, label %_3808
_3807:
  %_3810 = load i64, i64* %_3767
  store i64 %_3810, i64* %_3771
  br label %_3809
_3808:
  br label %_3809
_3809:
  br label %_3797
_3796:
  br label %_3797
_3797:
  %_3811 = load i64, i64* %_3771
  %_3812 = load i64, i64* %_3762
  %_3813 = icmp ne i64 %_3811, %_3812
  br i1 %_3813, label %_3814, label %_3815
_3814:
  %_3817 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3818 = load i64, i64* %_3762
  %_3819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3817, i32 0, i32 1, i64 %_3818
  %_3820 = load i64, i64* %_3819
  store i64 %_3820, i64* %_3770
  %_3821 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3822 = load i64, i64* %_3771
  %_3823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3821, i32 0, i32 1, i64 %_3822
  %_3824 = load i64, i64* %_3823
  %_3826 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3827 = load i64, i64* %_3762
  %_3825 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3826, i32 0, i32 1, i64 %_3827
  store i64 %_3824, i64* %_3825
  %_3828 = load i64, i64* %_3770
  %_3830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3831 = load i64, i64* %_3771
  %_3829 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3830, i32 0, i32 1, i64 %_3831
  store i64 %_3828, i64* %_3829
  %_3833 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3761
  %_3834 = load i64, i64* %_3771
  %_3835 = load i64, i64* %_3763
  call void @min_heapify({ i64, [0 x i64] }* %_3833, i64 %_3834, i64 %_3835)
  br label %_3816
_3815:
  br label %_3816
_3816:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_3746 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_3746
  %_3747 = alloca i64
  store i64 %len, i64* %_3747
  %_3748 = alloca i64
  %_3749 = load i64, i64* %_3747
  store i64 %_3749, i64* %_3748
  br label %_3752
_3752:
  %_3750 = load i64, i64* %_3748
  %_3751 = icmp sge i64 %_3750, 1
  br i1 %_3751, label %_3753, label %_3754
_3753:
  %_3756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3746
  %_3757 = load i64, i64* %_3748
  %_3758 = load i64, i64* %_3747
  call void @min_heapify({ i64, [0 x i64] }* %_3756, i64 %_3757, i64 %_3758)
  %_3759 = load i64, i64* %_3748
  %_3760 = sub i64 %_3759, 1
  store i64 %_3760, i64* %_3748
  br label %_3752
_3754:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3692 = alloca i64
  store i64 %argc, i64* %_3692
  %_3693 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3693
  %_3694 = alloca { i64, [0 x i64] }*
  %_3708 = alloca { i64, [0 x i64] }*
  %_3724 = alloca i64
  %_3725 = alloca i64
  %_raw_array3695 = call i64* @oat_alloc_array(i64 11)
  %_array3696 = bitcast i64* %_raw_array3695 to { i64, [0 x i64] }*
  %_3707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 10
  store i64 5, i64* %_3707
  %_3706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 9
  store i64 4, i64* %_3706
  %_3705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 8
  store i64 6, i64* %_3705
  %_3704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 7
  store i64 3, i64* %_3704
  %_3703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 6
  store i64 7, i64* %_3703
  %_3702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 5
  store i64 10, i64* %_3702
  %_3701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 4
  store i64 8, i64* %_3701
  %_3700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 3
  store i64 2, i64* %_3700
  %_3699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 2
  store i64 1, i64* %_3699
  %_3698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 1
  store i64 9, i64* %_3698
  %_3697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3696, i32 0, i32 1, i32 0
  store i64 0, i64* %_3697
  store { i64, [0 x i64] }* %_array3696, { i64, [0 x i64] }** %_3694
  %_raw_array3709 = call i64* @oat_alloc_array(i64 11)
  %_array3710 = bitcast i64* %_raw_array3709 to { i64, [0 x i64] }*
  %_3721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 10
  store i64 10, i64* %_3721
  %_3720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 9
  store i64 9, i64* %_3720
  %_3719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 8
  store i64 6, i64* %_3719
  %_3718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 7
  store i64 3, i64* %_3718
  %_3717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 6
  store i64 7, i64* %_3717
  %_3716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 5
  store i64 5, i64* %_3716
  %_3715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 4
  store i64 8, i64* %_3715
  %_3714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 3
  store i64 2, i64* %_3714
  %_3713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 2
  store i64 4, i64* %_3713
  %_3712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 1
  store i64 1, i64* %_3712
  %_3711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3710, i32 0, i32 1, i32 0
  store i64 0, i64* %_3711
  store { i64, [0 x i64] }* %_array3710, { i64, [0 x i64] }** %_3708
  %_3723 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3694
  call void @make_min_heap({ i64, [0 x i64] }* %_3723, i64 10)
  store i64 0, i64* %_3724
  store i64 0, i64* %_3725
  br label %_3728
_3728:
  %_3726 = load i64, i64* %_3725
  %_3727 = icmp slt i64 %_3726, 11
  br i1 %_3727, label %_3729, label %_3730
_3729:
  %_3731 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3694
  %_3732 = load i64, i64* %_3725
  %_3733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3731, i32 0, i32 1, i64 %_3732
  %_3734 = load i64, i64* %_3733
  %_3735 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3708
  %_3736 = load i64, i64* %_3725
  %_3737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3735, i32 0, i32 1, i64 %_3736
  %_3738 = load i64, i64* %_3737
  %_3739 = icmp ne i64 %_3734, %_3738
  br i1 %_3739, label %_3740, label %_3741
_3740:
  store i64 1, i64* %_3724
  br label %_3742
_3741:
  br label %_3742
_3742:
  %_3743 = load i64, i64* %_3725
  %_3744 = add i64 %_3743, 1
  store i64 %_3744, i64* %_3725
  br label %_3728
_3730:
  %_3745 = load i64, i64* %_3724
  ret i64 %_3745
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
