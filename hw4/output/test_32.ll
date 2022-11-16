; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_322 = alloca i64
  store i64 %x, i64* %_322
  %_323 = alloca i64
  store i64 1, i64* %_323
  br label %_326
_326:
  %_324 = load i64, i64* %_322
  %_325 = icmp sgt i64 %_324, 0
  br i1 %_325, label %_327, label %_328
_327:
  %_329 = load i64, i64* %_323
  %_330 = load i64, i64* %_322
  %_331 = mul i64 %_329, %_330
  store i64 %_331, i64* %_323
  %_332 = load i64, i64* %_322
  %_333 = sub i64 %_332, 1
  store i64 %_333, i64* %_322
  br label %_326
_328:
  %_334 = load i64, i64* %_323
  ret i64 %_334
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_317 = alloca i64
  store i64 %argc, i64* %_317
  %_318 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_318
  %_321 = call i64 @fact(i64 5)
  %_320 = call i8* @string_of_int(i64 %_321)
  call void @print_string(i8* %_320)
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
