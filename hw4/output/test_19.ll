; generated from: oatprograms/run56.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_2492 = alloca i64
  store i64 %x1, i64* %_2492
  %_2493 = alloca i64
  store i64 %x2, i64* %_2493
  %_2494 = alloca i64
  store i64 %x3, i64* %_2494
  %_2495 = alloca i64
  store i64 %x4, i64* %_2495
  %_2496 = alloca i64
  store i64 %x5, i64* %_2496
  %_2497 = alloca i64
  store i64 %x6, i64* %_2497
  %_2498 = alloca i64
  store i64 %x7, i64* %_2498
  %_2499 = alloca i64
  store i64 %x8, i64* %_2499
  %_2500 = load i64, i64* %_2492
  %_2501 = load i64, i64* %_2493
  %_2502 = add i64 %_2500, %_2501
  %_2503 = load i64, i64* %_2495
  %_2504 = add i64 %_2502, %_2503
  ret i64 %_2504
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2486 = alloca i64
  store i64 %argc, i64* %_2486
  %_2487 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2487
  %_2489 = sub i64 0, 5
  %_2490 = sub i64 0, 4
  %_2491 = sub i64 0, 3
  %_2488 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_2489, i64 %_2490, i64 %_2491)
  ret i64 %_2488
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
