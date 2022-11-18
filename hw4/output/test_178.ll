; generated from: ./nicdard/for.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8443 = alloca i64
  store i64 %argc, i64* %_8443
  %_8444 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8444
  %_8445 = alloca i64
  %_8446 = alloca i64
  %_8447 = alloca i64
  store i64 0, i64* %_8445
  store i64 0, i64* %_8446
  store i64 10, i64* %_8447
  br label %_8450
_8450:
  %_8448 = load i64, i64* %_8446
  %_8449 = icmp slt i64 %_8448, 10
  br i1 %_8449, label %_8451, label %_8452
_8451:
  %_8453 = load i64, i64* %_8445
  %_8454 = add i64 %_8453, 1
  store i64 %_8454, i64* %_8445
  %_8455 = load i64, i64* %_8446
  %_8456 = add i64 %_8455, 2
  store i64 %_8456, i64* %_8446
  br label %_8450
_8452:
  %_8457 = load i64, i64* %_8445
  ret i64 %_8457
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
