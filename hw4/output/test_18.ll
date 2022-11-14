; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_160 = alloca i64
  store i64 %argc, i64* %_160
  %_161 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_161
  %_162 = alloca i64
  %_163 = alloca i64
  store i64 9, i64* %_162
  %_164 = load i64, i64* %_162
  %_165 = load i64, i64* %_162
  %_166 = add i64 %_164, %_165
  store i64 %_166, i64* %_163
  %_167 = load i64, i64* %_162
  %_168 = load i64, i64* %_162
  %_169 = load i64, i64* %_162
  %_170 = mul i64 %_168, %_169
  %_171 = add i64 %_167, %_170
  %_172 = load i64, i64* %_163
  %_173 = sub i64 %_171, %_172
  %_174 = lshr i64 %_173, 2
  %_175 = shl i64 %_174, 2
  %_176 = ashr i64 %_175, 2
  ret i64 %_176
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
