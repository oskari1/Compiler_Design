; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_742 = alloca i64
  store i64 %a, i64* %_742
  %_743 = alloca i64
  store i64 %b, i64* %_743
  %_749 = alloca i64
  br label %_746
_746:
  %_744 = load i64, i64* %_743
  %_745 = icmp ne i64 %_744, 0
  br i1 %_745, label %_747, label %_748
_747:
  %_750 = load i64, i64* %_743
  store i64 %_750, i64* %_749
  %_752 = load i64, i64* %_742
  %_753 = load i64, i64* %_743
  %_751 = call i64 @mod(i64 %_752, i64 %_753)
  store i64 %_751, i64* %_743
  %_754 = load i64, i64* %_749
  store i64 %_754, i64* %_742
  br label %_746
_748:
  %_755 = load i64, i64* %_742
  ret i64 %_755
}

define i64 @mod(i64 %a, i64 %b) {
  %_727 = alloca i64
  store i64 %a, i64* %_727
  %_728 = alloca i64
  store i64 %b, i64* %_728
  %_729 = alloca i64
  %_730 = load i64, i64* %_727
  store i64 %_730, i64* %_729
  br label %_735
_735:
  %_731 = load i64, i64* %_729
  %_732 = load i64, i64* %_728
  %_733 = sub i64 %_731, %_732
  %_734 = icmp sge i64 %_733, 0
  br i1 %_734, label %_736, label %_737
_736:
  %_738 = load i64, i64* %_729
  %_739 = load i64, i64* %_728
  %_740 = sub i64 %_738, %_739
  store i64 %_740, i64* %_729
  br label %_735
_737:
  %_741 = load i64, i64* %_729
  ret i64 %_741
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_720 = alloca i64
  store i64 %argc, i64* %_720
  %_721 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_721
  %_722 = alloca i64
  %_723 = alloca i64
  store i64 64, i64* %_722
  store i64 48, i64* %_723
  %_725 = load i64, i64* %_722
  %_726 = load i64, i64* %_723
  %_724 = call i64 @gcd(i64 %_725, i64 %_726)
  ret i64 %_724
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
