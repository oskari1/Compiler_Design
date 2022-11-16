; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_779 = alloca i64
  store i64 %a, i64* %_779
  %_780 = alloca i64
  store i64 %b, i64* %_780
  %_786 = alloca i64
  br label %_783
_783:
  %_781 = load i64, i64* %_780
  %_782 = icmp ne i64 %_781, 0
  br i1 %_782, label %_784, label %_785
_784:
  %_787 = load i64, i64* %_780
  store i64 %_787, i64* %_786
  %_789 = load i64, i64* %_779
  %_790 = load i64, i64* %_780
  %_788 = call i64 @mod(i64 %_789, i64 %_790)
  store i64 %_788, i64* %_780
  %_791 = load i64, i64* %_786
  store i64 %_791, i64* %_779
  br label %_783
_785:
  %_792 = load i64, i64* %_779
  ret i64 %_792
}

define i64 @mod(i64 %a, i64 %b) {
  %_764 = alloca i64
  store i64 %a, i64* %_764
  %_765 = alloca i64
  store i64 %b, i64* %_765
  %_766 = alloca i64
  %_767 = load i64, i64* %_764
  store i64 %_767, i64* %_766
  br label %_772
_772:
  %_768 = load i64, i64* %_766
  %_769 = load i64, i64* %_765
  %_770 = sub i64 %_768, %_769
  %_771 = icmp sge i64 %_770, 0
  br i1 %_771, label %_773, label %_774
_773:
  %_775 = load i64, i64* %_766
  %_776 = load i64, i64* %_765
  %_777 = sub i64 %_775, %_776
  store i64 %_777, i64* %_766
  br label %_772
_774:
  %_778 = load i64, i64* %_766
  ret i64 %_778
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_757 = alloca i64
  store i64 %argc, i64* %_757
  %_758 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_758
  %_759 = alloca i64
  %_760 = alloca i64
  store i64 64, i64* %_759
  store i64 48, i64* %_760
  %_762 = load i64, i64* %_759
  %_763 = load i64, i64* %_760
  %_761 = call i64 @gcd(i64 %_762, i64 %_763)
  ret i64 %_761
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
