; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_79 = alloca i64
  store i64 %argc, i64* %_79
  %_80 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_80
  %_81 = icmp ne i64 6, 5
  br i1 %_81, label %_82, label %_83
_82:
  %_85 = shl i64 5, 17
  %_86 = lshr i64 %_85, 2
  %_87 = ashr i64 %_86, 10
  %_88 = xor i64 -1, %_87
  %_89 = mul i64 %_88, 2
  %_90 = sub i64 %_89, 100
  %_91 = add i64 %_90, 6
  ret i64 %_91
_83:
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
