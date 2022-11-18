; generated from: ./dbernhard/while_false.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7425 = alloca i64
  store i64 %argc, i64* %_7425
  %_7426 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7426
  %_7427 = call i64 @function(i64 0)
  %_7428 = call i64 @function(i64 1)
  %_7429 = add i64 %_7427, %_7428
  %_7430 = call i64 @function(i64 2)
  %_7431 = add i64 %_7429, %_7430
  %_7432 = call i64 @function(i64 3)
  %_7433 = add i64 %_7431, %_7432
  ret i64 %_7433
}

define i64 @function(i64 %x) {
  %_7421 = alloca i64
  store i64 %x, i64* %_7421
  br label %_7422
_7422:
  br i1 0, label %_7423, label %_7424
_7423:
  br label %_7422
_7424:
  ret i64 1
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
