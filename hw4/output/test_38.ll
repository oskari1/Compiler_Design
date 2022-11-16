; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_448 = alloca i64
  store i64 %x, i64* %_448
  %_449 = alloca i64
  store i64 1, i64* %_449
  br label %_452
_452:
  %_450 = load i64, i64* %_448
  %_451 = icmp sgt i64 %_450, 0
  br i1 %_451, label %_453, label %_454
_453:
  %_455 = load i64, i64* %_449
  %_456 = load i64, i64* %_448
  %_457 = mul i64 %_455, %_456
  store i64 %_457, i64* %_449
  %_458 = load i64, i64* %_448
  %_459 = sub i64 %_458, 1
  store i64 %_459, i64* %_448
  br label %_452
_454:
  %_460 = load i64, i64* %_449
  ret i64 %_460
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_443 = alloca i64
  store i64 %argc, i64* %_443
  %_444 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_444
  %_447 = call i64 @fact(i64 5)
  %_446 = call i8* @string_of_int(i64 %_447)
  call void @print_string(i8* %_446)
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
