; generated from: ./dbernhard/tests_if2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7571 = alloca i64
  store i64 %argc, i64* %_7571
  %_7572 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7572
  %_7573 = call i64 @function(i64 0)
  %_7574 = call i64 @function(i64 1)
  %_7575 = add i64 %_7573, %_7574
  %_7576 = call i64 @function(i64 2)
  %_7577 = add i64 %_7575, %_7576
  ret i64 %_7577
}

define i64 @function(i64 %x) {
  %_7565 = alloca i64
  store i64 %x, i64* %_7565
  %_7566 = load i64, i64* %_7565
  %_7567 = icmp eq i64 %_7566, 0
  br i1 %_7567, label %_7568, label %_7569
_7568:
  ret i64 1
_7569:
  br label %_7570
_7570:
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
