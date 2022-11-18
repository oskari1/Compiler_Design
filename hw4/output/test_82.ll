; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_3802 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_3802
  %_3803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3802
  %_3804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3803, i32 0, i32 1, i32 1
  %_3805 = load i64, i64* %_3804
  ret i64 %_3805
}

define i64 @g(i64 %x) {
  %_3783 = alloca i64
  store i64 %x, i64* %_3783
  %_3784 = alloca { i64, [0 x i64] }*
  %_3787 = alloca i64
  %_raw_array3785 = call i64* @oat_alloc_array(i64 3)
  %_array3786 = bitcast i64* %_raw_array3785 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3786, { i64, [0 x i64] }** %_3784
  store i64 0, i64* %_3787
  br label %_3790
_3790:
  %_3788 = load i64, i64* %_3787
  %_3789 = icmp slt i64 %_3788, 3
  br i1 %_3789, label %_3791, label %_3792
_3791:
  %_3793 = load i64, i64* %_3783
  %_3795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3784
  %_3796 = load i64, i64* %_3787
  %_3794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3795, i32 0, i32 1, i64 %_3796
  store i64 %_3793, i64* %_3794
  %_3797 = load i64, i64* %_3787
  %_3798 = add i64 %_3797, 1
  store i64 %_3798, i64* %_3787
  br label %_3790
_3792:
  %_3799 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3784
  %_3800 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3799, i32 0, i32 1, i32 1
  %_3801 = load i64, i64* %_3800
  ret i64 %_3801
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3721 = alloca i64
  store i64 %argc, i64* %_3721
  %_3722 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3722
  %_3723 = alloca { i64, [0 x i64] }*
  %_3726 = alloca i64
  %_3738 = alloca { i64, [0 x i64] }*
  %_3741 = alloca i64
  %_3755 = alloca { i64, [0 x i64] }*
  %_3758 = alloca i64
  %_raw_array3724 = call i64* @oat_alloc_array(i64 3)
  %_array3725 = bitcast i64* %_raw_array3724 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3725, { i64, [0 x i64] }** %_3723
  store i64 0, i64* %_3726
  br label %_3729
_3729:
  %_3727 = load i64, i64* %_3726
  %_3728 = icmp slt i64 %_3727, 3
  br i1 %_3728, label %_3730, label %_3731
_3730:
  %_3732 = load i64, i64* %_3726
  %_3734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3723
  %_3735 = load i64, i64* %_3726
  %_3733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3734, i32 0, i32 1, i64 %_3735
  store i64 %_3732, i64* %_3733
  %_3736 = load i64, i64* %_3726
  %_3737 = add i64 %_3736, 1
  store i64 %_3737, i64* %_3726
  br label %_3729
_3731:
  %_raw_array3739 = call i64* @oat_alloc_array(i64 4)
  %_array3740 = bitcast i64* %_raw_array3739 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3740, { i64, [0 x i64] }** %_3738
  store i64 0, i64* %_3741
  br label %_3744
_3744:
  %_3742 = load i64, i64* %_3741
  %_3743 = icmp slt i64 %_3742, 4
  br i1 %_3743, label %_3745, label %_3746
_3745:
  %_3747 = load i64, i64* %_3741
  %_3748 = load i64, i64* %_3741
  %_3749 = mul i64 %_3747, %_3748
  %_3751 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3738
  %_3752 = load i64, i64* %_3741
  %_3750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3751, i32 0, i32 1, i64 %_3752
  store i64 %_3749, i64* %_3750
  %_3753 = load i64, i64* %_3741
  %_3754 = add i64 %_3753, 1
  store i64 %_3754, i64* %_3741
  br label %_3744
_3746:
  %_raw_array3756 = call i64* @oat_alloc_array(i64 3)
  %_array3757 = bitcast i64* %_raw_array3756 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3757, { i64, [0 x i64] }** %_3755
  store i64 0, i64* %_3758
  br label %_3761
_3761:
  %_3759 = load i64, i64* %_3758
  %_3760 = icmp slt i64 %_3759, 3
  br i1 %_3760, label %_3762, label %_3763
_3762:
  %_3764 = load i64, i64* %_3758
  %_3765 = mul i64 2, %_3764
  %_3767 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3755
  %_3768 = load i64, i64* %_3758
  %_3766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3767, i32 0, i32 1, i64 %_3768
  store i64 %_3765, i64* %_3766
  %_3769 = load i64, i64* %_3758
  %_3770 = add i64 %_3769, 1
  store i64 %_3770, i64* %_3758
  br label %_3761
_3763:
  %_3771 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3738
  %_3772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3771, i32 0, i32 1, i32 3
  %_3773 = load i64, i64* %_3772
  %_3774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3723
  %_3775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3774, i32 0, i32 1, i32 1
  %_3776 = load i64, i64* %_3775
  %_3777 = add i64 %_3773, %_3776
  %_3779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3755
  %_3778 = call i64 @f({ i64, [0 x i64] }* %_3779)
  %_3780 = add i64 %_3777, %_3778
  %_3781 = call i64 @g(i64 4)
  %_3782 = add i64 %_3780, %_3781
  ret i64 %_3782
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
