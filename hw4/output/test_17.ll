; generated from: oatprograms/run54.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_2452 = alloca i64
  store i64 %x1, i64* %_2452
  %_2453 = alloca i64
  store i64 %x2, i64* %_2453
  %_2454 = alloca i64
  store i64 %x3, i64* %_2454
  %_2455 = alloca i64
  store i64 %x4, i64* %_2455
  %_2456 = alloca i64
  store i64 %x5, i64* %_2456
  %_2457 = alloca i64
  store i64 %x6, i64* %_2457
  %_2458 = alloca i64
  store i64 %x7, i64* %_2458
  %_2459 = alloca i64
  store i64 %x8, i64* %_2459
  %_2460 = load i64, i64* %_2452
  %_2461 = load i64, i64* %_2453
  %_2462 = add i64 %_2460, %_2461
  %_2463 = load i64, i64* %_2454
  %_2464 = add i64 %_2462, %_2463
  %_2465 = load i64, i64* %_2455
  %_2466 = add i64 %_2464, %_2465
  ret i64 %_2466
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2446 = alloca i64
  store i64 %argc, i64* %_2446
  %_2447 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2447
  %_2449 = sub i64 0, 5
  %_2450 = sub i64 0, 4
  %_2451 = sub i64 0, 3
  %_2448 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_2449, i64 %_2450, i64 %_2451)
  ret i64 %_2448
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
