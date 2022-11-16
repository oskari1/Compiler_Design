; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2044 = alloca i64
  store i64 %argc, i64* %_2044
  %_2045 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2045
  %_2046 = alloca i8*
  %_raw_array2048 = call i64* @oat_alloc_array(i64 3)
  %_array2049 = bitcast i64* %_raw_array2048 to { i64, [0 x i64] }*
  %_2052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2049, i32 0, i32 1, i32 2
  store i64 110, i64* %_2052
  %_2051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2049, i32 0, i32 1, i32 1
  store i64 110, i64* %_2051
  %_2050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2049, i32 0, i32 1, i32 0
  store i64 110, i64* %_2050
  %_2047 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2049)
  store i8* %_2047, i8** %_2046
  %_2054 = load i8*, i8** %_2046
  call void @print_string(i8* %_2054)
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
