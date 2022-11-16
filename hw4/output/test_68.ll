; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1223 = alloca i64
  store i64 %argc, i64* %_1223
  %_1224 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1224
  %_1225 = alloca { i64, [0 x i64] }*
  %_1228 = alloca i8*
  %_raw_array1226 = call i64* @oat_alloc_array(i64 3)
  %_array1227 = bitcast i64* %_raw_array1226 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1227, { i64, [0 x i64] }** %_1225
  %_1230 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1225
  %_1229 = call i8* @string_of_array({ i64, [0 x i64] }* %_1230)
  store i8* %_1229, i8** %_1228
  %_1232 = load i8*, i8** %_1228
  call void @print_string(i8* %_1232)
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
