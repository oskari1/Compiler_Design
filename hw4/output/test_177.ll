; generated from: ./thbwd/nested_return_bool.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_6123 = alloca i64
  store i64 %argc, i64* %_6123
  %_6124 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_6124
  %_6125 = call i1 @function(i64 0)
  %_6126 = call i1 @function(i64 1)
  %_6127 = call i1 @function(i64 2)
  ret i64 0
}

define i1 @function(i64 %x) {
  %_6111 = alloca i64
  store i64 %x, i64* %_6111
  %_6112 = load i64, i64* %_6111
  %_6113 = icmp eq i64 %_6112, 0
  br i1 %_6113, label %_6114, label %_6115
_6114:
  ret i1 1
_6115:
  %_6117 = load i64, i64* %_6111
  %_6118 = icmp eq i64 %_6117, 1
  br i1 %_6118, label %_6119, label %_6120
_6119:
  ret i1 0
_6120:
  %_6122 = icmp eq i1 0, 0
  ret i1 %_6122
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
