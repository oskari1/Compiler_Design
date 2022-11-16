; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1380 = alloca i64
  store i64 %argc, i64* %_1380
  %_1381 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1381
  %_1382 = alloca { i64, [0 x i64] }*
  %_raw_array1383 = call i64* @oat_alloc_array(i64 3)
  %_array1384 = bitcast i64* %_raw_array1383 to { i64, [0 x i64] }*
  %_1387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 2
  store i64 999, i64* %_1387
  %_1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 1
  store i64 100, i64* %_1386
  %_1385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 0
  store i64 1, i64* %_1385
  store { i64, [0 x i64] }* %_array1384, { i64, [0 x i64] }** %_1382
  %_1388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1382
  %_1389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1388, i32 0, i32 1, i32 2
  %_1390 = load i64, i64* %_1389
  ret i64 %_1390
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
