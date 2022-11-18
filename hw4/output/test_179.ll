; generated from: ./nicdard/and1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8458 = alloca i64
  store i64 %argc, i64* %_8458
  %_8459 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8459
  %_8460 = alloca i64
  %_8461 = alloca i1
  %_8462 = alloca i1
  store i64 10, i64* %_8460
  store i1 1, i1* %_8461
  store i1 0, i1* %_8462
  %_8463 = load i1, i1* %_8461
  br i1 %_8463, label %_8464, label %_8465
_8464:
  %_8467 = load i64, i64* %_8460
  %_8468 = add i64 %_8467, 1
  store i64 %_8468, i64* %_8460
  br label %_8466
_8465:
  br label %_8466
_8466:
  %_8469 = load i1, i1* %_8462
  br i1 %_8469, label %_8470, label %_8471
_8470:
  %_8473 = load i64, i64* %_8460
  %_8474 = add i64 %_8473, 2
  store i64 %_8474, i64* %_8460
  br label %_8472
_8471:
  br label %_8472
_8472:
  %_8475 = load i1, i1* %_8461
  %_8476 = load i1, i1* %_8462
  %_8477 = and i1 %_8475, %_8476
  br i1 %_8477, label %_8478, label %_8479
_8478:
  %_8481 = load i64, i64* %_8460
  %_8482 = add i64 %_8481, 15
  store i64 %_8482, i64* %_8460
  br label %_8480
_8479:
  br label %_8480
_8480:
  %_8483 = load i64, i64* %_8460
  ret i64 %_8483
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
