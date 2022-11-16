; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_347 = alloca i64
  store i64 %x, i64* %_347
  %_348 = alloca i64
  store i64 %y, i64* %_348
  %_349 = alloca i64
  store i64 0, i64* %_349
  %_350 = load i64, i64* %_347
  %_351 = icmp sge i64 %_350, 1
  br i1 %_351, label %_352, label %_353
_352:
  %_356 = load i64, i64* %_347
  %_357 = sub i64 %_356, 1
  %_358 = load i64, i64* %_348
  %_355 = call i64 @f(i64 %_357, i64 %_358)
  %_359 = add i64 1, %_355
  store i64 %_359, i64* %_349
  br label %_354
_353:
  %_360 = load i64, i64* %_347
  %_361 = load i64, i64* %_348
  %_362 = add i64 %_360, %_361
  store i64 %_362, i64* %_349
  br label %_354
_354:
  %_363 = load i64, i64* %_349
  ret i64 %_363
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_338 = alloca i64
  store i64 %argc, i64* %_338
  %_339 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_339
  %_340 = alloca i64
  %_341 = alloca i64
  store i64 3, i64* %_340
  store i64 3, i64* %_341
  %_343 = load i64, i64* %_340
  %_344 = load i64, i64* %_341
  %_342 = call i64 @f(i64 %_343, i64 %_344)
  %_345 = load i64, i64* @i
  %_346 = add i64 %_342, %_345
  ret i64 %_346
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
