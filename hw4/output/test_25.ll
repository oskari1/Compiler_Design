; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_266 = alloca i64
  store i64 %i, i64* %_266
  %_268 = load i64, i64* %_266
  %_267 = call i64 @f2(i64 %_268)
  ret i64 %_267
}

define i64 @f2(i64 %i) {
  %_263 = alloca i64
  store i64 %i, i64* %_263
  %_265 = load i64, i64* %_263
  %_264 = call i64 @f3(i64 %_265)
  ret i64 %_264
}

define i64 @f3(i64 %i) {
  %_260 = alloca i64
  store i64 %i, i64* %_260
  %_262 = load i64, i64* %_260
  %_261 = call i64 @f4(i64 %_262)
  ret i64 %_261
}

define i64 @f4(i64 %i) {
  %_257 = alloca i64
  store i64 %i, i64* %_257
  %_259 = load i64, i64* %_257
  %_258 = call i64 @f5(i64 %_259)
  ret i64 %_258
}

define i64 @f5(i64 %i) {
  %_254 = alloca i64
  store i64 %i, i64* %_254
  %_256 = load i64, i64* %_254
  %_255 = call i64 @f6(i64 %_256)
  ret i64 %_255
}

define i64 @f6(i64 %i) {
  %_251 = alloca i64
  store i64 %i, i64* %_251
  %_253 = load i64, i64* %_251
  %_252 = call i64 @f7(i64 %_253)
  ret i64 %_252
}

define i64 @f7(i64 %i) {
  %_248 = alloca i64
  store i64 %i, i64* %_248
  %_250 = load i64, i64* %_248
  %_249 = call i64 @f8(i64 %_250)
  ret i64 %_249
}

define i64 @f8(i64 %i) {
  %_245 = alloca i64
  store i64 %i, i64* %_245
  %_247 = load i64, i64* %_245
  %_246 = call i64 @f9(i64 %_247)
  ret i64 %_246
}

define i64 @f9(i64 %i) {
  %_243 = alloca i64
  store i64 %i, i64* %_243
  %_244 = load i64, i64* %_243
  ret i64 %_244
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_239 = alloca i64
  store i64 %argc, i64* %_239
  %_240 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_240
  %_242 = load i64, i64* %_239
  %_241 = call i64 @f1(i64 %_242)
  ret i64 %_241
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
