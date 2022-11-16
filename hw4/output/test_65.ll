; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_1189 = global [4 x i8] c"def\00"
@_1187 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1182 = alloca i64
  store i64 %argc, i64* %_1182
  %_1183 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1183
  %_1184 = alloca { i64, [0 x i8*] }*
  %_raw_array1185 = call i64* @oat_alloc_array(i64 2)
  %_array1186 = bitcast i64* %_raw_array1185 to { i64, [0 x i8*] }*
  %_1190 = getelementptr [4 x i8], [4 x i8]* @_1189, i32 0, i32 0
  %_1188 = getelementptr [4 x i8], [4 x i8]* @_1187, i32 0, i32 0
  store { i64, [0 x i8*] }* %_array1186, { i64, [0 x i8*] }** %_1184
  %_1192 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1184
  %_1193 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1192, i32 0, i32 1, i32 0
  %_1194 = load i8*, i8** %_1193
  call void @print_string(i8* %_1194)
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
