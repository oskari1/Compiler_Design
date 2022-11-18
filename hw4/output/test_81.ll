; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_3717 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_3717
  %_3718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3717
  %_3719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3718, i32 0, i32 1, i32 3
  %_3720 = load i64, i64* %_3719
  ret i64 %_3720
}

define { i64, [0 x i64] }* @g() {
  %_3709 = alloca { i64, [0 x i64] }*
  %_raw_array3710 = call i64* @oat_alloc_array(i64 4)
  %_array3711 = bitcast i64* %_raw_array3710 to { i64, [0 x i64] }*
  %_3715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 3
  store i64 99, i64* %_3715
  %_3714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 2
  store i64 99, i64* %_3714
  %_3713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 1
  store i64 1, i64* %_3713
  %_3712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 0
  store i64 99, i64* %_3712
  store { i64, [0 x i64] }* %_array3711, { i64, [0 x i64] }** %_3709
  %_3716 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3709
  ret { i64, [0 x i64] }* %_3716
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3640 = alloca i64
  store i64 %argc, i64* %_3640
  %_3641 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3641
  %_3642 = alloca { i64, [0 x i64] }*
  %_3648 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3669 = alloca i64
  %_3670 = alloca { i64, [0 x i64] }*
  %_3672 = alloca { i64, [0 x i64] }*
  %_raw_array3643 = call i64* @oat_alloc_array(i64 3)
  %_array3644 = bitcast i64* %_raw_array3643 to { i64, [0 x i64] }*
  %_3647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 2
  store i64 99, i64* %_3647
  %_3646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 1
  store i64 1, i64* %_3646
  %_3645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 0
  store i64 99, i64* %_3645
  store { i64, [0 x i64] }* %_array3644, { i64, [0 x i64] }** %_3642
  %_raw_array3649 = call i64* @oat_alloc_array(i64 3)
  %_array3650 = bitcast i64* %_raw_array3649 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3663 = call i64* @oat_alloc_array(i64 3)
  %_array3664 = bitcast i64* %_raw_array3663 to { i64, [0 x i64] }*
  %_3667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3664, i32 0, i32 1, i32 2
  store i64 99, i64* %_3667
  %_3666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3664, i32 0, i32 1, i32 1
  store i64 99, i64* %_3666
  %_3665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3664, i32 0, i32 1, i32 0
  store i64 99, i64* %_3665
  %_3668 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3650, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3664, { i64, [0 x i64] }** %_3668
  %_raw_array3657 = call i64* @oat_alloc_array(i64 3)
  %_array3658 = bitcast i64* %_raw_array3657 to { i64, [0 x i64] }*
  %_3661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3658, i32 0, i32 1, i32 2
  store i64 99, i64* %_3661
  %_3660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3658, i32 0, i32 1, i32 1
  store i64 1, i64* %_3660
  %_3659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3658, i32 0, i32 1, i32 0
  store i64 99, i64* %_3659
  %_3662 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3650, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3658, { i64, [0 x i64] }** %_3662
  %_raw_array3651 = call i64* @oat_alloc_array(i64 3)
  %_array3652 = bitcast i64* %_raw_array3651 to { i64, [0 x i64] }*
  %_3655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3652, i32 0, i32 1, i32 2
  store i64 99, i64* %_3655
  %_3654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3652, i32 0, i32 1, i32 1
  store i64 99, i64* %_3654
  %_3653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3652, i32 0, i32 1, i32 0
  store i64 99, i64* %_3653
  %_3656 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3650, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3652, { i64, [0 x i64] }** %_3656
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3650, { i64, [0 x { i64, [0 x i64] }*] }** %_3648
  store i64 1, i64* %_3669
  %_3671 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_3671, { i64, [0 x i64] }** %_3670
  %_raw_array3673 = call i64* @oat_alloc_array(i64 4)
  %_array3674 = bitcast i64* %_raw_array3673 to { i64, [0 x i64] }*
  %_3678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3674, i32 0, i32 1, i32 3
  store i64 1, i64* %_3678
  %_3677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3674, i32 0, i32 1, i32 2
  store i64 99, i64* %_3677
  %_3676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3674, i32 0, i32 1, i32 1
  store i64 99, i64* %_3676
  %_3675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3674, i32 0, i32 1, i32 0
  store i64 99, i64* %_3675
  store { i64, [0 x i64] }* %_array3674, { i64, [0 x i64] }** %_3672
  %_3679 = load i64, i64* %_3669
  %_3680 = load i64, i64* @i
  %_3681 = add i64 %_3679, %_3680
  store i64 %_3681, i64* %_3669
  %_3682 = load i64, i64* %_3669
  %_3683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3642
  %_3684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3683, i32 0, i32 1, i32 1
  %_3685 = load i64, i64* %_3684
  %_3686 = add i64 %_3682, %_3685
  store i64 %_3686, i64* %_3669
  %_3687 = load i64, i64* %_3669
  %_3688 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3648
  %_3689 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3688, i32 0, i32 1, i32 1
  %_3690 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3689
  %_3691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3690, i32 0, i32 1, i32 1
  %_3692 = load i64, i64* %_3691
  %_3693 = add i64 %_3687, %_3692
  store i64 %_3693, i64* %_3669
  %_3694 = load i64, i64* %_3669
  %_3695 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3672
  %_3696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3695, i32 0, i32 1, i32 3
  %_3697 = load i64, i64* %_3696
  %_3698 = add i64 %_3694, %_3697
  store i64 %_3698, i64* %_3669
  %_3699 = load i64, i64* %_3669
  %_3701 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3672
  %_3700 = call i64 @f({ i64, [0 x i64] }* %_3701)
  %_3702 = add i64 %_3699, %_3700
  store i64 %_3702, i64* %_3669
  %_3703 = load i64, i64* %_3669
  %_3704 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3670
  %_3705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3704, i32 0, i32 1, i32 1
  %_3706 = load i64, i64* %_3705
  %_3707 = add i64 %_3703, %_3706
  store i64 %_3707, i64* %_3669
  %_3708 = load i64, i64* %_3669
  ret i64 %_3708
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
