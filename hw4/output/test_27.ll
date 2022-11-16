; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_279 = call i64 @f2()
  ret i64 %_279
}

define i64 @f2() {
  %_278 = call i64 @f3()
  ret i64 %_278
}

define i64 @f3() {
  %_277 = call i64 @f4()
  ret i64 %_277
}

define i64 @f4() {
  %_276 = call i64 @f5()
  ret i64 %_276
}

define i64 @f5() {
  %_275 = call i64 @f6()
  ret i64 %_275
}

define i64 @f6() {
  %_274 = call i64 @f7()
  ret i64 %_274
}

define i64 @f7() {
  %_273 = call i64 @f8()
  ret i64 %_273
}

define i64 @f8() {
  %_272 = call i64 @f9()
  ret i64 %_272
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_269 = alloca i64
  store i64 %argc, i64* %_269
  %_270 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_270
  %_271 = call i64 @f1()
  ret i64 %_271
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
