; generated from: ./nicdard/greater.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5753 = alloca i64
  store i64 %argc, i64* %_5753
  %_5754 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5754
  %_5755 = alloca i64
  %_5756 = alloca i1
  store i64 10, i64* %_5755
  %_5757 = load i64, i64* %_5755
  %_5758 = icmp sgt i64 %_5757, 10
  store i1 %_5758, i1* %_5756
  %_5759 = load i1, i1* %_5756
  br i1 %_5759, label %_5760, label %_5761
_5760:
  ret i64 1
_5761:
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
