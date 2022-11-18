; generated from: ./dbernhard/tests_if4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7607 = alloca i64
  store i64 %argc, i64* %_7607
  %_7608 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7608
  %_7609 = call i64 @function(i64 0)
  %_7610 = call i64 @function(i64 1)
  %_7611 = add i64 %_7609, %_7610
  %_7612 = call i64 @function(i64 2)
  %_7613 = add i64 %_7611, %_7612
  ret i64 %_7613
}

define i64 @function(i64 %x) {
  %_7596 = alloca i64
  store i64 %x, i64* %_7596
  %_7597 = load i64, i64* %_7596
  %_7598 = icmp eq i64 %_7597, 0
  br i1 %_7598, label %_7599, label %_7600
_7599:
  ret i64 10
_7600:
  %_7602 = load i64, i64* %_7596
  %_7603 = icmp eq i64 %_7602, 1
  br i1 %_7603, label %_7604, label %_7605
_7604:
  ret i64 0
_7605:
  ret i64 50
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
