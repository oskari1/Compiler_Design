; generated from: oatprograms/run55.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_2473 = alloca i64
  store i64 %x1, i64* %_2473
  %_2474 = alloca i64
  store i64 %x2, i64* %_2474
  %_2475 = alloca i64
  store i64 %x3, i64* %_2475
  %_2476 = alloca i64
  store i64 %x4, i64* %_2476
  %_2477 = alloca i64
  store i64 %x5, i64* %_2477
  %_2478 = alloca i64
  store i64 %x6, i64* %_2478
  %_2479 = alloca i64
  store i64 %x7, i64* %_2479
  %_2480 = alloca i64
  store i64 %x8, i64* %_2480
  %_2481 = load i64, i64* %_2473
  %_2482 = load i64, i64* %_2474
  %_2483 = add i64 %_2481, %_2482
  %_2484 = load i64, i64* %_2475
  %_2485 = add i64 %_2483, %_2484
  ret i64 %_2485
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2467 = alloca i64
  store i64 %argc, i64* %_2467
  %_2468 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2468
  %_2470 = sub i64 0, 5
  %_2471 = sub i64 0, 4
  %_2472 = sub i64 0, 3
  %_2469 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_2470, i64 %_2471, i64 %_2472)
  ret i64 %_2469
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
