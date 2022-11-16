; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_800 = alloca i64
  store i64 %a, i64* %_800
  %_801 = alloca i64
  store i64 %b, i64* %_801
  %_807 = alloca i64
  br label %_804
_804:
  %_802 = load i64, i64* %_801
  %_803 = icmp ne i64 %_802, 0
  br i1 %_803, label %_805, label %_806
_805:
  %_808 = load i64, i64* %_801
  store i64 %_808, i64* %_807
  %_810 = load i64, i64* %_800
  %_811 = load i64, i64* %_801
  %_809 = call i64 @mod(i64 %_810, i64 %_811)
  store i64 %_809, i64* %_801
  %_812 = load i64, i64* %_807
  store i64 %_812, i64* %_800
  br label %_804
_806:
  %_813 = load i64, i64* %_800
  ret i64 %_813
}

define i64 @mod(i64 %a, i64 %b) {
  %_785 = alloca i64
  store i64 %a, i64* %_785
  %_786 = alloca i64
  store i64 %b, i64* %_786
  %_787 = alloca i64
  %_788 = load i64, i64* %_785
  store i64 %_788, i64* %_787
  br label %_793
_793:
  %_789 = load i64, i64* %_787
  %_790 = load i64, i64* %_786
  %_791 = sub i64 %_789, %_790
  %_792 = icmp sge i64 %_791, 0
  br i1 %_792, label %_794, label %_795
_794:
  %_796 = load i64, i64* %_787
  %_797 = load i64, i64* %_786
  %_798 = sub i64 %_796, %_797
  store i64 %_798, i64* %_787
  br label %_793
_795:
  %_799 = load i64, i64* %_787
  ret i64 %_799
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_778 = alloca i64
  store i64 %argc, i64* %_778
  %_779 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_779
  %_780 = alloca i64
  %_781 = alloca i64
  store i64 64, i64* %_780
  store i64 48, i64* %_781
  %_783 = load i64, i64* %_780
  %_784 = load i64, i64* %_781
  %_782 = call i64 @gcd(i64 %_783, i64 %_784)
  ret i64 %_782
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
