; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_516 = call i64 @f2()
  ret i64 %_516
}

define i64 @f2() {
  %_515 = call i64 @f3()
  ret i64 %_515
}

define i64 @f3() {
  %_514 = call i64 @f4()
  ret i64 %_514
}

define i64 @f4() {
  %_513 = call i64 @f5()
  ret i64 %_513
}

define i64 @f5() {
  %_512 = call i64 @f6()
  ret i64 %_512
}

define i64 @f6() {
  %_511 = call i64 @f7()
  ret i64 %_511
}

define i64 @f7() {
  %_510 = call i64 @f8()
  ret i64 %_510
}

define i64 @f8() {
  %_509 = call i64 @f9()
  ret i64 %_509
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_506 = alloca i64
  store i64 %argc, i64* %_506
  %_507 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_507
  %_508 = call i64 @f1()
  ret i64 %_508
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
