; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_3674 to { i64, [0 x i64] }*)
@_3674 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_3673 to { i64, [0 x i64] }*)
@_3673 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_3647 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_3647
  %_3648 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_3648
  %_3649 = alloca i64
  store i64 %len, i64* %_3649
  %_3650 = alloca i64
  %_3651 = alloca i64
  store i64 0, i64* %_3650
  store i64 0, i64* %_3651
  br label %_3655
_3655:
  %_3652 = load i64, i64* %_3651
  %_3653 = load i64, i64* %_3649
  %_3654 = icmp slt i64 %_3652, %_3653
  br i1 %_3654, label %_3656, label %_3657
_3656:
  %_3658 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3647
  %_3659 = load i64, i64* %_3651
  %_3660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3658, i32 0, i32 1, i64 %_3659
  %_3661 = load i64, i64* %_3660
  %_3662 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3648
  %_3663 = load i64, i64* %_3651
  %_3664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3662, i32 0, i32 1, i64 %_3663
  %_3665 = load i64, i64* %_3664
  %_3666 = icmp ne i64 %_3661, %_3665
  br i1 %_3666, label %_3667, label %_3668
_3667:
  store i64 1, i64* %_3650
  br label %_3669
_3668:
  br label %_3669
_3669:
  %_3670 = load i64, i64* %_3651
  %_3671 = add i64 %_3670, 1
  store i64 %_3671, i64* %_3651
  br label %_3655
_3657:
  %_3672 = load i64, i64* %_3650
  ret i64 %_3672
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3636 = alloca i64
  store i64 %argc, i64* %_3636
  %_3637 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3637
  %_3638 = alloca i64
  store i64 1, i64* %_3638
  %_3640 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_3641 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_3639 = call i64 @arrcheck({ i64, [0 x i64] }* %_3640, { i64, [0 x i64] }* %_3641, i64 4)
  %_3642 = icmp eq i64 %_3639, 1
  br i1 %_3642, label %_3643, label %_3644
_3643:
  store i64 0, i64* %_3638
  br label %_3645
_3644:
  br label %_3645
_3645:
  %_3646 = load i64, i64* %_3638
  ret i64 %_3646
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
