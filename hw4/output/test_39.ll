; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_545 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_542 = alloca i64
  store i64 %argc, i64* %_542
  %_543 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_543
  %_544 = alloca i8*
  %_546 = getelementptr [13 x i8], [13 x i8]* @_545, i32 0, i32 0
  store i8* %_546, i8** %_544
  %_548 = load i8*, i8** %_544
  call void @print_string(i8* %_548)
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
