; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_372 = alloca i64
  store i64 %x, i64* %_372
  %_373 = alloca i64
  store i64 1, i64* %_373
  br label %_376
_376:
  %_374 = load i64, i64* %_372
  %_375 = icmp sgt i64 %_374, 0
  br i1 %_375, label %_377, label %_378
_377:
  %_379 = load i64, i64* %_373
  %_380 = load i64, i64* %_372
  %_381 = mul i64 %_379, %_380
  store i64 %_381, i64* %_373
  %_382 = load i64, i64* %_372
  %_383 = sub i64 %_382, 1
  store i64 %_383, i64* %_372
  br label %_376
_378:
  %_384 = load i64, i64* %_373
  ret i64 %_384
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_367 = alloca i64
  store i64 %argc, i64* %_367
  %_368 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_368
  %_371 = call i64 @fact(i64 5)
  %_370 = call i8* @string_of_int(i64 %_371)
  call void @print_string(i8* %_370)
  ret i64 0
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
