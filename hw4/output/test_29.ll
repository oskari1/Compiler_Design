; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_329 = alloca i64
  store i64 12, i64* %_329
  %_330 = load i64, i64* %_329
  ret i64 %_330
}

define i64 @g() {
  %_327 = alloca i64
  store i64 10, i64* %_327
  %_328 = load i64, i64* %_327
  ret i64 %_328
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_320 = alloca i64
  store i64 %argc, i64* %_320
  %_321 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_321
  %_322 = call i64 @f()
  %_323 = call i64 @g()
  %_324 = add i64 %_322, %_323
  %_325 = load i64, i64* @i
  %_326 = add i64 %_324, %_325
  ret i64 %_326
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
