; generated from: ./nicdard/while.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5712 = alloca i64
  store i64 %argc, i64* %_5712
  %_5713 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5713
  %_5714 = alloca i64
  store i64 0, i64* %_5714
  br label %_5717
_5717:
  %_5715 = load i64, i64* %_5714
  %_5716 = icmp ne i64 %_5715, 0
  br i1 %_5716, label %_5718, label %_5719
_5718:
  br label %_5717
_5719:
  %_5720 = load i64, i64* %_5714
  ret i64 %_5720
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
