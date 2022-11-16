; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_3876 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_3876
  %_3877 = alloca i64
  store i64 %i, i64* %_3877
  %_3878 = alloca i64
  store i64 %j, i64* %_3878
  %_3879 = alloca i64
  store i64 %count, i64* %_3879
  %_3880 = load i64, i64* %_3877
  %_3881 = icmp sge i64 %_3880, 0
  %_3882 = load i64, i64* %_3878
  %_3883 = icmp sge i64 %_3882, 0
  %_3884 = and i1 %_3881, %_3883
  %_3885 = load i64, i64* %_3877
  %_3886 = load i64, i64* @len
  %_3887 = icmp slt i64 %_3885, %_3886
  %_3888 = and i1 %_3884, %_3887
  %_3889 = load i64, i64* %_3878
  %_3890 = load i64, i64* @len
  %_3891 = icmp slt i64 %_3889, %_3890
  %_3892 = and i1 %_3888, %_3891
  br i1 %_3892, label %_3893, label %_3894
_3893:
  %_3896 = load i64, i64* %_3879
  %_3897 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3876
  %_3898 = load i64, i64* %_3877
  %_3899 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3897, i32 0, i32 1, i64 %_3898
  %_3900 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3899
  %_3901 = load i64, i64* %_3878
  %_3902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3900, i32 0, i32 1, i64 %_3901
  %_3903 = load i64, i64* %_3902
  %_3904 = add i64 %_3896, %_3903
  ret i64 %_3904
_3894:
  %_3905 = load i64, i64* %_3879
  ret i64 %_3905
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_3792 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_3792
  %_3793 = alloca i64
  store i64 %i, i64* %_3793
  %_3794 = alloca i64
  store i64 %j, i64* %_3794
  %_3795 = alloca i64
  %_3803 = alloca i64
  %_3796 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3792
  %_3797 = load i64, i64* %_3793
  %_3798 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3796, i32 0, i32 1, i64 %_3797
  %_3799 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3798
  %_3800 = load i64, i64* %_3794
  %_3801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3799, i32 0, i32 1, i64 %_3800
  %_3802 = load i64, i64* %_3801
  store i64 %_3802, i64* %_3795
  store i64 0, i64* %_3803
  %_3805 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3792
  %_3806 = load i64, i64* %_3793
  %_3807 = sub i64 %_3806, 1
  %_3808 = load i64, i64* %_3794
  %_3809 = sub i64 %_3808, 1
  %_3810 = load i64, i64* %_3803
  %_3804 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_3805, i64 %_3807, i64 %_3809, i64 %_3810)
  store i64 %_3804, i64* %_3803
  %_3812 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3792
  %_3813 = load i64, i64* %_3793
  %_3814 = sub i64 %_3813, 1
  %_3815 = load i64, i64* %_3794
  %_3816 = load i64, i64* %_3803
  %_3811 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_3812, i64 %_3814, i64 %_3815, i64 %_3816)
  store i64 %_3811, i64* %_3803
  %_3818 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3792
  %_3819 = load i64, i64* %_3793
  %_3820 = sub i64 %_3819, 1
  %_3821 = load i64, i64* %_3794
  %_3822 = add i64 %_3821, 1
  %_3823 = load i64, i64* %_3803
  %_3817 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_3818, i64 %_3820, i64 %_3822, i64 %_3823)
  store i64 %_3817, i64* %_3803
  %_3825 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3792
  %_3826 = load i64, i64* %_3793
  %_3827 = load i64, i64* %_3794
  %_3828 = sub i64 %_3827, 1
  %_3829 = load i64, i64* %_3803
  %_3824 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_3825, i64 %_3826, i64 %_3828, i64 %_3829)
  store i64 %_3824, i64* %_3803
  %_3831 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3792
  %_3832 = load i64, i64* %_3793
  %_3833 = load i64, i64* %_3794
  %_3834 = add i64 %_3833, 1
  %_3835 = load i64, i64* %_3803
  %_3830 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_3831, i64 %_3832, i64 %_3834, i64 %_3835)
  store i64 %_3830, i64* %_3803
  %_3837 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3792
  %_3838 = load i64, i64* %_3793
  %_3839 = add i64 %_3838, 1
  %_3840 = load i64, i64* %_3794
  %_3841 = sub i64 %_3840, 1
  %_3842 = load i64, i64* %_3803
  %_3836 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_3837, i64 %_3839, i64 %_3841, i64 %_3842)
  store i64 %_3836, i64* %_3803
  %_3844 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3792
  %_3845 = load i64, i64* %_3793
  %_3846 = add i64 %_3845, 1
  %_3847 = load i64, i64* %_3794
  %_3848 = load i64, i64* %_3803
  %_3843 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_3844, i64 %_3846, i64 %_3847, i64 %_3848)
  store i64 %_3843, i64* %_3803
  %_3850 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3792
  %_3851 = load i64, i64* %_3793
  %_3852 = add i64 %_3851, 1
  %_3853 = load i64, i64* %_3794
  %_3854 = add i64 %_3853, 1
  %_3855 = load i64, i64* %_3803
  %_3849 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_3850, i64 %_3852, i64 %_3854, i64 %_3855)
  store i64 %_3849, i64* %_3803
  %_3856 = load i64, i64* %_3795
  %_3857 = icmp eq i64 %_3856, 1
  br i1 %_3857, label %_3858, label %_3859
_3858:
  %_3861 = load i64, i64* %_3803
  %_3862 = icmp slt i64 %_3861, 2
  br i1 %_3862, label %_3863, label %_3864
_3863:
  ret i64 0
_3864:
  %_3866 = load i64, i64* %_3803
  %_3867 = icmp slt i64 %_3866, 4
  br i1 %_3867, label %_3868, label %_3869
_3868:
  ret i64 1
_3869:
  br label %_3870
_3870:
  br label %_3865
_3865:
  ret i64 0
_3859:
  br label %_3860
_3860:
  %_3871 = load i64, i64* %_3803
  %_3872 = icmp eq i64 %_3871, 3
  br i1 %_3872, label %_3873, label %_3874
_3873:
  ret i64 1
_3874:
  ret i64 0
_3875:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3711 = alloca i64
  store i64 %argc, i64* %_3711
  %_3712 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3712
  %_3713 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3724 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3735 = alloca i64
  %_3746 = alloca i64
  %_3766 = alloca i64
  %_3773 = alloca i64
  %_raw_array3714 = call i64* @oat_alloc_array(i64 4)
  %_array3715 = bitcast i64* %_raw_array3714 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3722 = call i64* @oat_alloc_array(i64 4)
  %_array3723 = bitcast i64* %_raw_array3722 to { i64, [0 x i64] }*
  %_raw_array3720 = call i64* @oat_alloc_array(i64 4)
  %_array3721 = bitcast i64* %_raw_array3720 to { i64, [0 x i64] }*
  %_raw_array3718 = call i64* @oat_alloc_array(i64 4)
  %_array3719 = bitcast i64* %_raw_array3718 to { i64, [0 x i64] }*
  %_raw_array3716 = call i64* @oat_alloc_array(i64 4)
  %_array3717 = bitcast i64* %_raw_array3716 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3715, { i64, [0 x { i64, [0 x i64] }*] }** %_3713
  %_raw_array3725 = call i64* @oat_alloc_array(i64 4)
  %_array3726 = bitcast i64* %_raw_array3725 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3733 = call i64* @oat_alloc_array(i64 4)
  %_array3734 = bitcast i64* %_raw_array3733 to { i64, [0 x i64] }*
  %_raw_array3731 = call i64* @oat_alloc_array(i64 4)
  %_array3732 = bitcast i64* %_raw_array3731 to { i64, [0 x i64] }*
  %_raw_array3729 = call i64* @oat_alloc_array(i64 4)
  %_array3730 = bitcast i64* %_raw_array3729 to { i64, [0 x i64] }*
  %_raw_array3727 = call i64* @oat_alloc_array(i64 4)
  %_array3728 = bitcast i64* %_raw_array3727 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3726, { i64, [0 x { i64, [0 x i64] }*] }** %_3724
  store i64 0, i64* %_3735
  br label %_3738
_3738:
  %_3736 = load i64, i64* %_3735
  %_3737 = icmp slt i64 %_3736, 4
  br i1 %_3737, label %_3739, label %_3740
_3739:
  %_raw_array3741 = call i64* @oat_alloc_array(i64 4)
  %_array3742 = bitcast i64* %_raw_array3741 to { i64, [0 x i64] }*
  %_3744 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3724
  %_3745 = load i64, i64* %_3735
  %_3743 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3744, i32 0, i32 1, i64 %_3745
  store { i64, [0 x i64] }* %_array3742, { i64, [0 x i64] }** %_3743
  store i64 0, i64* %_3746
  br label %_3749
_3749:
  %_3747 = load i64, i64* %_3746
  %_3748 = icmp slt i64 %_3747, 4
  br i1 %_3748, label %_3750, label %_3751
_3750:
  %_3753 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3713
  %_3754 = load i64, i64* %_3735
  %_3755 = load i64, i64* %_3746
  %_3752 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_3753, i64 %_3754, i64 %_3755)
  %_3757 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3724
  %_3758 = load i64, i64* %_3735
  %_3759 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3757, i32 0, i32 1, i64 %_3758
  %_3760 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3759
  %_3761 = load i64, i64* %_3746
  %_3756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3760, i32 0, i32 1, i64 %_3761
  store i64 %_3752, i64* %_3756
  %_3762 = load i64, i64* %_3746
  %_3763 = add i64 %_3762, 1
  store i64 %_3763, i64* %_3746
  br label %_3749
_3751:
  %_3764 = load i64, i64* %_3735
  %_3765 = add i64 %_3764, 1
  store i64 %_3765, i64* %_3735
  br label %_3738
_3740:
  store i64 0, i64* %_3766
  br label %_3770
_3770:
  %_3767 = load i64, i64* %_3766
  %_3768 = load i64, i64* @len
  %_3769 = icmp slt i64 %_3767, %_3768
  br i1 %_3769, label %_3771, label %_3772
_3771:
  store i64 0, i64* %_3773
  br label %_3777
_3777:
  %_3774 = load i64, i64* %_3773
  %_3775 = load i64, i64* @len
  %_3776 = icmp slt i64 %_3774, %_3775
  br i1 %_3776, label %_3778, label %_3779
_3778:
  %_3781 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3724
  %_3782 = load i64, i64* %_3766
  %_3783 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3781, i32 0, i32 1, i64 %_3782
  %_3784 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3783
  %_3785 = load i64, i64* %_3773
  %_3786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3784, i32 0, i32 1, i64 %_3785
  %_3787 = load i64, i64* %_3786
  call void @print_int(i64 %_3787)
  %_3788 = load i64, i64* %_3773
  %_3789 = add i64 %_3788, 1
  store i64 %_3789, i64* %_3773
  br label %_3777
_3779:
  %_3790 = load i64, i64* %_3766
  %_3791 = add i64 %_3790, 1
  store i64 %_3791, i64* %_3766
  br label %_3770
_3772:
  ret i64 0
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
