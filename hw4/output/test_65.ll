; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_1422 = global [4 x i8] c"def\00"
@_1419 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1414 = alloca i64
  store i64 %argc, i64* %_1414
  %_1415 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1415
  %_1416 = alloca { i64, [0 x i8*] }*
  %_raw_array1417 = call i64* @oat_alloc_array(i64 2)
  %_array1418 = bitcast i64* %_raw_array1417 to { i64, [0 x i8*] }*
  %_1423 = getelementptr [4 x i8], [4 x i8]* @_1422, i32 0, i32 0
  %_1424 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1418, i32 0, i32 1, i32 1
  store i8* %_1423, i8** %_1424
  %_1420 = getelementptr [4 x i8], [4 x i8]* @_1419, i32 0, i32 0
  %_1421 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1418, i32 0, i32 1, i32 0
  store i8* %_1420, i8** %_1421
  store { i64, [0 x i8*] }* %_array1418, { i64, [0 x i8*] }** %_1416
  %_1426 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1416
  %_1427 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1426, i32 0, i32 1, i32 0
  %_1428 = load i8*, i8** %_1427
  call void @print_string(i8* %_1428)
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
