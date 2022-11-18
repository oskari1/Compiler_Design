; generated from: ./nicdard/or2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8540 = alloca i64
  store i64 %argc, i64* %_8540
  %_8541 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8541
  %_8542 = alloca i64
  %_8543 = alloca i1
  %_8546 = alloca i1
  store i64 10, i64* %_8542
  %_8544 = load i64, i64* %_8542
  %_8545 = icmp eq i64 %_8544, 10
  store i1 %_8545, i1* %_8543
  %_8547 = load i64, i64* %_8542
  %_8548 = icmp ne i64 %_8547, 10
  store i1 %_8548, i1* %_8546
  %_8549 = load i1, i1* %_8543
  br i1 %_8549, label %_8550, label %_8551
_8550:
  %_8553 = load i64, i64* %_8542
  %_8554 = add i64 %_8553, 1
  store i64 %_8554, i64* %_8542
  br label %_8552
_8551:
  br label %_8552
_8552:
  %_8555 = load i1, i1* %_8546
  br i1 %_8555, label %_8556, label %_8557
_8556:
  %_8559 = load i64, i64* %_8542
  %_8560 = add i64 %_8559, 2
  store i64 %_8560, i64* %_8542
  br label %_8558
_8557:
  br label %_8558
_8558:
  %_8561 = load i1, i1* %_8543
  %_8562 = load i1, i1* %_8546
  %_8563 = or i1 %_8561, %_8562
  br i1 %_8563, label %_8564, label %_8565
_8564:
  %_8567 = load i64, i64* %_8542
  %_8568 = add i64 %_8567, 15
  store i64 %_8568, i64* %_8542
  br label %_8566
_8565:
  br label %_8566
_8566:
  %_8569 = load i64, i64* %_8542
  ret i64 %_8569
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
