; generated from: ./nicdard/greatereq.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5773 = alloca i64
  store i64 %argc, i64* %_5773
  %_5774 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5774
  %_5775 = alloca i64
  %_5776 = alloca i1
  store i64 10, i64* %_5775
  %_5777 = load i64, i64* %_5775
  %_5778 = icmp sge i64 %_5777, 10
  store i1 %_5778, i1* %_5776
  %_5779 = load i1, i1* %_5776
  br i1 %_5779, label %_5780, label %_5781
_5780:
  ret i64 1
_5781:
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
