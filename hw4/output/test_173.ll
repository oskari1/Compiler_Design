; generated from: ./nicdard/inequality.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8393 = alloca i64
  store i64 %argc, i64* %_8393
  %_8394 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8394
  %_8395 = alloca i64
  %_8396 = alloca i1
  store i64 10, i64* %_8395
  %_8397 = load i64, i64* %_8395
  %_8398 = icmp ne i64 %_8397, 10
  store i1 %_8398, i1* %_8396
  %_8399 = load i1, i1* %_8396
  br i1 %_8399, label %_8400, label %_8401
_8400:
  ret i64 1
_8401:
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
