; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_170 = alloca i64
  store i64 %argc, i64* %_170
  %_171 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_171
  %_172 = alloca i64
  %_173 = alloca i64
  store i64 9, i64* %_172
  %_174 = load i64, i64* %_172
  %_175 = load i64, i64* %_172
  %_176 = add i64 %_174, %_175
  store i64 %_176, i64* %_173
  %_177 = load i64, i64* %_172
  %_178 = load i64, i64* %_172
  %_179 = load i64, i64* %_172
  %_180 = mul i64 %_178, %_179
  %_181 = add i64 %_177, %_180
  %_182 = load i64, i64* %_173
  %_183 = sub i64 %_181, %_182
  %_184 = lshr i64 %_183, 2
  %_185 = shl i64 %_184, 2
  %_186 = ashr i64 %_185, 2
  ret i64 %_186
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
