; generated from: ./nicdard/shoisted2.oat
target triple = "x86_64-unknown-linux"
@_8588 = global [13 x i8] c"local string\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8585 = alloca i64
  store i64 %argc, i64* %_8585
  %_8586 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8586
  %_8587 = alloca i8*
  %_8589 = getelementptr [13 x i8], [13 x i8]* @_8588, i32 0, i32 0
  store i8* %_8589, i8** %_8587
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
