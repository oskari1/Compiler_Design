; generated from: ./nicdard/neg.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8346 = alloca i64
  store i64 %argc, i64* %_8346
  %_8347 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8347
  %_8348 = alloca i64
  %_8349 = alloca i64
  store i64 10, i64* %_8348
  %_8350 = load i64, i64* %_8348
  %_8351 = sub i64 0, %_8350
  store i64 %_8351, i64* %_8349
  %_8352 = load i64, i64* %_8349
  ret i64 %_8352
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
