; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_331 = alloca i64
  store i64 %x, i64* %_331
  %_332 = alloca i64
  store i64 1, i64* %_332
  br label %_335
_335:
  %_333 = load i64, i64* %_331
  %_334 = icmp sgt i64 %_333, 0
  br i1 %_334, label %_336, label %_337
_336:
  %_338 = load i64, i64* %_332
  %_339 = load i64, i64* %_331
  %_340 = mul i64 %_338, %_339
  store i64 %_340, i64* %_332
  %_341 = load i64, i64* %_331
  %_342 = sub i64 %_341, 1
  store i64 %_342, i64* %_331
  br label %_335
_337:
  %_343 = load i64, i64* %_332
  ret i64 %_343
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_326 = alloca i64
  store i64 %argc, i64* %_326
  %_327 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_327
  %_330 = call i64 @fact(i64 5)
  %_329 = call i8* @string_of_int(i64 %_330)
  call void @print_string(i8* %_329)
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
