; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_282 = alloca i64
  store i64 %x1, i64* %_282
  %_283 = alloca i64
  store i64 %x2, i64* %_283
  %_284 = alloca i64
  store i64 %x3, i64* %_284
  %_285 = alloca i64
  store i64 %x4, i64* %_285
  %_286 = alloca i64
  store i64 %x5, i64* %_286
  %_287 = alloca i64
  store i64 %x6, i64* %_287
  %_288 = alloca i64
  store i64 %x7, i64* %_288
  %_289 = alloca i64
  store i64 %x8, i64* %_289
  %_290 = load i64, i64* %_282
  %_291 = load i64, i64* %_283
  %_292 = add i64 %_290, %_291
  %_293 = load i64, i64* %_284
  %_294 = add i64 %_292, %_293
  %_295 = load i64, i64* %_285
  %_296 = add i64 %_294, %_295
  %_297 = load i64, i64* %_286
  %_298 = add i64 %_296, %_297
  %_299 = load i64, i64* %_287
  %_300 = add i64 %_298, %_299
  %_301 = load i64, i64* %_288
  %_302 = add i64 %_300, %_301
  %_303 = load i64, i64* %_289
  %_304 = add i64 %_302, %_303
  ret i64 %_304
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_276 = alloca i64
  store i64 %argc, i64* %_276
  %_277 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_277
  %_279 = sub i64 0, 5
  %_280 = sub i64 0, 4
  %_281 = sub i64 0, 3
  %_278 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_279, i64 %_280, i64 %_281)
  ret i64 %_278
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
