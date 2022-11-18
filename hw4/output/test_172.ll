; generated from: ./nicdard/equality.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8383 = alloca i64
  store i64 %argc, i64* %_8383
  %_8384 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8384
  %_8385 = alloca i64
  %_8386 = alloca i1
  store i64 10, i64* %_8385
  %_8387 = load i64, i64* %_8385
  %_8388 = icmp eq i64 %_8387, 10
  store i1 %_8388, i1* %_8386
  %_8389 = load i1, i1* %_8386
  br i1 %_8389, label %_8390, label %_8391
_8390:
  ret i64 1
_8391:
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
