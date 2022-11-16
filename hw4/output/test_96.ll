; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_3674 = alloca i64
  store i64 %n, i64* %_3674
  %_3675 = load i64, i64* %_3674
  %_3676 = icmp eq i64 %_3675, 0
  br i1 %_3676, label %_3677, label %_3678
_3677:
  ret i64 0
_3678:
  br label %_3679
_3679:
  %_3680 = load i64, i64* %_3674
  %_3681 = icmp eq i64 %_3680, 1
  br i1 %_3681, label %_3682, label %_3683
_3682:
  ret i64 1
_3683:
  br label %_3684
_3684:
  %_3686 = load i64, i64* %_3674
  %_3687 = sub i64 %_3686, 1
  %_3685 = call i64 @fibR(i64 %_3687)
  %_3689 = load i64, i64* %_3674
  %_3690 = sub i64 %_3689, 2
  %_3688 = call i64 @fibR(i64 %_3690)
  %_3691 = add i64 %_3685, %_3688
  ret i64 %_3691
}

define i64 @fibI(i64 %n) {
  %_3642 = alloca i64
  store i64 %n, i64* %_3642
  %_3643 = alloca i64
  %_3644 = alloca i64
  %_3663 = alloca i64
  store i64 0, i64* %_3643
  store i64 1, i64* %_3644
  %_3645 = load i64, i64* %_3642
  %_3646 = icmp eq i64 %_3645, 0
  br i1 %_3646, label %_3647, label %_3648
_3647:
  %_3650 = load i64, i64* %_3643
  ret i64 %_3650
_3648:
  br label %_3649
_3649:
  %_3651 = load i64, i64* %_3642
  %_3652 = icmp eq i64 %_3651, 1
  br i1 %_3652, label %_3653, label %_3654
_3653:
  %_3656 = load i64, i64* %_3644
  ret i64 %_3656
_3654:
  br label %_3655
_3655:
  br label %_3660
_3660:
  %_3657 = load i64, i64* %_3642
  %_3658 = sub i64 %_3657, 2
  %_3659 = icmp sgt i64 %_3658, 0
  br i1 %_3659, label %_3661, label %_3662
_3661:
  %_3664 = load i64, i64* %_3644
  store i64 %_3664, i64* %_3663
  %_3665 = load i64, i64* %_3644
  %_3666 = load i64, i64* %_3643
  %_3667 = add i64 %_3665, %_3666
  store i64 %_3667, i64* %_3644
  %_3668 = load i64, i64* %_3663
  store i64 %_3668, i64* %_3643
  %_3669 = load i64, i64* %_3642
  %_3670 = sub i64 %_3669, 1
  store i64 %_3670, i64* %_3642
  br label %_3660
_3662:
  %_3671 = load i64, i64* %_3643
  %_3672 = load i64, i64* %_3644
  %_3673 = add i64 %_3671, %_3672
  ret i64 %_3673
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3630 = alloca i64
  store i64 %argc, i64* %_3630
  %_3631 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3631
  %_3632 = alloca i64
  store i64 1, i64* %_3632
  %_3633 = call i64 @fibR(i64 12)
  %_3634 = icmp eq i64 %_3633, 144
  %_3635 = call i64 @fibI(i64 12)
  %_3636 = icmp eq i64 %_3635, 144
  %_3637 = and i1 %_3634, %_3636
  br i1 %_3637, label %_3638, label %_3639
_3638:
  store i64 0, i64* %_3632
  br label %_3640
_3639:
  br label %_3640
_3640:
  %_3641 = load i64, i64* %_3632
  ret i64 %_3641
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
