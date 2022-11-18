; generated from: oatprograms/run52.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_2429 = alloca i64
  store i64 %x1, i64* %_2429
  %_2430 = alloca i64
  store i64 %x2, i64* %_2430
  %_2431 = alloca i64
  store i64 %x3, i64* %_2431
  %_2432 = alloca i64
  store i64 %x4, i64* %_2432
  %_2433 = alloca i64
  store i64 %x5, i64* %_2433
  %_2434 = alloca i64
  store i64 %x6, i64* %_2434
  %_2435 = alloca i64
  store i64 %x7, i64* %_2435
  %_2436 = alloca i64
  store i64 %x8, i64* %_2436
  %_2437 = load i64, i64* %_2429
  %_2438 = load i64, i64* %_2430
  %_2439 = add i64 %_2437, %_2438
  %_2440 = load i64, i64* %_2431
  %_2441 = add i64 %_2439, %_2440
  %_2442 = load i64, i64* %_2432
  %_2443 = add i64 %_2441, %_2442
  %_2444 = load i64, i64* %_2433
  %_2445 = add i64 %_2443, %_2444
  ret i64 %_2445
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2423 = alloca i64
  store i64 %argc, i64* %_2423
  %_2424 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2424
  %_2426 = sub i64 0, 5
  %_2427 = sub i64 0, 4
  %_2428 = sub i64 0, 3
  %_2425 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_2426, i64 %_2427, i64 %_2428)
  ret i64 %_2425
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
