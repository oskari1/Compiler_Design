; generated from: ./dbernhard/tests_if3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7589 = alloca i64
  store i64 %argc, i64* %_7589
  %_7590 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7590
  %_7591 = call i64 @function(i64 0)
  %_7592 = call i64 @function(i64 1)
  %_7593 = add i64 %_7591, %_7592
  %_7594 = call i64 @function(i64 2)
  %_7595 = add i64 %_7593, %_7594
  ret i64 %_7595
}

define i64 @function(i64 %x) {
  %_7578 = alloca i64
  store i64 %x, i64* %_7578
  %_7579 = load i64, i64* %_7578
  %_7580 = icmp eq i64 %_7579, 0
  br i1 %_7580, label %_7581, label %_7582
_7581:
  ret i64 10
_7582:
  %_7584 = load i64, i64* %_7578
  %_7585 = icmp eq i64 %_7584, 1
  br i1 %_7585, label %_7586, label %_7587
_7586:
  ret i64 0
_7587:
  br label %_7588
_7588:
  br label %_7583
_7583:
  ret i64 100
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
