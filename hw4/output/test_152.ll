; generated from: ./nicdard/less.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5763 = alloca i64
  store i64 %argc, i64* %_5763
  %_5764 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5764
  %_5765 = alloca i64
  %_5766 = alloca i1
  store i64 10, i64* %_5765
  %_5767 = load i64, i64* %_5765
  %_5768 = icmp slt i64 %_5767, 10
  store i1 %_5768, i1* %_5766
  %_5769 = load i1, i1* %_5766
  br i1 %_5769, label %_5770, label %_5771
_5770:
  ret i64 1
_5771:
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
