; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_272 = alloca i64
  store i64 %x1, i64* %_272
  %_273 = alloca i64
  store i64 %x2, i64* %_273
  %_274 = alloca i64
  store i64 %x3, i64* %_274
  %_275 = alloca i64
  store i64 %x4, i64* %_275
  %_276 = alloca i64
  store i64 %x5, i64* %_276
  %_277 = alloca i64
  store i64 %x6, i64* %_277
  %_278 = alloca i64
  store i64 %x7, i64* %_278
  %_279 = alloca i64
  store i64 %x8, i64* %_279
  %_280 = load i64, i64* %_272
  %_281 = load i64, i64* %_273
  %_282 = add i64 %_280, %_281
  %_283 = load i64, i64* %_274
  %_284 = add i64 %_282, %_283
  %_285 = load i64, i64* %_275
  %_286 = add i64 %_284, %_285
  %_287 = load i64, i64* %_276
  %_288 = add i64 %_286, %_287
  %_289 = load i64, i64* %_277
  %_290 = add i64 %_288, %_289
  %_291 = load i64, i64* %_278
  %_292 = add i64 %_290, %_291
  %_293 = load i64, i64* %_279
  %_294 = add i64 %_292, %_293
  ret i64 %_294
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_266 = alloca i64
  store i64 %argc, i64* %_266
  %_267 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_267
  %_269 = sub i64 0, 5
  %_270 = sub i64 0, 4
  %_271 = sub i64 0, 3
  %_268 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_269, i64 %_270, i64 %_271)
  ret i64 %_268
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
