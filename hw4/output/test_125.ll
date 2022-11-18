; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_6822 = alloca i64
  store i64 %a, i64* %_6822
  %_6823 = alloca i64
  store i64 %b, i64* %_6823
  %_6829 = alloca i64
  br label %_6826
_6826:
  %_6824 = load i64, i64* %_6823
  %_6825 = icmp ne i64 %_6824, 0
  br i1 %_6825, label %_6827, label %_6828
_6827:
  %_6830 = load i64, i64* %_6823
  store i64 %_6830, i64* %_6829
  %_6832 = load i64, i64* %_6822
  %_6833 = load i64, i64* %_6823
  %_6831 = call i64 @mod(i64 %_6832, i64 %_6833)
  store i64 %_6831, i64* %_6823
  %_6834 = load i64, i64* %_6829
  store i64 %_6834, i64* %_6822
  br label %_6826
_6828:
  %_6835 = load i64, i64* %_6822
  ret i64 %_6835
}

define i64 @mod(i64 %a, i64 %b) {
  %_6807 = alloca i64
  store i64 %a, i64* %_6807
  %_6808 = alloca i64
  store i64 %b, i64* %_6808
  %_6809 = alloca i64
  %_6810 = load i64, i64* %_6807
  store i64 %_6810, i64* %_6809
  br label %_6815
_6815:
  %_6811 = load i64, i64* %_6809
  %_6812 = load i64, i64* %_6808
  %_6813 = sub i64 %_6811, %_6812
  %_6814 = icmp sge i64 %_6813, 0
  br i1 %_6814, label %_6816, label %_6817
_6816:
  %_6818 = load i64, i64* %_6809
  %_6819 = load i64, i64* %_6808
  %_6820 = sub i64 %_6818, %_6819
  store i64 %_6820, i64* %_6809
  br label %_6815
_6817:
  %_6821 = load i64, i64* %_6809
  ret i64 %_6821
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6800 = alloca i64
  store i64 %argc, i64* %_6800
  %_6801 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6801
  %_6802 = alloca i64
  %_6803 = alloca i64
  store i64 64, i64* %_6802
  store i64 48, i64* %_6803
  %_6805 = load i64, i64* %_6802
  %_6806 = load i64, i64* %_6803
  %_6804 = call i64 @gcd(i64 %_6805, i64 %_6806)
  ret i64 %_6804
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
