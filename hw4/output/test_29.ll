; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2720 = alloca i64
  store i64 %argc, i64* %_2720
  %_2721 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2721
  %_2722 = xor i64 -1, 5
  %_2723 = and i64 %_2722, 6
  %_2724 = or i64 2, 0
  %_2725 = icmp sge i64 %_2723, %_2724
  br i1 %_2725, label %_2726, label %_2727
_2726:
  ret i64 23
_2727:
  ret i64 46
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
