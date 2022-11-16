; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_273 = alloca i64
  store i64 %x1, i64* %_273
  %_274 = alloca i64
  store i64 %x2, i64* %_274
  %_275 = alloca i64
  store i64 %x3, i64* %_275
  %_276 = alloca i64
  store i64 %x4, i64* %_276
  %_277 = alloca i64
  store i64 %x5, i64* %_277
  %_278 = alloca i64
  store i64 %x6, i64* %_278
  %_279 = alloca i64
  store i64 %x7, i64* %_279
  %_280 = alloca i64
  store i64 %x8, i64* %_280
  %_281 = load i64, i64* %_273
  %_282 = load i64, i64* %_274
  %_283 = add i64 %_281, %_282
  %_284 = load i64, i64* %_275
  %_285 = add i64 %_283, %_284
  %_286 = load i64, i64* %_276
  %_287 = add i64 %_285, %_286
  %_288 = load i64, i64* %_277
  %_289 = add i64 %_287, %_288
  %_290 = load i64, i64* %_278
  %_291 = add i64 %_289, %_290
  %_292 = load i64, i64* %_279
  %_293 = add i64 %_291, %_292
  %_294 = load i64, i64* %_280
  %_295 = add i64 %_293, %_294
  ret i64 %_295
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_267 = alloca i64
  store i64 %argc, i64* %_267
  %_268 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_268
  %_270 = sub i64 0, 5
  %_271 = sub i64 0, 4
  %_272 = sub i64 0, 3
  %_269 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_270, i64 %_271, i64 %_272)
  ret i64 %_269
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
