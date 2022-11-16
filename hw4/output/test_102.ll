; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_3697 = alloca i64
  store i64 %a, i64* %_3697
  %_3698 = alloca i64
  store i64 %b, i64* %_3698
  %_3704 = alloca i64
  br label %_3701
_3701:
  %_3699 = load i64, i64* %_3698
  %_3700 = icmp ne i64 %_3699, 0
  br i1 %_3700, label %_3702, label %_3703
_3702:
  %_3705 = load i64, i64* %_3698
  store i64 %_3705, i64* %_3704
  %_3707 = load i64, i64* %_3697
  %_3708 = load i64, i64* %_3698
  %_3706 = call i64 @mod(i64 %_3707, i64 %_3708)
  store i64 %_3706, i64* %_3698
  %_3709 = load i64, i64* %_3704
  store i64 %_3709, i64* %_3697
  br label %_3701
_3703:
  %_3710 = load i64, i64* %_3697
  ret i64 %_3710
}

define i64 @mod(i64 %a, i64 %b) {
  %_3682 = alloca i64
  store i64 %a, i64* %_3682
  %_3683 = alloca i64
  store i64 %b, i64* %_3683
  %_3684 = alloca i64
  %_3685 = load i64, i64* %_3682
  store i64 %_3685, i64* %_3684
  br label %_3690
_3690:
  %_3686 = load i64, i64* %_3684
  %_3687 = load i64, i64* %_3683
  %_3688 = sub i64 %_3686, %_3687
  %_3689 = icmp sge i64 %_3688, 0
  br i1 %_3689, label %_3691, label %_3692
_3691:
  %_3693 = load i64, i64* %_3684
  %_3694 = load i64, i64* %_3683
  %_3695 = sub i64 %_3693, %_3694
  store i64 %_3695, i64* %_3684
  br label %_3690
_3692:
  %_3696 = load i64, i64* %_3684
  ret i64 %_3696
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3675 = alloca i64
  store i64 %argc, i64* %_3675
  %_3676 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3676
  %_3677 = alloca i64
  %_3678 = alloca i64
  store i64 64, i64* %_3677
  store i64 48, i64* %_3678
  %_3680 = load i64, i64* %_3677
  %_3681 = load i64, i64* %_3678
  %_3679 = call i64 @gcd(i64 %_3680, i64 %_3681)
  ret i64 %_3679
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
