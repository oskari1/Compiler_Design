; generated from: ./dbernhard/tests_if5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4975 = alloca i64
  store i64 %argc, i64* %_4975
  %_4976 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4976
  %_4977 = call i64 @function(i64 0)
  %_4978 = call i64 @function(i64 1)
  %_4979 = add i64 %_4977, %_4978
  %_4980 = call i64 @function(i64 2)
  %_4981 = add i64 %_4979, %_4980
  ret i64 %_4981
}

define i64 @function(i64 %x) {
  %_4964 = alloca i64
  store i64 %x, i64* %_4964
  %_4965 = load i64, i64* %_4964
  %_4966 = icmp eq i64 %_4965, 0
  br i1 %_4966, label %_4967, label %_4968
_4967:
  ret i64 10
_4968:
  %_4970 = load i64, i64* %_4964
  %_4971 = icmp eq i64 %_4970, 1
  br i1 %_4971, label %_4972, label %_4973
_4972:
  ret i64 0
_4973:
  ret i64 50
_4974:
  br label %_4969
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
