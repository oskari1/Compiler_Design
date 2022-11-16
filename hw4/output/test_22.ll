; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_211 = alloca i64
  store i64 %argc, i64* %_211
  %_212 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_212
  %_213 = alloca i64
  %_214 = alloca i64
  store i64 9, i64* %_213
  %_215 = load i64, i64* %_213
  %_216 = load i64, i64* %_213
  %_217 = add i64 %_215, %_216
  store i64 %_217, i64* %_214
  %_218 = load i64, i64* %_213
  %_219 = load i64, i64* %_213
  %_220 = load i64, i64* %_213
  %_221 = mul i64 %_219, %_220
  %_222 = add i64 %_218, %_221
  %_223 = load i64, i64* %_214
  %_224 = sub i64 %_222, %_223
  %_225 = lshr i64 %_224, 2
  %_226 = shl i64 %_225, 2
  %_227 = ashr i64 %_226, 2
  ret i64 %_227
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
