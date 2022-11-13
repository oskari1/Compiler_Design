; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_148 = alloca i64
  store i64 %argc, i64* %_148
  %_149 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_149
  %_150 = alloca i64
  %_151 = alloca i64
  store i64 9, i64* %_150
  %_152 = load i64, i64* %_150
  %_153 = load i64, i64* %_150
  %_154 = add i64 %_152, %_153
  store i64 %_154, i64* %_151
  %_155 = load i64, i64* %_150
  %_156 = load i64, i64* %_150
  %_157 = load i64, i64* %_150
  %_158 = mul i64 %_156, %_157
  %_159 = add i64 %_155, %_158
  %_160 = load i64, i64* %_151
  %_161 = sub i64 %_159, %_160
  %_162 = lshr i64 %_161, 2
  %_163 = shl i64 %_162, 2
  %_164 = ashr i64 %_163, 2
  ret i64 %_164
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
