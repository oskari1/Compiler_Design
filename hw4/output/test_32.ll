; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_346 = alloca i64
  store i64 %x, i64* %_346
  %_347 = alloca i64
  store i64 %y, i64* %_347
  %_348 = alloca i64
  store i64 0, i64* %_348
  %_349 = load i64, i64* %_346
  %_350 = icmp sge i64 %_349, 1
  br i1 %_350, label %_351, label %_352
_351:
  %_355 = load i64, i64* %_346
  %_356 = sub i64 %_355, 1
  %_357 = load i64, i64* %_347
  %_354 = call i64 @f(i64 %_356, i64 %_357)
  %_358 = add i64 1, %_354
  store i64 %_358, i64* %_348
  br label %_353
_352:
  %_359 = load i64, i64* %_346
  %_360 = load i64, i64* %_347
  %_361 = add i64 %_359, %_360
  store i64 %_361, i64* %_348
  br label %_353
_353:
  %_362 = load i64, i64* %_348
  ret i64 %_362
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_337 = alloca i64
  store i64 %argc, i64* %_337
  %_338 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_338
  %_339 = alloca i64
  %_340 = alloca i64
  store i64 3, i64* %_339
  store i64 3, i64* %_340
  %_342 = load i64, i64* %_339
  %_343 = load i64, i64* %_340
  %_341 = call i64 @f(i64 %_342, i64 %_343)
  %_344 = load i64, i64* @i
  %_345 = add i64 %_341, %_344
  ret i64 %_345
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
