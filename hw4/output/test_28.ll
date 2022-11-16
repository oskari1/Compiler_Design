; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_352 = alloca i64
  store i64 %argc, i64* %_352
  %_353 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_353
  %_354 = alloca i64
  %_355 = alloca i64
  store i64 9, i64* %_354
  %_356 = load i64, i64* %_354
  %_357 = load i64, i64* %_354
  %_358 = add i64 %_356, %_357
  store i64 %_358, i64* %_355
  %_359 = load i64, i64* %_354
  %_360 = load i64, i64* %_354
  %_361 = load i64, i64* %_354
  %_362 = mul i64 %_360, %_361
  %_363 = add i64 %_359, %_362
  %_364 = load i64, i64* %_355
  %_365 = sub i64 %_363, %_364
  %_366 = lshr i64 %_365, 2
  %_367 = shl i64 %_366, 2
  %_368 = ashr i64 %_367, 2
  ret i64 %_368
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
