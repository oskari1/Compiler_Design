; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_475 = global [13 x i8] c"Hello world!\00"
@_476 = global i8* bitcast ([13 x i8]* @_475 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_472 = alloca i64
  store i64 %argc, i64* %_472
  %_473 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_473
  %_474 = alloca i8**
  store i8** @_476, i8*** %_474
  %_478 = load i8**, i8*** %_474
  call void @print_string(i8* %_478)
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
