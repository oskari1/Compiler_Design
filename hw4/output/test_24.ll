; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_238 = call i64 @f2()
  ret i64 %_238
}

define i64 @f2() {
  %_237 = call i64 @f3()
  ret i64 %_237
}

define i64 @f3() {
  %_236 = call i64 @f4()
  ret i64 %_236
}

define i64 @f4() {
  %_235 = call i64 @f5()
  ret i64 %_235
}

define i64 @f5() {
  %_234 = call i64 @f6()
  ret i64 %_234
}

define i64 @f6() {
  %_233 = call i64 @f7()
  ret i64 %_233
}

define i64 @f7() {
  %_232 = call i64 @f8()
  ret i64 %_232
}

define i64 @f8() {
  %_231 = call i64 @f9()
  ret i64 %_231
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_228 = alloca i64
  store i64 %argc, i64* %_228
  %_229 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_229
  %_230 = call i64 @f1()
  ret i64 %_230
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
