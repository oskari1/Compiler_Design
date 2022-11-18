; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2729 = alloca i64
  store i64 %argc, i64* %_2729
  %_2730 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2730
  %_2731 = icmp ne i64 6, 5
  br i1 %_2731, label %_2732, label %_2733
_2732:
  %_2735 = shl i64 5, 17
  %_2736 = lshr i64 %_2735, 2
  %_2737 = ashr i64 %_2736, 10
  %_2738 = xor i64 -1, %_2737
  %_2739 = mul i64 %_2738, 2
  %_2740 = sub i64 %_2739, 100
  %_2741 = add i64 %_2740, 6
  ret i64 %_2741
_2733:
  ret i64 2
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
