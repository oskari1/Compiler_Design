; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_228 = call i64 @f2()
  ret i64 %_228
}

define i64 @f2() {
  %_227 = call i64 @f3()
  ret i64 %_227
}

define i64 @f3() {
  %_226 = call i64 @f4()
  ret i64 %_226
}

define i64 @f4() {
  %_225 = call i64 @f5()
  ret i64 %_225
}

define i64 @f5() {
  %_224 = call i64 @f6()
  ret i64 %_224
}

define i64 @f6() {
  %_223 = call i64 @f7()
  ret i64 %_223
}

define i64 @f7() {
  %_222 = call i64 @f8()
  ret i64 %_222
}

define i64 @f8() {
  %_221 = call i64 @f9()
  ret i64 %_221
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_218 = alloca i64
  store i64 %argc, i64* %_218
  %_219 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_219
  %_220 = call i64 @f1()
  ret i64 %_220
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
