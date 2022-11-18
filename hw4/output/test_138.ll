; generated from: ./dbernhard/str_cat.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([3 x i8]* @_7524 to i8*)
@_7524 = global [3 x i8] c"he\00"
@_7522 = global [3 x i8] c"ll\00"
@_7520 = global [2 x i8] c"o\00"

define i8* @get() {
  %_7523 = getelementptr [3 x i8], [3 x i8]* @_7522, i32 0, i32 0
  ret i8* %_7523
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7513 = alloca i64
  store i64 %argc, i64* %_7513
  %_7514 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7514
  %_7518 = load i8*, i8** @str
  %_7519 = call i8* @get()
  %_7517 = call i8* @string_cat(i8* %_7518, i8* %_7519)
  %_7521 = getelementptr [2 x i8], [2 x i8]* @_7520, i32 0, i32 0
  %_7516 = call i8* @string_cat(i8* %_7517, i8* %_7521)
  call void @print_string(i8* %_7516)
  ret i64 42
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
