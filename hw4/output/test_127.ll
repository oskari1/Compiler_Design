; generated from: ./dbernhard/tests_if8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_5054 = alloca i64
  store i64 %argc, i64* %_5054
  %_5055 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_5055
  %_5056 = call i64 @function(i64 0)
  %_5057 = call i64 @function(i64 1)
  %_5058 = add i64 %_5056, %_5057
  %_5059 = call i64 @function(i64 2)
  %_5060 = add i64 %_5058, %_5059
  %_5061 = call i64 @function(i64 3)
  %_5062 = add i64 %_5060, %_5061
  ret i64 %_5062
}

define i64 @function(i64 %x) {
  %_5038 = alloca i64
  store i64 %x, i64* %_5038
  %_5039 = load i64, i64* %_5038
  %_5040 = icmp eq i64 %_5039, 0
  br i1 %_5040, label %_5041, label %_5042
_5041:
  br label %_5043
_5042:
  %_5044 = load i64, i64* %_5038
  %_5045 = icmp eq i64 %_5044, 1
  br i1 %_5045, label %_5046, label %_5047
_5046:
  br label %_5048
_5047:
  %_5049 = load i64, i64* %_5038
  %_5050 = icmp eq i64 %_5049, 2
  br i1 %_5050, label %_5051, label %_5052
_5051:
  ret i64 50
_5052:
  br label %_5053
_5053:
  br label %_5048
_5048:
  br label %_5043
_5043:
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
