; generated from: ./dbernhard/tests_if2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4921 = alloca i64
  store i64 %argc, i64* %_4921
  %_4922 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4922
  %_4923 = call i64 @function(i64 0)
  %_4924 = call i64 @function(i64 1)
  %_4925 = add i64 %_4923, %_4924
  %_4926 = call i64 @function(i64 2)
  %_4927 = add i64 %_4925, %_4926
  ret i64 %_4927
}

define i64 @function(i64 %x) {
  %_4915 = alloca i64
  store i64 %x, i64* %_4915
  %_4916 = load i64, i64* %_4915
  %_4917 = icmp eq i64 %_4916, 0
  br i1 %_4917, label %_4918, label %_4919
_4918:
  ret i64 1
_4919:
  br label %_4920
_4920:
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
