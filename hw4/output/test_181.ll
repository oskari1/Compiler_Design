; generated from: ./nicdard/or1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8514 = alloca i64
  store i64 %argc, i64* %_8514
  %_8515 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8515
  %_8516 = alloca i64
  %_8517 = alloca i1
  %_8518 = alloca i1
  store i64 10, i64* %_8516
  store i1 1, i1* %_8517
  store i1 0, i1* %_8518
  %_8519 = load i1, i1* %_8517
  br i1 %_8519, label %_8520, label %_8521
_8520:
  %_8523 = load i64, i64* %_8516
  %_8524 = add i64 %_8523, 1
  store i64 %_8524, i64* %_8516
  br label %_8522
_8521:
  br label %_8522
_8522:
  %_8525 = load i1, i1* %_8518
  br i1 %_8525, label %_8526, label %_8527
_8526:
  %_8529 = load i64, i64* %_8516
  %_8530 = add i64 %_8529, 2
  store i64 %_8530, i64* %_8516
  br label %_8528
_8527:
  br label %_8528
_8528:
  %_8531 = load i1, i1* %_8517
  %_8532 = load i1, i1* %_8518
  %_8533 = or i1 %_8531, %_8532
  br i1 %_8533, label %_8534, label %_8535
_8534:
  %_8537 = load i64, i64* %_8516
  %_8538 = add i64 %_8537, 15
  store i64 %_8538, i64* %_8516
  br label %_8536
_8535:
  br label %_8536
_8536:
  %_8539 = load i64, i64* %_8516
  ret i64 %_8539
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
