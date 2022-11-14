; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_319 = alloca i64
  store i64 %x, i64* %_319
  %_320 = alloca i64
  store i64 %y, i64* %_320
  %_321 = alloca i64
  store i64 0, i64* %_321
  %_322 = load i64, i64* %_319
  %_323 = icmp sge i64 %_322, 1
  br i1 %_323, label %_324, label %_325
_324:
  %_328 = load i64, i64* %_319
  %_329 = sub i64 %_328, 1
  %_330 = load i64, i64* %_320
  %_327 = call i64 @f(i64 %_329, i64 %_330)
  %_331 = add i64 1, %_327
  store i64 %_331, i64* %_321
  br label %_326
_325:
  %_332 = load i64, i64* %_319
  %_333 = load i64, i64* %_320
  %_334 = add i64 %_332, %_333
  store i64 %_334, i64* %_321
  br label %_326
_326:
  %_335 = load i64, i64* %_321
  ret i64 %_335
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_310 = alloca i64
  store i64 %argc, i64* %_310
  %_311 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_311
  %_312 = alloca i64
  %_313 = alloca i64
  store i64 3, i64* %_312
  store i64 3, i64* %_313
  %_315 = load i64, i64* %_312
  %_316 = load i64, i64* %_313
  %_314 = call i64 @f(i64 %_315, i64 %_316)
  %_317 = load i64, i64* @i
  %_318 = add i64 %_314, %_317
  ret i64 %_318
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
