; generated from: oatprograms/run51.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_2400 = alloca i64
  store i64 %x1, i64* %_2400
  %_2401 = alloca i64
  store i64 %x2, i64* %_2401
  %_2402 = alloca i64
  store i64 %x3, i64* %_2402
  %_2403 = alloca i64
  store i64 %x4, i64* %_2403
  %_2404 = alloca i64
  store i64 %x5, i64* %_2404
  %_2405 = alloca i64
  store i64 %x6, i64* %_2405
  %_2406 = alloca i64
  store i64 %x7, i64* %_2406
  %_2407 = alloca i64
  store i64 %x8, i64* %_2407
  %_2408 = load i64, i64* %_2400
  %_2409 = load i64, i64* %_2401
  %_2410 = add i64 %_2408, %_2409
  %_2411 = load i64, i64* %_2402
  %_2412 = add i64 %_2410, %_2411
  %_2413 = load i64, i64* %_2403
  %_2414 = add i64 %_2412, %_2413
  %_2415 = load i64, i64* %_2404
  %_2416 = add i64 %_2414, %_2415
  %_2417 = load i64, i64* %_2405
  %_2418 = add i64 %_2416, %_2417
  %_2419 = load i64, i64* %_2406
  %_2420 = add i64 %_2418, %_2419
  %_2421 = load i64, i64* %_2407
  %_2422 = add i64 %_2420, %_2421
  ret i64 %_2422
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2391 = alloca i64
  store i64 %argc, i64* %_2391
  %_2392 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2392
  %_2393 = alloca i64
  %_2395 = sub i64 0, 5
  %_2396 = sub i64 0, 4
  %_2397 = sub i64 0, 3
  %_2394 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_2395, i64 %_2396, i64 %_2397)
  store i64 %_2394, i64* %_2393
  %_2399 = load i64, i64* %_2393
  call void @print_int(i64 %_2399)
  ret i64 41
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
