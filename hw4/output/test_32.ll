; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_408 = alloca i64
  store i64 12, i64* %_408
  %_409 = load i64, i64* %_408
  ret i64 %_409
}

define i64 @g() {
  %_406 = alloca i64
  store i64 10, i64* %_406
  %_407 = load i64, i64* %_406
  ret i64 %_407
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_399 = alloca i64
  store i64 %argc, i64* %_399
  %_400 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_400
  %_401 = call i64 @f()
  %_402 = call i64 @g()
  %_403 = add i64 %_401, %_402
  %_404 = load i64, i64* @i
  %_405 = add i64 %_403, %_404
  ret i64 %_405
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
