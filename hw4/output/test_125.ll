; generated from: ./dbernhard/tests_if6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4998 = alloca i64
  store i64 %argc, i64* %_4998
  %_4999 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4999
  %_5000 = call i64 @function(i64 0)
  %_5001 = call i64 @function(i64 1)
  %_5002 = add i64 %_5000, %_5001
  %_5003 = call i64 @function(i64 2)
  %_5004 = add i64 %_5002, %_5003
  %_5005 = call i64 @function(i64 3)
  %_5006 = add i64 %_5004, %_5005
  ret i64 %_5006
}

define i64 @function(i64 %x) {
  %_4982 = alloca i64
  store i64 %x, i64* %_4982
  %_4983 = load i64, i64* %_4982
  %_4984 = icmp eq i64 %_4983, 0
  br i1 %_4984, label %_4985, label %_4986
_4985:
  ret i64 10
_4986:
  %_4988 = load i64, i64* %_4982
  %_4989 = icmp eq i64 %_4988, 1
  br i1 %_4989, label %_4990, label %_4991
_4990:
  ret i64 0
_4991:
  %_4993 = load i64, i64* %_4982
  %_4994 = icmp eq i64 %_4993, 2
  br i1 %_4994, label %_4995, label %_4996
_4995:
  ret i64 50
_4996:
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
