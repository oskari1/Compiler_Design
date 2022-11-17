; generated from: ./nicdard/for.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5793 = alloca i64
  store i64 %argc, i64* %_5793
  %_5794 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5794
  %_5795 = alloca i64
  %_5797 = alloca i64
  store i64 0, i64* %_5795
  store i64 10, i64* %_5797
  br label %_5800
_5800:
  %_5798 = load i64, i64* %_5796
  %_5799 = icmp slt i64 %_5798, 10
  br i1 %_5799, label %_5801, label %_5802
_5801:
  %_5803 = load i64, i64* %_5795
  %_5804 = add i64 %_5803, 1
  store i64 %_5804, i64* %_5795
  %_5805 = load i64, i64* %_5796
  %_5806 = add i64 %_5805, 2
  store i64 %_5806, i64* %_5796
  br label %_5800
_5802:
  %_5807 = load i64, i64* %_5795
  ret i64 %_5807
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
