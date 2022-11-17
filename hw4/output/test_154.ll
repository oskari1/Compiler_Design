; generated from: ./nicdard/lesseq.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5783 = alloca i64
  store i64 %argc, i64* %_5783
  %_5784 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5784
  %_5785 = alloca i64
  %_5786 = alloca i1
  store i64 10, i64* %_5785
  %_5787 = load i64, i64* %_5785
  %_5788 = icmp sle i64 %_5787, 10
  store i1 %_5788, i1* %_5786
  %_5789 = load i1, i1* %_5786
  br i1 %_5789, label %_5790, label %_5791
_5790:
  ret i64 1
_5791:
  ret i64 0
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
