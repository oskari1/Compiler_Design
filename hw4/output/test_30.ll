; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_323 = alloca i64
  store i64 %x1, i64* %_323
  %_324 = alloca i64
  store i64 %x2, i64* %_324
  %_325 = alloca i64
  store i64 %x3, i64* %_325
  %_326 = alloca i64
  store i64 %x4, i64* %_326
  %_327 = alloca i64
  store i64 %x5, i64* %_327
  %_328 = alloca i64
  store i64 %x6, i64* %_328
  %_329 = alloca i64
  store i64 %x7, i64* %_329
  %_330 = alloca i64
  store i64 %x8, i64* %_330
  %_331 = load i64, i64* %_323
  %_332 = load i64, i64* %_324
  %_333 = add i64 %_331, %_332
  %_334 = load i64, i64* %_325
  %_335 = add i64 %_333, %_334
  %_336 = load i64, i64* %_326
  %_337 = add i64 %_335, %_336
  %_338 = load i64, i64* %_327
  %_339 = add i64 %_337, %_338
  %_340 = load i64, i64* %_328
  %_341 = add i64 %_339, %_340
  %_342 = load i64, i64* %_329
  %_343 = add i64 %_341, %_342
  %_344 = load i64, i64* %_330
  %_345 = add i64 %_343, %_344
  ret i64 %_345
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_317 = alloca i64
  store i64 %argc, i64* %_317
  %_318 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_318
  %_320 = sub i64 0, 5
  %_321 = sub i64 0, 4
  %_322 = sub i64 0, 3
  %_319 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_320, i64 %_321, i64 %_322)
  ret i64 %_319
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
