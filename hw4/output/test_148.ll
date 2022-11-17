; generated from: ./nicdard/while1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5721 = alloca i64
  store i64 %argc, i64* %_5721
  %_5722 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5722
  %_5723 = alloca i64
  %_5724 = sub i64 0, 10
  store i64 %_5724, i64* %_5723
  br label %_5727
_5727:
  %_5725 = load i64, i64* %_5723
  %_5726 = icmp sle i64 %_5725, 0
  br i1 %_5726, label %_5728, label %_5729
_5728:
  %_5730 = load i64, i64* %_5723
  %_5731 = add i64 %_5730, 1
  store i64 %_5731, i64* %_5723
  br label %_5727
_5729:
  %_5732 = load i64, i64* %_5723
  ret i64 %_5732
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
