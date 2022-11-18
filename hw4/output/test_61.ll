; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_3220 = call i64 @f2()
  ret i64 %_3220
}

define i64 @f2() {
  %_3219 = call i64 @f3()
  ret i64 %_3219
}

define i64 @f3() {
  %_3218 = call i64 @f4()
  ret i64 %_3218
}

define i64 @f4() {
  %_3217 = call i64 @f5()
  ret i64 %_3217
}

define i64 @f5() {
  %_3216 = call i64 @f6()
  ret i64 %_3216
}

define i64 @f6() {
  %_3215 = call i64 @f7()
  ret i64 %_3215
}

define i64 @f7() {
  %_3214 = call i64 @f8()
  ret i64 %_3214
}

define i64 @f8() {
  %_3213 = call i64 @f9()
  ret i64 %_3213
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3210 = alloca i64
  store i64 %argc, i64* %_3210
  %_3211 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3211
  %_3212 = call i64 @f1()
  ret i64 %_3212
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
