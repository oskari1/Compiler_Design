; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_356 = alloca i64
  store i64 %x, i64* %_356
  %_357 = alloca i64
  store i64 %y, i64* %_357
  %_358 = alloca i64
  store i64 0, i64* %_358
  %_359 = load i64, i64* %_356
  %_360 = icmp sge i64 %_359, 1
  br i1 %_360, label %_361, label %_362
_361:
  %_365 = load i64, i64* %_356
  %_366 = sub i64 %_365, 1
  %_367 = load i64, i64* %_357
  %_364 = call i64 @f(i64 %_366, i64 %_367)
  %_368 = add i64 1, %_364
  store i64 %_368, i64* %_358
  br label %_363
_362:
  %_369 = load i64, i64* %_356
  %_370 = load i64, i64* %_357
  %_371 = add i64 %_369, %_370
  store i64 %_371, i64* %_358
  br label %_363
_363:
  %_372 = load i64, i64* %_358
  ret i64 %_372
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_347 = alloca i64
  store i64 %argc, i64* %_347
  %_348 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_348
  %_349 = alloca i64
  %_350 = alloca i64
  store i64 3, i64* %_349
  store i64 3, i64* %_350
  %_352 = load i64, i64* %_349
  %_353 = load i64, i64* %_350
  %_351 = call i64 @f(i64 %_352, i64 %_353)
  %_354 = load i64, i64* @i
  %_355 = add i64 %_351, %_354
  ret i64 %_355
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
