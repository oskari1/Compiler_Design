; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_74 = alloca i64
  store i64 %argc, i64* %_74
  %_75 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_75
  %_76 = icmp ne i64 6, 5
  br i1 %_76, label %_77, label %_78
_77:
  %_80 = shl i64 5, 17
  %_81 = lshr i64 %_80, 2
  %_82 = ashr i64 %_81, 10
  %_83 = xor i64 9223372036854775807, %_82
  %_84 = mul i64 %_83, 2
  %_85 = sub i64 %_84, 100
  %_86 = add i64 %_85, 6
  ret i64 %_86
_78:
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
