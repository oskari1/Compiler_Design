; generated from: ./dbernhard/tests_if.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4908 = alloca i64
  store i64 %argc, i64* %_4908
  %_4909 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4909
  %_4910 = call i64 @function(i64 0)
  %_4911 = call i64 @function(i64 1)
  %_4912 = add i64 %_4910, %_4911
  %_4913 = call i64 @function(i64 2)
  %_4914 = add i64 %_4912, %_4913
  ret i64 %_4914
}

define i64 @function(i64 %x) {
  %_4902 = alloca i64
  store i64 %x, i64* %_4902
  %_4903 = load i64, i64* %_4902
  %_4904 = icmp eq i64 %_4903, 0
  br i1 %_4904, label %_4905, label %_4906
_4905:
  ret i64 1
_4906:
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
