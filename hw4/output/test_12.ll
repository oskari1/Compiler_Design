; generated from: oatprograms/globals6.oat
target triple = "x86_64-unknown-linux"
@_117 = global [7 x i8] c"hello!\00"
@_118 = global i8* bitcast ([7 x i8]* @_117 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_114 = alloca i64
  store i64 %argc, i64* %_114
  %_115 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_115
  %_116 = alloca i8**
  store i8** @_118, i8*** %_116
  ret i64 15
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
