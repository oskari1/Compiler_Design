; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_355 = call i64 @f2()
  ret i64 %_355
}

define i64 @f2() {
  %_354 = call i64 @f3()
  ret i64 %_354
}

define i64 @f3() {
  %_353 = call i64 @f4()
  ret i64 %_353
}

define i64 @f4() {
  %_352 = call i64 @f5()
  ret i64 %_352
}

define i64 @f5() {
  %_351 = call i64 @f6()
  ret i64 %_351
}

define i64 @f6() {
  %_350 = call i64 @f7()
  ret i64 %_350
}

define i64 @f7() {
  %_349 = call i64 @f8()
  ret i64 %_349
}

define i64 @f8() {
  %_348 = call i64 @f9()
  ret i64 %_348
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_345 = alloca i64
  store i64 %argc, i64* %_345
  %_346 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_346
  %_347 = call i64 @f1()
  ret i64 %_347
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
