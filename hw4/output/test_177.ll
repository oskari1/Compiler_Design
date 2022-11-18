; generated from: ./nicdard/lesseq.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8433 = alloca i64
  store i64 %argc, i64* %_8433
  %_8434 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8434
  %_8435 = alloca i64
  %_8436 = alloca i1
  store i64 10, i64* %_8435
  %_8437 = load i64, i64* %_8435
  %_8438 = icmp sle i64 %_8437, 10
  store i1 %_8438, i1* %_8436
  %_8439 = load i1, i1* %_8436
  br i1 %_8439, label %_8440, label %_8441
_8440:
  ret i64 1
_8441:
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
