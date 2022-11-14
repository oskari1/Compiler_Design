; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_256 = alloca i64
  store i64 %i, i64* %_256
  %_258 = load i64, i64* %_256
  %_257 = call i64 @f2(i64 %_258)
  ret i64 %_257
}

define i64 @f2(i64 %i) {
  %_253 = alloca i64
  store i64 %i, i64* %_253
  %_255 = load i64, i64* %_253
  %_254 = call i64 @f3(i64 %_255)
  ret i64 %_254
}

define i64 @f3(i64 %i) {
  %_250 = alloca i64
  store i64 %i, i64* %_250
  %_252 = load i64, i64* %_250
  %_251 = call i64 @f4(i64 %_252)
  ret i64 %_251
}

define i64 @f4(i64 %i) {
  %_247 = alloca i64
  store i64 %i, i64* %_247
  %_249 = load i64, i64* %_247
  %_248 = call i64 @f5(i64 %_249)
  ret i64 %_248
}

define i64 @f5(i64 %i) {
  %_244 = alloca i64
  store i64 %i, i64* %_244
  %_246 = load i64, i64* %_244
  %_245 = call i64 @f6(i64 %_246)
  ret i64 %_245
}

define i64 @f6(i64 %i) {
  %_241 = alloca i64
  store i64 %i, i64* %_241
  %_243 = load i64, i64* %_241
  %_242 = call i64 @f7(i64 %_243)
  ret i64 %_242
}

define i64 @f7(i64 %i) {
  %_238 = alloca i64
  store i64 %i, i64* %_238
  %_240 = load i64, i64* %_238
  %_239 = call i64 @f8(i64 %_240)
  ret i64 %_239
}

define i64 @f8(i64 %i) {
  %_235 = alloca i64
  store i64 %i, i64* %_235
  %_237 = load i64, i64* %_235
  %_236 = call i64 @f9(i64 %_237)
  ret i64 %_236
}

define i64 @f9(i64 %i) {
  %_233 = alloca i64
  store i64 %i, i64* %_233
  %_234 = load i64, i64* %_233
  ret i64 %_234
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_229 = alloca i64
  store i64 %argc, i64* %_229
  %_230 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_230
  %_232 = load i64, i64* %_229
  %_231 = call i64 @f1(i64 %_232)
  ret i64 %_231
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
