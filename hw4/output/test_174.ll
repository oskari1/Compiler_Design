; generated from: ./nicdard/greater.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8403 = alloca i64
  store i64 %argc, i64* %_8403
  %_8404 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8404
  %_8405 = alloca i64
  %_8406 = alloca i1
  store i64 10, i64* %_8405
  %_8407 = load i64, i64* %_8405
  %_8408 = icmp sgt i64 %_8407, 10
  store i1 %_8408, i1* %_8406
  %_8409 = load i1, i1* %_8406
  br i1 %_8409, label %_8410, label %_8411
_8410:
  ret i64 1
_8411:
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
