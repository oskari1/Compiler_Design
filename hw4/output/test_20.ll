; generated from: oatprograms/setg.oat
target triple = "x86_64-unknown-linux"
@x = global i64 42

define i64 @set_x(i64 %y) {
  %_2510 = alloca i64
  store i64 %y, i64* %_2510
  %_2511 = alloca i64
  store i64 0, i64* %_2511
  br label %_2515
_2515:
  %_2512 = load i64, i64* %_2511
  %_2513 = load i64, i64* %_2510
  %_2514 = icmp slt i64 %_2512, %_2513
  br i1 %_2514, label %_2516, label %_2517
_2516:
  %_2518 = load i64, i64* %_2511
  %_2519 = add i64 %_2518, 1
  store i64 %_2519, i64* %_2511
  %_2520 = load i64, i64* %_2511
  %_2521 = icmp eq i64 %_2520, 37
  br i1 %_2521, label %_2522, label %_2523
_2522:
  %_2525 = load i64, i64* %_2511
  ret i64 %_2525
_2523:
  br label %_2524
_2524:
  br label %_2515
_2517:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2505 = alloca i64
  store i64 %argc, i64* %_2505
  %_2506 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2506
  %_2507 = call i64 @set_x(i64 30)
  store i64 %_2507, i64* @x
  %_2509 = load i64, i64* @x
  call void @print_int(i64 %_2509)
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
