; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_397 = alloca i64
  store i64 %x, i64* %_397
  %_398 = alloca i64
  store i64 %y, i64* %_398
  %_399 = alloca i64
  store i64 0, i64* %_399
  %_400 = load i64, i64* %_397
  %_401 = icmp sge i64 %_400, 1
  br i1 %_401, label %_402, label %_403
_402:
  %_406 = load i64, i64* %_397
  %_407 = sub i64 %_406, 1
  %_408 = load i64, i64* %_398
  %_405 = call i64 @f(i64 %_407, i64 %_408)
  %_409 = add i64 1, %_405
  store i64 %_409, i64* %_399
  br label %_404
_403:
  %_410 = load i64, i64* %_397
  %_411 = load i64, i64* %_398
  %_412 = add i64 %_410, %_411
  store i64 %_412, i64* %_399
  br label %_404
_404:
  %_413 = load i64, i64* %_399
  ret i64 %_413
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_388 = alloca i64
  store i64 %argc, i64* %_388
  %_389 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_389
  %_390 = alloca i64
  %_391 = alloca i64
  store i64 3, i64* %_390
  store i64 3, i64* %_391
  %_393 = load i64, i64* %_390
  %_394 = load i64, i64* %_391
  %_392 = call i64 @f(i64 %_393, i64 %_394)
  %_395 = load i64, i64* @i
  %_396 = add i64 %_392, %_395
  ret i64 %_396
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
