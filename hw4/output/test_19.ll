; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_161 = alloca i64
  store i64 %argc, i64* %_161
  %_162 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_162
  %_163 = alloca i64
  %_164 = alloca i64
  store i64 9, i64* %_163
  %_165 = load i64, i64* %_163
  %_166 = load i64, i64* %_163
  %_167 = add i64 %_165, %_166
  store i64 %_167, i64* %_164
  %_168 = load i64, i64* %_163
  %_169 = load i64, i64* %_163
  %_170 = load i64, i64* %_163
  %_171 = mul i64 %_169, %_170
  %_172 = add i64 %_168, %_171
  %_173 = load i64, i64* %_164
  %_174 = sub i64 %_172, %_173
  %_175 = lshr i64 %_174, 2
  %_176 = shl i64 %_175, 2
  %_177 = ashr i64 %_176, 2
  ret i64 %_177
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
