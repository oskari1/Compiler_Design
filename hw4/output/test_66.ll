; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_1210 = global [4 x i8] c"123\00"
@_1208 = global [4 x i8] c"789\00"
@_1204 = global [4 x i8] c"def\00"
@_1202 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1195 = alloca i64
  store i64 %argc, i64* %_1195
  %_1196 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1196
  %_1197 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1198 = call i64* @oat_alloc_array(i64 2)
  %_array1199 = bitcast i64* %_raw_array1198 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1206 = call i64* @oat_alloc_array(i64 2)
  %_array1207 = bitcast i64* %_raw_array1206 to { i64, [0 x i8*] }*
  %_1211 = getelementptr [4 x i8], [4 x i8]* @_1210, i32 0, i32 0
  %_1209 = getelementptr [4 x i8], [4 x i8]* @_1208, i32 0, i32 0
  %_raw_array1200 = call i64* @oat_alloc_array(i64 2)
  %_array1201 = bitcast i64* %_raw_array1200 to { i64, [0 x i8*] }*
  %_1205 = getelementptr [4 x i8], [4 x i8]* @_1204, i32 0, i32 0
  %_1203 = getelementptr [4 x i8], [4 x i8]* @_1202, i32 0, i32 0
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1199, { i64, [0 x { i64, [0 x i8*] }*] }** %_1197
  %_1213 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_1197
  %_1214 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_1213, i32 0, i32 1, i32 1
  %_1215 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1214
  %_1216 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1215, i32 0, i32 1, i32 1
  %_1217 = load i8*, i8** %_1216
  call void @print_string(i8* %_1217)
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
