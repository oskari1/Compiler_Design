; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_158 = alloca i64
  store i64 %argc, i64* %_158
  %_159 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_159
  %_160 = alloca i64
  %_161 = alloca i64
  store i64 9, i64* %_160
  %_162 = load i64, i64* %_160
  %_163 = load i64, i64* %_160
  %_164 = add i64 %_162, %_163
  store i64 %_164, i64* %_161
  %_165 = load i64, i64* %_160
  %_166 = load i64, i64* %_160
  %_167 = load i64, i64* %_160
  %_168 = mul i64 %_166, %_167
  %_169 = add i64 %_165, %_168
  %_170 = load i64, i64* %_161
  %_171 = sub i64 %_169, %_170
  %_172 = lshr i64 %_171, 2
  %_173 = shl i64 %_172, 2
  %_174 = ashr i64 %_173, 2
  ret i64 %_174
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
