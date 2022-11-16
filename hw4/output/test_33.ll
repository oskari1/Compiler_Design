; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_399 = alloca i64
  store i64 %x1, i64* %_399
  %_400 = alloca i64
  store i64 %x2, i64* %_400
  %_401 = alloca i64
  store i64 %x3, i64* %_401
  %_402 = alloca i64
  store i64 %x4, i64* %_402
  %_403 = alloca i64
  store i64 %x5, i64* %_403
  %_404 = alloca i64
  store i64 %x6, i64* %_404
  %_405 = alloca i64
  store i64 %x7, i64* %_405
  %_406 = alloca i64
  store i64 %x8, i64* %_406
  %_407 = load i64, i64* %_399
  %_408 = load i64, i64* %_400
  %_409 = add i64 %_407, %_408
  %_410 = load i64, i64* %_401
  %_411 = add i64 %_409, %_410
  %_412 = load i64, i64* %_402
  %_413 = add i64 %_411, %_412
  %_414 = load i64, i64* %_403
  %_415 = add i64 %_413, %_414
  %_416 = load i64, i64* %_404
  %_417 = add i64 %_415, %_416
  %_418 = load i64, i64* %_405
  %_419 = add i64 %_417, %_418
  %_420 = load i64, i64* %_406
  %_421 = add i64 %_419, %_420
  ret i64 %_421
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_393 = alloca i64
  store i64 %argc, i64* %_393
  %_394 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_394
  %_396 = sub i64 0, 5
  %_397 = sub i64 0, 4
  %_398 = sub i64 0, 3
  %_395 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_396, i64 %_397, i64 %_398)
  ret i64 %_395
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
