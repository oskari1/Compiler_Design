; generated from: oatprograms/hashcode.oat
target triple = "x86_64-unknown-linux"
@_1384 = global [3 x i8] c"aa\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1381 = alloca i64
  store i64 %argc, i64* %_1381
  %_1382 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1382
  %_1383 = alloca i8*
  %_1386 = alloca i64
  %_1385 = getelementptr [3 x i8], [3 x i8]* @_1384, i32 0, i32 0
  store i8* %_1385, i8** %_1383
  %_1388 = load i8*, i8** %_1383
  %_1387 = call i64 @hash(i8* %_1388)
  store i64 %_1387, i64* %_1386
  %_1390 = load i64, i64* %_1386
  call void @print_int(i64 %_1390)
  ret i64 0
}

define i64 @hash(i8* %s) {
  %_1338 = alloca i8*
  store i8* %s, i8** %_1338
  %_1339 = alloca { i64, [0 x i64] }*
  %_1342 = alloca i64
  %_1345 = alloca i64
  %_1346 = alloca i64
  %_1353 = alloca i64
  %_1354 = alloca i64
  %_1368 = alloca i64
  %_1341 = load i8*, i8** %_1338
  %_1340 = call { i64, [0 x i64] }* @array_of_string(i8* %_1341)
  store { i64, [0 x i64] }* %_1340, { i64, [0 x i64] }** %_1339
  %_1344 = load i8*, i8** %_1338
  %_1343 = call i64 @length_of_string(i8* %_1344)
  store i64 %_1343, i64* %_1342
  store i64 0, i64* %_1345
  store i64 0, i64* %_1346
  br label %_1350
_1350:
  %_1347 = load i64, i64* %_1346
  %_1348 = load i64, i64* %_1342
  %_1349 = icmp slt i64 %_1347, %_1348
  br i1 %_1349, label %_1351, label %_1352
_1351:
  store i64 1, i64* %_1353
  %_1355 = load i64, i64* %_1342
  %_1356 = load i64, i64* %_1346
  %_1357 = sub i64 %_1355, %_1356
  %_1358 = sub i64 %_1357, 1
  store i64 %_1358, i64* %_1354
  br label %_1361
_1361:
  %_1359 = load i64, i64* %_1354
  %_1360 = icmp sgt i64 %_1359, 0
  br i1 %_1360, label %_1362, label %_1363
_1362:
  %_1364 = load i64, i64* %_1353
  %_1365 = mul i64 %_1364, 31
  store i64 %_1365, i64* %_1353
  %_1366 = load i64, i64* %_1354
  %_1367 = sub i64 %_1366, 1
  store i64 %_1367, i64* %_1354
  br label %_1361
_1363:
  %_1369 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1339
  %_1370 = load i64, i64* %_1346
  %_1371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1369, i32 0, i32 1, i64 %_1370
  %_1372 = load i64, i64* %_1371
  store i64 %_1372, i64* %_1368
  %_1373 = load i64, i64* %_1345
  %_1374 = load i64, i64* %_1353
  %_1375 = load i64, i64* %_1368
  %_1376 = mul i64 %_1374, %_1375
  %_1377 = add i64 %_1373, %_1376
  store i64 %_1377, i64* %_1345
  %_1378 = load i64, i64* %_1346
  %_1379 = add i64 %_1378, 1
  store i64 %_1379, i64* %_1346
  br label %_1350
_1352:
  %_1380 = load i64, i64* %_1345
  ret i64 %_1380
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
