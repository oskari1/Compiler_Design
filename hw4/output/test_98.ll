; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_3843 = alloca i64
  store i64 %x, i64* %_3843
  %_3844 = alloca i64
  store i64 %y, i64* %_3844
  %_3845 = load i64, i64* %_3843
  %_3846 = load i64, i64* %_3844
  %_3847 = icmp eq i64 %_3845, %_3846
  br i1 %_3847, label %_3848, label %_3849
_3848:
  %_3851 = load i64, i64* %_3843
  ret i64 %_3851
_3849:
  br label %_3850
_3850:
  %_3852 = load i64, i64* %_3843
  %_3853 = icmp eq i64 %_3852, 0
  br i1 %_3853, label %_3854, label %_3855
_3854:
  %_3857 = load i64, i64* %_3844
  ret i64 %_3857
_3855:
  br label %_3856
_3856:
  %_3858 = load i64, i64* %_3844
  %_3859 = icmp eq i64 %_3858, 0
  br i1 %_3859, label %_3860, label %_3861
_3860:
  %_3863 = load i64, i64* %_3843
  ret i64 %_3863
_3861:
  br label %_3862
_3862:
  %_3864 = load i64, i64* %_3843
  %_3865 = xor i64 -1, %_3864
  %_3866 = and i64 %_3865, 1
  %_3867 = icmp eq i64 %_3866, 1
  br i1 %_3867, label %_3868, label %_3869
_3868:
  %_3871 = load i64, i64* %_3844
  %_3872 = and i64 %_3871, 1
  %_3873 = icmp eq i64 %_3872, 1
  br i1 %_3873, label %_3874, label %_3875
_3874:
  %_3878 = load i64, i64* %_3843
  %_3879 = lshr i64 %_3878, 1
  %_3880 = load i64, i64* %_3844
  %_3877 = call i64 @binary_gcd(i64 %_3879, i64 %_3880)
  ret i64 %_3877
_3875:
  %_3882 = load i64, i64* %_3843
  %_3883 = lshr i64 %_3882, 1
  %_3884 = load i64, i64* %_3844
  %_3885 = lshr i64 %_3884, 1
  %_3881 = call i64 @binary_gcd(i64 %_3883, i64 %_3885)
  %_3886 = shl i64 %_3881, 1
  ret i64 %_3886
_3869:
  br label %_3870
_3870:
  %_3887 = load i64, i64* %_3844
  %_3888 = xor i64 -1, %_3887
  %_3889 = and i64 %_3888, 1
  %_3890 = icmp eq i64 %_3889, 1
  br i1 %_3890, label %_3891, label %_3892
_3891:
  %_3895 = load i64, i64* %_3843
  %_3896 = load i64, i64* %_3844
  %_3897 = lshr i64 %_3896, 1
  %_3894 = call i64 @binary_gcd(i64 %_3895, i64 %_3897)
  ret i64 %_3894
_3892:
  br label %_3893
_3893:
  %_3898 = load i64, i64* %_3843
  %_3899 = load i64, i64* %_3844
  %_3900 = icmp sgt i64 %_3898, %_3899
  br i1 %_3900, label %_3901, label %_3902
_3901:
  %_3905 = load i64, i64* %_3843
  %_3906 = load i64, i64* %_3844
  %_3907 = sub i64 %_3905, %_3906
  %_3908 = lshr i64 %_3907, 1
  %_3909 = load i64, i64* %_3844
  %_3904 = call i64 @binary_gcd(i64 %_3908, i64 %_3909)
  ret i64 %_3904
_3902:
  br label %_3903
_3903:
  %_3911 = load i64, i64* %_3844
  %_3912 = load i64, i64* %_3843
  %_3913 = sub i64 %_3911, %_3912
  %_3914 = lshr i64 %_3913, 1
  %_3915 = load i64, i64* %_3843
  %_3910 = call i64 @binary_gcd(i64 %_3914, i64 %_3915)
  ret i64 %_3910
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3836 = alloca i64
  store i64 %argc, i64* %_3836
  %_3837 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3837
  %_3838 = alloca i64
  %_3839 = alloca i64
  store i64 21, i64* %_3838
  store i64 15, i64* %_3839
  %_3841 = load i64, i64* %_3838
  %_3842 = load i64, i64* %_3839
  %_3840 = call i64 @binary_gcd(i64 %_3841, i64 %_3842)
  ret i64 %_3840
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
