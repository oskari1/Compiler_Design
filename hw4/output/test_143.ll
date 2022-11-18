; generated from: ./dbernhard/tests_if.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7558 = alloca i64
  store i64 %argc, i64* %_7558
  %_7559 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7559
  %_7560 = call i64 @function(i64 0)
  %_7561 = call i64 @function(i64 1)
  %_7562 = add i64 %_7560, %_7561
  %_7563 = call i64 @function(i64 2)
  %_7564 = add i64 %_7562, %_7563
  ret i64 %_7564
}

define i64 @function(i64 %x) {
  %_7552 = alloca i64
  store i64 %x, i64* %_7552
  %_7553 = load i64, i64* %_7552
  %_7554 = icmp eq i64 %_7553, 0
  br i1 %_7554, label %_7555, label %_7556
_7555:
  ret i64 1
_7556:
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
