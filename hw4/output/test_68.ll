; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1463 = alloca i64
  store i64 %argc, i64* %_1463
  %_1464 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1464
  %_1465 = alloca { i64, [0 x i64] }*
  %_1471 = alloca i8*
  %_raw_array1466 = call i64* @oat_alloc_array(i64 3)
  %_array1467 = bitcast i64* %_raw_array1466 to { i64, [0 x i64] }*
  %_1470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1467, i32 0, i32 1, i32 2
  store i64 110, i64* %_1470
  %_1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1467, i32 0, i32 1, i32 1
  store i64 110, i64* %_1469
  %_1468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1467, i32 0, i32 1, i32 0
  store i64 110, i64* %_1468
  store { i64, [0 x i64] }* %_array1467, { i64, [0 x i64] }** %_1465
  %_1473 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1465
  %_1472 = call i8* @string_of_array({ i64, [0 x i64] }* %_1473)
  store i8* %_1472, i8** %_1471
  %_1475 = load i8*, i8** %_1471
  call void @print_string(i8* %_1475)
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
