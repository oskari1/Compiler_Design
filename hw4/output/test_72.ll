; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_3465 = alloca i64
  store i64 %x, i64* %_3465
  %_3466 = alloca i64
  store i64 %y, i64* %_3466
  %_3467 = alloca i64
  store i64 0, i64* %_3467
  %_3468 = load i64, i64* %_3465
  %_3469 = icmp sge i64 %_3468, 1
  br i1 %_3469, label %_3470, label %_3471
_3470:
  %_3474 = load i64, i64* %_3465
  %_3475 = sub i64 %_3474, 1
  %_3476 = load i64, i64* %_3466
  %_3473 = call i64 @f(i64 %_3475, i64 %_3476)
  %_3477 = add i64 1, %_3473
  store i64 %_3477, i64* %_3467
  br label %_3472
_3471:
  %_3478 = load i64, i64* %_3465
  %_3479 = load i64, i64* %_3466
  %_3480 = add i64 %_3478, %_3479
  store i64 %_3480, i64* %_3467
  br label %_3472
_3472:
  %_3481 = load i64, i64* %_3467
  ret i64 %_3481
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3456 = alloca i64
  store i64 %argc, i64* %_3456
  %_3457 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3457
  %_3458 = alloca i64
  %_3459 = alloca i64
  store i64 3, i64* %_3458
  store i64 3, i64* %_3459
  %_3461 = load i64, i64* %_3458
  %_3462 = load i64, i64* %_3459
  %_3460 = call i64 @f(i64 %_3461, i64 %_3462)
  %_3463 = load i64, i64* @i
  %_3464 = add i64 %_3460, %_3463
  ret i64 %_3464
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
