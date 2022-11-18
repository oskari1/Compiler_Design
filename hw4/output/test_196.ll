; generated from: ./nicdard/function.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8720 = alloca i64
  store i64 %argc, i64* %_8720
  %_8721 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8721
  %_8722 = alloca i64
  %_8723 = call i64 @abs2()
  store i64 %_8723, i64* %_8722
  %_8724 = load i64, i64* %_8722
  %_8725 = call i64 @abs()
  %_8726 = add i64 %_8724, %_8725
  store i64 %_8726, i64* %_8722
  %_8727 = load i64, i64* %_8722
  ret i64 %_8727
}

define i64 @abs() {
  br i1 1, label %_8717, label %_8718
_8717:
  ret i64 1
_8718:
  ret i64 0
}

define i64 @abs2() {
  br i1 1, label %_8711, label %_8712
_8711:
  ret i64 0
_8712:
  br i1 0, label %_8714, label %_8715
_8714:
  ret i64 1
_8715:
  ret i64 7
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
