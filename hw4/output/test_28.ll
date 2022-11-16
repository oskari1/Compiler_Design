; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_366 = alloca i64
  store i64 %argc, i64* %_366
  %_367 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_367
  %_368 = alloca i64
  %_369 = alloca i64
  store i64 9, i64* %_368
  %_370 = load i64, i64* %_368
  %_371 = load i64, i64* %_368
  %_372 = add i64 %_370, %_371
  store i64 %_372, i64* %_369
  %_373 = load i64, i64* %_368
  %_374 = load i64, i64* %_368
  %_375 = load i64, i64* %_368
  %_376 = mul i64 %_374, %_375
  %_377 = add i64 %_373, %_376
  %_378 = load i64, i64* %_369
  %_379 = sub i64 %_377, %_378
  %_380 = lshr i64 %_379, 2
  %_381 = shl i64 %_380, 2
  %_382 = ashr i64 %_381, 2
  ret i64 %_382
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
