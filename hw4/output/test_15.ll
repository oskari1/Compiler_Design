; generated from: oatprograms/run13.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x, i64 %y) {
  %_148 = alloca i64
  store i64 %x, i64* %_148
  %_149 = alloca i64
  store i64 %y, i64* %_149
  %_150 = load i64, i64* %_148
  ret i64 %_150
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_145 = alloca i64
  store i64 %argc, i64* %_145
  %_146 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_146
  %_147 = call i64 @f(i64 1, i64 2)
  ret i64 %_147
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
