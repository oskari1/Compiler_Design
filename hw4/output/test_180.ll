; generated from: ./nicdard/and2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8484 = alloca i64
  store i64 %argc, i64* %_8484
  %_8485 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8485
  %_8486 = alloca i64
  %_8487 = alloca i1
  %_8490 = alloca i1
  store i64 10, i64* %_8486
  %_8488 = load i64, i64* %_8486
  %_8489 = icmp sge i64 %_8488, 10
  store i1 %_8489, i1* %_8487
  %_8491 = load i64, i64* %_8486
  %_8492 = icmp slt i64 %_8491, 10
  store i1 %_8492, i1* %_8490
  %_8493 = load i1, i1* %_8487
  br i1 %_8493, label %_8494, label %_8495
_8494:
  %_8497 = load i64, i64* %_8486
  %_8498 = add i64 %_8497, 1
  store i64 %_8498, i64* %_8486
  br label %_8496
_8495:
  br label %_8496
_8496:
  %_8499 = load i1, i1* %_8490
  br i1 %_8499, label %_8500, label %_8501
_8500:
  %_8503 = load i64, i64* %_8486
  %_8504 = add i64 %_8503, 2
  store i64 %_8504, i64* %_8486
  br label %_8502
_8501:
  br label %_8502
_8502:
  %_8505 = load i1, i1* %_8487
  %_8506 = load i1, i1* %_8490
  %_8507 = and i1 %_8505, %_8506
  br i1 %_8507, label %_8508, label %_8509
_8508:
  %_8511 = load i64, i64* %_8486
  %_8512 = add i64 %_8511, 15
  store i64 %_8512, i64* %_8486
  br label %_8510
_8509:
  br label %_8510
_8510:
  %_8513 = load i64, i64* %_8486
  ret i64 %_8513
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
