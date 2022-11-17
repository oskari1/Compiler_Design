; generated from: ./nicdard/equality.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5733 = alloca i64
  store i64 %argc, i64* %_5733
  %_5734 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5734
  %_5735 = alloca i64
  %_5736 = alloca i1
  store i64 10, i64* %_5735
  %_5737 = load i64, i64* %_5735
  %_5738 = icmp eq i64 %_5737, 10
  store i1 %_5738, i1* %_5736
  %_5739 = load i1, i1* %_5736
  br i1 %_5739, label %_5740, label %_5741
_5740:
  ret i64 1
_5741:
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
