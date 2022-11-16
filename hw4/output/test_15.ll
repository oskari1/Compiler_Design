; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_127 = alloca i64
  store i64 %argc, i64* %_127
  %_128 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_128
  %_129 = alloca i64
  %_130 = alloca i64
  store i64 17, i64* %_129
  store i64 18, i64* %_130
  %_131 = load i64, i64* %_129
  %_132 = load i64, i64* %_130
  %_133 = add i64 %_131, %_132
  ret i64 %_133
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
