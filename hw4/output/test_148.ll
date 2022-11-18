; generated from: ./dbernhard/tests_if6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7648 = alloca i64
  store i64 %argc, i64* %_7648
  %_7649 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7649
  %_7650 = call i64 @function(i64 0)
  %_7651 = call i64 @function(i64 1)
  %_7652 = add i64 %_7650, %_7651
  %_7653 = call i64 @function(i64 2)
  %_7654 = add i64 %_7652, %_7653
  %_7655 = call i64 @function(i64 3)
  %_7656 = add i64 %_7654, %_7655
  ret i64 %_7656
}

define i64 @function(i64 %x) {
  %_7632 = alloca i64
  store i64 %x, i64* %_7632
  %_7633 = load i64, i64* %_7632
  %_7634 = icmp eq i64 %_7633, 0
  br i1 %_7634, label %_7635, label %_7636
_7635:
  ret i64 10
_7636:
  %_7638 = load i64, i64* %_7632
  %_7639 = icmp eq i64 %_7638, 1
  br i1 %_7639, label %_7640, label %_7641
_7640:
  ret i64 0
_7641:
  %_7643 = load i64, i64* %_7632
  %_7644 = icmp eq i64 %_7643, 2
  br i1 %_7644, label %_7645, label %_7646
_7645:
  ret i64 50
_7646:
  ret i64 5
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
