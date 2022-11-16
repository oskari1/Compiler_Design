; generated from: oatprograms/run44.oat
target triple = "x86_64-unknown-linux"
@str = global { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* null
@_1378 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1356 = alloca i64
  store i64 %argc, i64* %_1356
  %_1357 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1357
  %_raw_array1358 = call i64* @oat_alloc_array(i64 1)
  %_array1359 = bitcast i64* %_raw_array1358 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array1360 = call i64* @oat_alloc_array(i64 1)
  %_array1361 = bitcast i64* %_raw_array1360 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array1362 = call i64* @oat_alloc_array(i64 1)
  %_array1363 = bitcast i64* %_raw_array1362 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array1364 = call i64* @oat_alloc_array(i64 1)
  %_array1365 = bitcast i64* %_raw_array1364 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array1366 = call i64* @oat_alloc_array(i64 1)
  %_array1367 = bitcast i64* %_raw_array1366 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*
  %_raw_array1368 = call i64* @oat_alloc_array(i64 1)
  %_array1369 = bitcast i64* %_raw_array1368 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*
  %_raw_array1370 = call i64* @oat_alloc_array(i64 1)
  %_array1371 = bitcast i64* %_raw_array1370 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*
  %_raw_array1372 = call i64* @oat_alloc_array(i64 1)
  %_array1373 = bitcast i64* %_raw_array1372 to { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*
  %_raw_array1374 = call i64* @oat_alloc_array(i64 1)
  %_array1375 = bitcast i64* %_raw_array1374 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1376 = call i64* @oat_alloc_array(i64 1)
  %_array1377 = bitcast i64* %_raw_array1376 to { i64, [0 x i8*] }*
  %_1379 = getelementptr [6 x i8], [6 x i8]* @_1378, i32 0, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array1359, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }** @str
  %_1381 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }** @str
  %_1382 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_1381, i32 0, i32 1, i32 0
  %_1383 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }** %_1382
  %_1384 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_1383, i32 0, i32 1, i32 0
  %_1385 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }** %_1384
  %_1386 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_1385, i32 0, i32 1, i32 0
  %_1387 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }** %_1386
  %_1388 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_1387, i32 0, i32 1, i32 0
  %_1389 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }** %_1388
  %_1390 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_1389, i32 0, i32 1, i32 0
  %_1391 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }** %_1390
  %_1392 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_1391, i32 0, i32 1, i32 0
  %_1393 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }** %_1392
  %_1394 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_1393, i32 0, i32 1, i32 0
  %_1395 = load { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }** %_1394
  %_1396 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_1395, i32 0, i32 1, i32 0
  %_1397 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_1396
  %_1398 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_1397, i32 0, i32 1, i32 0
  %_1399 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1398
  %_1400 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1399, i32 0, i32 1, i32 0
  %_1401 = load i8*, i8** %_1400
  call void @print_string(i8* %_1401)
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
