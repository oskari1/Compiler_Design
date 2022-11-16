; generated from: oatprograms/run31.oat
target triple = "x86_64-unknown-linux"
@i = global i64 9

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_394 = alloca i64
  store i64 %argc, i64* %_394
  %_395 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_395
  %_396 = alloca i64
  %_397 = load i64, i64* @i
  store i64 %_397, i64* %_396
  %_398 = load i64, i64* %_396
  ret i64 %_398
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
