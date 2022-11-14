; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_778 = alloca i64
  store i64 %a, i64* %_778
  %_779 = alloca i64
  store i64 %b, i64* %_779
  %_785 = alloca i64
  br label %_782
_782:
  %_780 = load i64, i64* %_779
  %_781 = icmp ne i64 %_780, 0
  br i1 %_781, label %_783, label %_784
_783:
  %_786 = load i64, i64* %_779
  store i64 %_786, i64* %_785
  %_788 = load i64, i64* %_778
  %_789 = load i64, i64* %_779
  %_787 = call i64 @mod(i64 %_788, i64 %_789)
  store i64 %_787, i64* %_779
  %_790 = load i64, i64* %_785
  store i64 %_790, i64* %_778
  br label %_782
_784:
  %_791 = load i64, i64* %_778
  ret i64 %_791
}

define i64 @mod(i64 %a, i64 %b) {
  %_763 = alloca i64
  store i64 %a, i64* %_763
  %_764 = alloca i64
  store i64 %b, i64* %_764
  %_765 = alloca i64
  %_766 = load i64, i64* %_763
  store i64 %_766, i64* %_765
  br label %_771
_771:
  %_767 = load i64, i64* %_765
  %_768 = load i64, i64* %_764
  %_769 = sub i64 %_767, %_768
  %_770 = icmp sge i64 %_769, 0
  br i1 %_770, label %_772, label %_773
_772:
  %_774 = load i64, i64* %_765
  %_775 = load i64, i64* %_764
  %_776 = sub i64 %_774, %_775
  store i64 %_776, i64* %_765
  br label %_771
_773:
  %_777 = load i64, i64* %_765
  ret i64 %_777
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_756 = alloca i64
  store i64 %argc, i64* %_756
  %_757 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_757
  %_758 = alloca i64
  %_759 = alloca i64
  store i64 64, i64* %_758
  store i64 48, i64* %_759
  %_761 = load i64, i64* %_758
  %_762 = load i64, i64* %_759
  %_760 = call i64 @gcd(i64 %_761, i64 %_762)
  ret i64 %_760
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
