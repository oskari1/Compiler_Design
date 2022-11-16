; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_1816 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1813 = alloca i64
  store i64 %argc, i64* %_1813
  %_1814 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1814
  %_1815 = alloca i8*
  %_1817 = getelementptr [13 x i8], [13 x i8]* @_1816, i32 0, i32 0
  store i8* %_1817, i8** %_1815
  %_1819 = load i8*, i8** %_1815
  call void @print_string(i8* %_1819)
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
