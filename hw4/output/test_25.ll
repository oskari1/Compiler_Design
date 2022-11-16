; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_257 = alloca i64
  store i64 %i, i64* %_257
  %_259 = load i64, i64* %_257
  %_258 = call i64 @f2(i64 %_259)
  ret i64 %_258
}

define i64 @f2(i64 %i) {
  %_254 = alloca i64
  store i64 %i, i64* %_254
  %_256 = load i64, i64* %_254
  %_255 = call i64 @f3(i64 %_256)
  ret i64 %_255
}

define i64 @f3(i64 %i) {
  %_251 = alloca i64
  store i64 %i, i64* %_251
  %_253 = load i64, i64* %_251
  %_252 = call i64 @f4(i64 %_253)
  ret i64 %_252
}

define i64 @f4(i64 %i) {
  %_248 = alloca i64
  store i64 %i, i64* %_248
  %_250 = load i64, i64* %_248
  %_249 = call i64 @f5(i64 %_250)
  ret i64 %_249
}

define i64 @f5(i64 %i) {
  %_245 = alloca i64
  store i64 %i, i64* %_245
  %_247 = load i64, i64* %_245
  %_246 = call i64 @f6(i64 %_247)
  ret i64 %_246
}

define i64 @f6(i64 %i) {
  %_242 = alloca i64
  store i64 %i, i64* %_242
  %_244 = load i64, i64* %_242
  %_243 = call i64 @f7(i64 %_244)
  ret i64 %_243
}

define i64 @f7(i64 %i) {
  %_239 = alloca i64
  store i64 %i, i64* %_239
  %_241 = load i64, i64* %_239
  %_240 = call i64 @f8(i64 %_241)
  ret i64 %_240
}

define i64 @f8(i64 %i) {
  %_236 = alloca i64
  store i64 %i, i64* %_236
  %_238 = load i64, i64* %_236
  %_237 = call i64 @f9(i64 %_238)
  ret i64 %_237
}

define i64 @f9(i64 %i) {
  %_234 = alloca i64
  store i64 %i, i64* %_234
  %_235 = load i64, i64* %_234
  ret i64 %_235
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_230 = alloca i64
  store i64 %argc, i64* %_230
  %_231 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_231
  %_233 = load i64, i64* %_230
  %_232 = call i64 @f1(i64 %_233)
  ret i64 %_232
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
