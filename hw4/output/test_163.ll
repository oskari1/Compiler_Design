; generated from: ./nicdard/shoisted.oat
target triple = "x86_64-unknown-linux"
@_5931 = global [13 x i8] c"local string\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5928 = alloca i64
  store i64 %argc, i64* %_5928
  %_5929 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5929
  %_5930 = alloca i8*
  %_5932 = getelementptr [13 x i8], [13 x i8]* @_5931, i32 0, i32 0
  store i8* %_5932, i8** %_5930
  %_5934 = load i8*, i8** %_5930
  call void @print_string(i8* %_5934)
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
