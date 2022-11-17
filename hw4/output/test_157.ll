; generated from: ./nicdard/and2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5834 = alloca i64
  store i64 %argc, i64* %_5834
  %_5835 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5835
  %_5836 = alloca i64
  %_5837 = alloca i1
  %_5840 = alloca i1
  store i64 10, i64* %_5836
  %_5838 = load i64, i64* %_5836
  %_5839 = icmp sge i64 %_5838, 10
  store i1 %_5839, i1* %_5837
  %_5841 = load i64, i64* %_5836
  %_5842 = icmp slt i64 %_5841, 10
  store i1 %_5842, i1* %_5840
  %_5843 = load i1, i1* %_5837
  br i1 %_5843, label %_5844, label %_5845
_5844:
  %_5847 = load i64, i64* %_5836
  %_5848 = add i64 %_5847, 1
  store i64 %_5848, i64* %_5836
  br label %_5846
_5845:
  br label %_5846
_5846:
  %_5849 = load i1, i1* %_5840
  br i1 %_5849, label %_5850, label %_5851
_5850:
  %_5853 = load i64, i64* %_5836
  %_5854 = add i64 %_5853, 2
  store i64 %_5854, i64* %_5836
  br label %_5852
_5851:
  br label %_5852
_5852:
  %_5855 = load i1, i1* %_5837
  %_5856 = load i1, i1* %_5840
  %_5857 = and i1 %_5855, %_5856
  br i1 %_5857, label %_5858, label %_5859
_5858:
  %_5861 = load i64, i64* %_5836
  %_5862 = add i64 %_5861, 15
  store i64 %_5862, i64* %_5836
  br label %_5860
_5859:
  br label %_5860
_5860:
  %_5863 = load i64, i64* %_5836
  ret i64 %_5863
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
