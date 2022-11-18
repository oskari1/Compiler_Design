; generated from: ./dbernhard/simple_while.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7396 = alloca i64
  store i64 %argc, i64* %_7396
  %_7397 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7397
  %_7398 = alloca i64
  store i64 0, i64* %_7398
  br label %_7401
_7401:
  %_7399 = load i64, i64* %_7398
  %_7400 = icmp slt i64 %_7399, 10
  br i1 %_7400, label %_7402, label %_7403
_7402:
  %_7404 = load i64, i64* %_7398
  %_7405 = add i64 %_7404, 1
  store i64 %_7405, i64* %_7398
  br label %_7401
_7403:
  %_7406 = load i64, i64* %_7398
  ret i64 %_7406
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
