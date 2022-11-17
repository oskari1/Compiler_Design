; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_57 = alloca i64
  store i64 %argc, i64* %_57
  %_58 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_58
  %_59 = icmp ne i1 1, 0
  %_60 = sub i64 0, 4
  %_61 = add i64 %_60, 5
  %_62 = icmp sgt i64 %_61, 0
  %_63 = mul i64 6, 4
  %_64 = icmp slt i64 %_63, 25
  %_65 = and i1 %_62, %_64
  %_66 = or i1 %_59, %_65
  br i1 %_66, label %_67, label %_68
_67:
  ret i64 9
_68:
  ret i64 4
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
