; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_3966 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_3966
  %_3967 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3966
  %_3968 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3967, i32 0, i32 1, i32 1
  %_3969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3968
  %_3970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3969, i32 0, i32 1, i32 1
  %_3971 = load i64, i64* %_3970
  ret i64 %_3971
}

define i64 @g(i64 %x) {
  %_3930 = alloca i64
  store i64 %x, i64* %_3930
  %_3931 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3932 = call i64* @oat_alloc_array(i64 3)
  %_array3933 = bitcast i64* %_raw_array3932 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3952 = call i64* @oat_alloc_array(i64 3)
  %_array3953 = bitcast i64* %_raw_array3952 to { i64, [0 x i64] }*
  %_3958 = load i64, i64* %_3930
  %_3959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3953, i32 0, i32 1, i32 2
  store i64 %_3958, i64* %_3959
  %_3956 = load i64, i64* %_3930
  %_3957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3953, i32 0, i32 1, i32 1
  store i64 %_3956, i64* %_3957
  %_3954 = load i64, i64* %_3930
  %_3955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3953, i32 0, i32 1, i32 0
  store i64 %_3954, i64* %_3955
  %_3960 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3933, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3953, { i64, [0 x i64] }** %_3960
  %_raw_array3943 = call i64* @oat_alloc_array(i64 3)
  %_array3944 = bitcast i64* %_raw_array3943 to { i64, [0 x i64] }*
  %_3949 = load i64, i64* %_3930
  %_3950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3944, i32 0, i32 1, i32 2
  store i64 %_3949, i64* %_3950
  %_3947 = load i64, i64* %_3930
  %_3948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3944, i32 0, i32 1, i32 1
  store i64 %_3947, i64* %_3948
  %_3945 = load i64, i64* %_3930
  %_3946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3944, i32 0, i32 1, i32 0
  store i64 %_3945, i64* %_3946
  %_3951 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3933, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3944, { i64, [0 x i64] }** %_3951
  %_raw_array3934 = call i64* @oat_alloc_array(i64 3)
  %_array3935 = bitcast i64* %_raw_array3934 to { i64, [0 x i64] }*
  %_3940 = load i64, i64* %_3930
  %_3941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3935, i32 0, i32 1, i32 2
  store i64 %_3940, i64* %_3941
  %_3938 = load i64, i64* %_3930
  %_3939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3935, i32 0, i32 1, i32 1
  store i64 %_3938, i64* %_3939
  %_3936 = load i64, i64* %_3930
  %_3937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3935, i32 0, i32 1, i32 0
  store i64 %_3936, i64* %_3937
  %_3942 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3933, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3935, { i64, [0 x i64] }** %_3942
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3933, { i64, [0 x { i64, [0 x i64] }*] }** %_3931
  %_3961 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3931
  %_3962 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3961, i32 0, i32 1, i32 1
  %_3963 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3962
  %_3964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3963, i32 0, i32 1, i32 1
  %_3965 = load i64, i64* %_3964
  ret i64 %_3965
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3806 = alloca i64
  store i64 %argc, i64* %_3806
  %_3807 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3807
  %_3808 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3829 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3884 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3809 = call i64* @oat_alloc_array(i64 3)
  %_array3810 = bitcast i64* %_raw_array3809 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3823 = call i64* @oat_alloc_array(i64 3)
  %_array3824 = bitcast i64* %_raw_array3823 to { i64, [0 x i64] }*
  %_3827 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3824, i32 0, i32 1, i32 2
  store i64 2, i64* %_3827
  %_3826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3824, i32 0, i32 1, i32 1
  store i64 1, i64* %_3826
  %_3825 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3824, i32 0, i32 1, i32 0
  store i64 0, i64* %_3825
  %_3828 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3810, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3824, { i64, [0 x i64] }** %_3828
  %_raw_array3817 = call i64* @oat_alloc_array(i64 3)
  %_array3818 = bitcast i64* %_raw_array3817 to { i64, [0 x i64] }*
  %_3821 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3818, i32 0, i32 1, i32 2
  store i64 2, i64* %_3821
  %_3820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3818, i32 0, i32 1, i32 1
  store i64 1, i64* %_3820
  %_3819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3818, i32 0, i32 1, i32 0
  store i64 0, i64* %_3819
  %_3822 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3810, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3818, { i64, [0 x i64] }** %_3822
  %_raw_array3811 = call i64* @oat_alloc_array(i64 3)
  %_array3812 = bitcast i64* %_raw_array3811 to { i64, [0 x i64] }*
  %_3815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3812, i32 0, i32 1, i32 2
  store i64 2, i64* %_3815
  %_3814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3812, i32 0, i32 1, i32 1
  store i64 1, i64* %_3814
  %_3813 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3812, i32 0, i32 1, i32 0
  store i64 0, i64* %_3813
  %_3816 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3810, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3812, { i64, [0 x i64] }** %_3816
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3810, { i64, [0 x { i64, [0 x i64] }*] }** %_3808
  %_raw_array3830 = call i64* @oat_alloc_array(i64 4)
  %_array3831 = bitcast i64* %_raw_array3830 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3871 = call i64* @oat_alloc_array(i64 5)
  %_array3872 = bitcast i64* %_raw_array3871 to { i64, [0 x i64] }*
  %_3881 = mul i64 3, 4
  %_3882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3872, i32 0, i32 1, i32 4
  store i64 %_3881, i64* %_3882
  %_3879 = mul i64 3, 3
  %_3880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3872, i32 0, i32 1, i32 3
  store i64 %_3879, i64* %_3880
  %_3877 = mul i64 3, 2
  %_3878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3872, i32 0, i32 1, i32 2
  store i64 %_3877, i64* %_3878
  %_3875 = mul i64 3, 1
  %_3876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3872, i32 0, i32 1, i32 1
  store i64 %_3875, i64* %_3876
  %_3873 = mul i64 3, 0
  %_3874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3872, i32 0, i32 1, i32 0
  store i64 %_3873, i64* %_3874
  %_3883 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3831, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array3872, { i64, [0 x i64] }** %_3883
  %_raw_array3858 = call i64* @oat_alloc_array(i64 5)
  %_array3859 = bitcast i64* %_raw_array3858 to { i64, [0 x i64] }*
  %_3868 = mul i64 2, 4
  %_3869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3859, i32 0, i32 1, i32 4
  store i64 %_3868, i64* %_3869
  %_3866 = mul i64 2, 3
  %_3867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3859, i32 0, i32 1, i32 3
  store i64 %_3866, i64* %_3867
  %_3864 = mul i64 2, 2
  %_3865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3859, i32 0, i32 1, i32 2
  store i64 %_3864, i64* %_3865
  %_3862 = mul i64 2, 1
  %_3863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3859, i32 0, i32 1, i32 1
  store i64 %_3862, i64* %_3863
  %_3860 = mul i64 2, 0
  %_3861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3859, i32 0, i32 1, i32 0
  store i64 %_3860, i64* %_3861
  %_3870 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3831, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3859, { i64, [0 x i64] }** %_3870
  %_raw_array3845 = call i64* @oat_alloc_array(i64 5)
  %_array3846 = bitcast i64* %_raw_array3845 to { i64, [0 x i64] }*
  %_3855 = mul i64 1, 4
  %_3856 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3846, i32 0, i32 1, i32 4
  store i64 %_3855, i64* %_3856
  %_3853 = mul i64 1, 3
  %_3854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3846, i32 0, i32 1, i32 3
  store i64 %_3853, i64* %_3854
  %_3851 = mul i64 1, 2
  %_3852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3846, i32 0, i32 1, i32 2
  store i64 %_3851, i64* %_3852
  %_3849 = mul i64 1, 1
  %_3850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3846, i32 0, i32 1, i32 1
  store i64 %_3849, i64* %_3850
  %_3847 = mul i64 1, 0
  %_3848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3846, i32 0, i32 1, i32 0
  store i64 %_3847, i64* %_3848
  %_3857 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3831, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3846, { i64, [0 x i64] }** %_3857
  %_raw_array3832 = call i64* @oat_alloc_array(i64 5)
  %_array3833 = bitcast i64* %_raw_array3832 to { i64, [0 x i64] }*
  %_3842 = mul i64 0, 4
  %_3843 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3833, i32 0, i32 1, i32 4
  store i64 %_3842, i64* %_3843
  %_3840 = mul i64 0, 3
  %_3841 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3833, i32 0, i32 1, i32 3
  store i64 %_3840, i64* %_3841
  %_3838 = mul i64 0, 2
  %_3839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3833, i32 0, i32 1, i32 2
  store i64 %_3838, i64* %_3839
  %_3836 = mul i64 0, 1
  %_3837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3833, i32 0, i32 1, i32 1
  store i64 %_3836, i64* %_3837
  %_3834 = mul i64 0, 0
  %_3835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3833, i32 0, i32 1, i32 0
  store i64 %_3834, i64* %_3835
  %_3844 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3831, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3833, { i64, [0 x i64] }** %_3844
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3831, { i64, [0 x { i64, [0 x i64] }*] }** %_3829
  %_raw_array3885 = call i64* @oat_alloc_array(i64 3)
  %_array3886 = bitcast i64* %_raw_array3885 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3905 = call i64* @oat_alloc_array(i64 3)
  %_array3906 = bitcast i64* %_raw_array3905 to { i64, [0 x i64] }*
  %_3911 = mul i64 2, 2
  %_3912 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3906, i32 0, i32 1, i32 2
  store i64 %_3911, i64* %_3912
  %_3909 = mul i64 2, 1
  %_3910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3906, i32 0, i32 1, i32 1
  store i64 %_3909, i64* %_3910
  %_3907 = mul i64 2, 0
  %_3908 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3906, i32 0, i32 1, i32 0
  store i64 %_3907, i64* %_3908
  %_3913 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3886, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3906, { i64, [0 x i64] }** %_3913
  %_raw_array3896 = call i64* @oat_alloc_array(i64 3)
  %_array3897 = bitcast i64* %_raw_array3896 to { i64, [0 x i64] }*
  %_3902 = mul i64 1, 2
  %_3903 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3897, i32 0, i32 1, i32 2
  store i64 %_3902, i64* %_3903
  %_3900 = mul i64 1, 1
  %_3901 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3897, i32 0, i32 1, i32 1
  store i64 %_3900, i64* %_3901
  %_3898 = mul i64 1, 0
  %_3899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3897, i32 0, i32 1, i32 0
  store i64 %_3898, i64* %_3899
  %_3904 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3886, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3897, { i64, [0 x i64] }** %_3904
  %_raw_array3887 = call i64* @oat_alloc_array(i64 3)
  %_array3888 = bitcast i64* %_raw_array3887 to { i64, [0 x i64] }*
  %_3893 = mul i64 0, 2
  %_3894 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3888, i32 0, i32 1, i32 2
  store i64 %_3893, i64* %_3894
  %_3891 = mul i64 0, 1
  %_3892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3888, i32 0, i32 1, i32 1
  store i64 %_3891, i64* %_3892
  %_3889 = mul i64 0, 0
  %_3890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3888, i32 0, i32 1, i32 0
  store i64 %_3889, i64* %_3890
  %_3895 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3886, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3888, { i64, [0 x i64] }** %_3895
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3886, { i64, [0 x { i64, [0 x i64] }*] }** %_3884
  %_3914 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3829
  %_3915 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3914, i32 0, i32 1, i32 3
  %_3916 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3915
  %_3917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3916, i32 0, i32 1, i32 4
  %_3918 = load i64, i64* %_3917
  %_3919 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3808
  %_3920 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3919, i32 0, i32 1, i32 1
  %_3921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3920
  %_3922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3921, i32 0, i32 1, i32 2
  %_3923 = load i64, i64* %_3922
  %_3924 = add i64 %_3918, %_3923
  %_3926 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3884
  %_3925 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_3926)
  %_3927 = add i64 %_3924, %_3925
  %_3928 = call i64 @g(i64 4)
  %_3929 = add i64 %_3927, %_3928
  ret i64 %_3929
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
