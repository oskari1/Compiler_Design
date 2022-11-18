; generated from: ./nicdard/assign.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8356 = alloca i64
  store i64 %argc, i64* %_8356
  %_8357 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8357
  %_8358 = alloca i64
  store i64 10, i64* %_8358
  %_8359 = load i64, i64* %_8358
  %_8360 = sub i64 0, %_8359
  store i64 %_8360, i64* %_8358
  %_8361 = load i64, i64* %_8358
  ret i64 %_8361
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
