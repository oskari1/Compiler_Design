; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_1448 = global [4 x i8] c"123\00"
@_1445 = global [4 x i8] c"789\00"
@_1439 = global [4 x i8] c"def\00"
@_1436 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1429 = alloca i64
  store i64 %argc, i64* %_1429
  %_1430 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1430
  %_1431 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1432 = call i64* @oat_alloc_array(i64 2)
  %_array1433 = bitcast i64* %_raw_array1432 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1443 = call i64* @oat_alloc_array(i64 2)
  %_array1444 = bitcast i64* %_raw_array1443 to { i64, [0 x i8*] }*
  %_1449 = getelementptr [4 x i8], [4 x i8]* @_1448, i32 0, i32 0
  %_1450 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1444, i32 0, i32 1, i32 1
  store i8* %_1449, i8** %_1450
  %_1446 = getelementptr [4 x i8], [4 x i8]* @_1445, i32 0, i32 0
  %_1447 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1444, i32 0, i32 1, i32 0
  store i8* %_1446, i8** %_1447
  %_1451 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1433, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1444, { i64, [0 x i8*] }** %_1451
  %_raw_array1434 = call i64* @oat_alloc_array(i64 2)
  %_array1435 = bitcast i64* %_raw_array1434 to { i64, [0 x i8*] }*
  %_1440 = getelementptr [4 x i8], [4 x i8]* @_1439, i32 0, i32 0
  %_1441 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1435, i32 0, i32 1, i32 1
  store i8* %_1440, i8** %_1441
  %_1437 = getelementptr [4 x i8], [4 x i8]* @_1436, i32 0, i32 0
  %_1438 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1435, i32 0, i32 1, i32 0
  store i8* %_1437, i8** %_1438
  %_1442 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1433, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1435, { i64, [0 x i8*] }** %_1442
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1433, { i64, [0 x { i64, [0 x i8*] }*] }** %_1431
  %_1453 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_1431
  %_1454 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_1453, i32 0, i32 1, i32 1
  %_1455 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1454
  %_1456 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1455, i32 0, i32 1, i32 1
  %_1457 = load i8*, i8** %_1456
  call void @print_string(i8* %_1457)
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
