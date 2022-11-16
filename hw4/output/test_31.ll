; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_383 = alloca i64
  store i64 %i, i64* %_383
  %_385 = load i64, i64* %_383
  %_384 = call i64 @f2(i64 %_385)
  ret i64 %_384
}

define i64 @f2(i64 %i) {
  %_380 = alloca i64
  store i64 %i, i64* %_380
  %_382 = load i64, i64* %_380
  %_381 = call i64 @f3(i64 %_382)
  ret i64 %_381
}

define i64 @f3(i64 %i) {
  %_377 = alloca i64
  store i64 %i, i64* %_377
  %_379 = load i64, i64* %_377
  %_378 = call i64 @f4(i64 %_379)
  ret i64 %_378
}

define i64 @f4(i64 %i) {
  %_374 = alloca i64
  store i64 %i, i64* %_374
  %_376 = load i64, i64* %_374
  %_375 = call i64 @f5(i64 %_376)
  ret i64 %_375
}

define i64 @f5(i64 %i) {
  %_371 = alloca i64
  store i64 %i, i64* %_371
  %_373 = load i64, i64* %_371
  %_372 = call i64 @f6(i64 %_373)
  ret i64 %_372
}

define i64 @f6(i64 %i) {
  %_368 = alloca i64
  store i64 %i, i64* %_368
  %_370 = load i64, i64* %_368
  %_369 = call i64 @f7(i64 %_370)
  ret i64 %_369
}

define i64 @f7(i64 %i) {
  %_365 = alloca i64
  store i64 %i, i64* %_365
  %_367 = load i64, i64* %_365
  %_366 = call i64 @f8(i64 %_367)
  ret i64 %_366
}

define i64 @f8(i64 %i) {
  %_362 = alloca i64
  store i64 %i, i64* %_362
  %_364 = load i64, i64* %_362
  %_363 = call i64 @f9(i64 %_364)
  ret i64 %_363
}

define i64 @f9(i64 %i) {
  %_360 = alloca i64
  store i64 %i, i64* %_360
  %_361 = load i64, i64* %_360
  ret i64 %_361
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_356 = alloca i64
  store i64 %argc, i64* %_356
  %_357 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_357
  %_359 = load i64, i64* %_356
  %_358 = call i64 @f1(i64 %_359)
  ret i64 %_358
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
