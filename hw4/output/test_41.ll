; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2858 = alloca i64
  store i64 %argc, i64* %_2858
  %_2859 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2859
  %_2860 = alloca i64
  %_2861 = alloca i64
  store i64 17, i64* %_2860
  store i64 18, i64* %_2861
  %_2862 = load i64, i64* %_2860
  %_2863 = load i64, i64* %_2861
  %_2864 = add i64 %_2862, %_2863
  ret i64 %_2864
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
