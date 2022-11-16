; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_549 = alloca i64
  store i64 %argc, i64* %_549
  %_550 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_550
  %_551 = alloca i64
  store i64 1, i64* %_551
  br label %_555
_555:
  %_552 = load i64, i64* %_551
  %_553 = load i64, i64* %_549
  %_554 = icmp slt i64 %_552, %_553
  br i1 %_554, label %_556, label %_557
_556:
  %_559 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_550
  %_560 = load i64, i64* %_551
  %_561 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_559, i32 0, i32 1, i64 %_560
  %_562 = load i8*, i8** %_561
  call void @print_string(i8* %_562)
  %_563 = load i64, i64* %_551
  %_564 = add i64 %_563, 1
  store i64 %_564, i64* %_551
  br label %_555
_557:
  %_565 = load i64, i64* %_549
  ret i64 %_565
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
