; generated from: ./nicdard/while1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8371 = alloca i64
  store i64 %argc, i64* %_8371
  %_8372 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8372
  %_8373 = alloca i64
  %_8374 = sub i64 0, 10
  store i64 %_8374, i64* %_8373
  br label %_8377
_8377:
  %_8375 = load i64, i64* %_8373
  %_8376 = icmp sle i64 %_8375, 0
  br i1 %_8376, label %_8378, label %_8379
_8378:
  %_8380 = load i64, i64* %_8373
  %_8381 = add i64 %_8380, 1
  store i64 %_8381, i64* %_8373
  br label %_8377
_8379:
  %_8382 = load i64, i64* %_8373
  ret i64 %_8382
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
