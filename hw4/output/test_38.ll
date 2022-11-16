; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_570 = call i64 @f2()
  ret i64 %_570
}

define i64 @f2() {
  %_569 = call i64 @f3()
  ret i64 %_569
}

define i64 @f3() {
  %_568 = call i64 @f4()
  ret i64 %_568
}

define i64 @f4() {
  %_567 = call i64 @f5()
  ret i64 %_567
}

define i64 @f5() {
  %_566 = call i64 @f6()
  ret i64 %_566
}

define i64 @f6() {
  %_565 = call i64 @f7()
  ret i64 %_565
}

define i64 @f7() {
  %_564 = call i64 @f8()
  ret i64 %_564
}

define i64 @f8() {
  %_563 = call i64 @f9()
  ret i64 %_563
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_560 = alloca i64
  store i64 %argc, i64* %_560
  %_561 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_561
  %_562 = call i64 @f1()
  ret i64 %_562
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
