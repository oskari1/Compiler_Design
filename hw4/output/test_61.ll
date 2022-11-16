; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1322 = alloca i64
  store i64 %argc, i64* %_1322
  %_1323 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1323
  %_1324 = alloca i64
  %_1325 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1373 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 10, i64* %_1324
  %_raw_array1326 = call i64* @oat_alloc_array(i64 3)
  %_array1327 = bitcast i64* %_raw_array1326 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1358 = call i64* @oat_alloc_array(i64 3)
  %_array1359 = bitcast i64* %_raw_array1358 to { i64, [0 x i64] }*
  %_1368 = load i64, i64* %_1324
  %_1369 = add i64 %_1368, 2
  %_1370 = add i64 %_1369, 2
  %_1371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1359, i32 0, i32 1, i32 2
  store i64 %_1370, i64* %_1371
  %_1364 = load i64, i64* %_1324
  %_1365 = add i64 %_1364, 2
  %_1366 = add i64 %_1365, 1
  %_1367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1359, i32 0, i32 1, i32 1
  store i64 %_1366, i64* %_1367
  %_1360 = load i64, i64* %_1324
  %_1361 = add i64 %_1360, 2
  %_1362 = add i64 %_1361, 0
  %_1363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1359, i32 0, i32 1, i32 0
  store i64 %_1362, i64* %_1363
  %_1372 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1327, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1359, { i64, [0 x i64] }** %_1372
  %_raw_array1343 = call i64* @oat_alloc_array(i64 3)
  %_array1344 = bitcast i64* %_raw_array1343 to { i64, [0 x i64] }*
  %_1353 = load i64, i64* %_1324
  %_1354 = add i64 %_1353, 1
  %_1355 = add i64 %_1354, 2
  %_1356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 2
  store i64 %_1355, i64* %_1356
  %_1349 = load i64, i64* %_1324
  %_1350 = add i64 %_1349, 1
  %_1351 = add i64 %_1350, 1
  %_1352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 1
  store i64 %_1351, i64* %_1352
  %_1345 = load i64, i64* %_1324
  %_1346 = add i64 %_1345, 1
  %_1347 = add i64 %_1346, 0
  %_1348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 0
  store i64 %_1347, i64* %_1348
  %_1357 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1327, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1344, { i64, [0 x i64] }** %_1357
  %_raw_array1328 = call i64* @oat_alloc_array(i64 3)
  %_array1329 = bitcast i64* %_raw_array1328 to { i64, [0 x i64] }*
  %_1338 = load i64, i64* %_1324
  %_1339 = add i64 %_1338, 0
  %_1340 = add i64 %_1339, 2
  %_1341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1329, i32 0, i32 1, i32 2
  store i64 %_1340, i64* %_1341
  %_1334 = load i64, i64* %_1324
  %_1335 = add i64 %_1334, 0
  %_1336 = add i64 %_1335, 1
  %_1337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1329, i32 0, i32 1, i32 1
  store i64 %_1336, i64* %_1337
  %_1330 = load i64, i64* %_1324
  %_1331 = add i64 %_1330, 0
  %_1332 = add i64 %_1331, 0
  %_1333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1329, i32 0, i32 1, i32 0
  store i64 %_1332, i64* %_1333
  %_1342 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1327, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1329, { i64, [0 x i64] }** %_1342
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1327, { i64, [0 x { i64, [0 x i64] }*] }** %_1325
  %_1374 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1325
  store { i64, [0 x { i64, [0 x i64] }*] }* %_1374, { i64, [0 x { i64, [0 x i64] }*] }** %_1373
  %_1375 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1373
  %_1376 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1375, i32 0, i32 1, i32 2
  %_1377 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1376
  %_1378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1377, i32 0, i32 1, i32 1
  %_1379 = load i64, i64* %_1378
  ret i64 %_1379
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
