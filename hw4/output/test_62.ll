; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1157 = alloca i64
  store i64 %argc, i64* %_1157
  %_1158 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1158
  %_1159 = alloca { i64, [0 x i64] }*
  %_raw_array1160 = call i64* @oat_alloc_array(i64 3)
  %_array1161 = bitcast i64* %_raw_array1160 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1161, { i64, [0 x i64] }** %_1159
  %_1162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1159
  %_1163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1162, i32 0, i32 1, i32 2
  %_1164 = load i64, i64* %_1163
  ret i64 %_1164
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
