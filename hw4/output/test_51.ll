; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_1414 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_1461 = alloca i64
  store i64 %numerator, i64* %_1461
  %_1462 = alloca i64
  store i64 %denominator, i64* %_1462
  %_1473 = alloca i64
  %_1474 = alloca i64
  %_1463 = load i64, i64* %_1462
  %_1464 = icmp slt i64 %_1463, 0
  br i1 %_1464, label %_1465, label %_1466
_1465:
  %_1469 = load i64, i64* %_1461
  %_1470 = load i64, i64* %_1462
  %_1471 = sub i64 0, %_1470
  %_1468 = call i64 @euclid_division(i64 %_1469, i64 %_1471)
  %_1472 = sub i64 0, %_1468
  ret i64 %_1472
_1466:
  br label %_1467
_1467:
  store i64 0, i64* %_1473
  %_1475 = load i64, i64* %_1461
  store i64 %_1475, i64* %_1474
  %_1476 = load i64, i64* %_1461
  %_1477 = icmp slt i64 %_1476, 0
  br i1 %_1477, label %_1478, label %_1479
_1478:
  %_1481 = load i64, i64* %_1461
  %_1482 = sub i64 0, %_1481
  store i64 %_1482, i64* %_1474
  br label %_1486
_1486:
  %_1483 = load i64, i64* %_1474
  %_1484 = load i64, i64* %_1462
  %_1485 = icmp sge i64 %_1483, %_1484
  br i1 %_1485, label %_1487, label %_1488
_1487:
  %_1489 = load i64, i64* %_1473
  %_1490 = add i64 %_1489, 1
  store i64 %_1490, i64* %_1473
  %_1491 = load i64, i64* %_1474
  %_1492 = load i64, i64* %_1462
  %_1493 = sub i64 %_1491, %_1492
  store i64 %_1493, i64* %_1474
  br label %_1486
_1488:
  %_1494 = load i64, i64* %_1474
  %_1495 = icmp eq i64 %_1494, 0
  br i1 %_1495, label %_1496, label %_1497
_1496:
  %_1499 = load i64, i64* %_1473
  %_1500 = sub i64 0, %_1499
  ret i64 %_1500
_1497:
  %_1501 = load i64, i64* %_1473
  %_1502 = sub i64 0, %_1501
  %_1503 = sub i64 %_1502, 1
  ret i64 %_1503
_1498:
  br label %_1480
_1479:
  br label %_1480
_1480:
  br label %_1507
_1507:
  %_1504 = load i64, i64* %_1474
  %_1505 = load i64, i64* %_1462
  %_1506 = icmp sge i64 %_1504, %_1505
  br i1 %_1506, label %_1508, label %_1509
_1508:
  %_1510 = load i64, i64* %_1473
  %_1511 = add i64 %_1510, 1
  store i64 %_1511, i64* %_1473
  %_1512 = load i64, i64* %_1474
  %_1513 = load i64, i64* %_1462
  %_1514 = sub i64 %_1512, %_1513
  store i64 %_1514, i64* %_1474
  br label %_1507
_1509:
  %_1515 = load i64, i64* %_1473
  ret i64 %_1515
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_1416 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_1416
  %_1417 = alloca i64
  store i64 %key, i64* %_1417
  %_1418 = alloca i64
  store i64 %min, i64* %_1418
  %_1419 = alloca i64
  store i64 %max, i64* %_1419
  %_1426 = alloca i64
  %_1420 = load i64, i64* %_1419
  %_1421 = load i64, i64* %_1418
  %_1422 = icmp slt i64 %_1420, %_1421
  br i1 %_1422, label %_1423, label %_1424
_1423:
  ret i1 0
_1424:
  br label %_1425
_1425:
  %_1428 = load i64, i64* %_1419
  %_1429 = load i64, i64* %_1418
  %_1430 = add i64 %_1428, %_1429
  %_1427 = call i64 @euclid_division(i64 %_1430, i64 2)
  store i64 %_1427, i64* %_1426
  %_1431 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1416
  %_1432 = load i64, i64* %_1426
  %_1433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1431, i32 0, i32 1, i64 %_1432
  %_1434 = load i64, i64* %_1433
  %_1435 = load i64, i64* %_1417
  %_1436 = icmp sgt i64 %_1434, %_1435
  br i1 %_1436, label %_1437, label %_1438
_1437:
  %_1441 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1416
  %_1442 = load i64, i64* %_1417
  %_1443 = load i64, i64* %_1418
  %_1444 = load i64, i64* %_1426
  %_1445 = sub i64 %_1444, 1
  %_1440 = call i1 @binary_search({ i64, [0 x i64] }* %_1441, i64 %_1442, i64 %_1443, i64 %_1445)
  ret i1 %_1440
_1438:
  br label %_1439
_1439:
  %_1446 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1416
  %_1447 = load i64, i64* %_1426
  %_1448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1446, i32 0, i32 1, i64 %_1447
  %_1449 = load i64, i64* %_1448
  %_1450 = load i64, i64* %_1417
  %_1451 = icmp slt i64 %_1449, %_1450
  br i1 %_1451, label %_1452, label %_1453
_1452:
  %_1456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1416
  %_1457 = load i64, i64* %_1417
  %_1458 = load i64, i64* %_1426
  %_1459 = add i64 %_1458, 1
  %_1460 = load i64, i64* %_1419
  %_1455 = call i1 @binary_search({ i64, [0 x i64] }* %_1456, i64 %_1457, i64 %_1459, i64 %_1460)
  ret i1 %_1455
_1453:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1377 = alloca i64
  store i64 %argc, i64* %_1377
  %_1378 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1378
  %_1379 = alloca { i64, [0 x i64] }*
  %_1382 = alloca i64
  %_1396 = alloca i1
  %_1399 = alloca i1
  %_raw_array1380 = call i64* @oat_alloc_array(i64 100)
  %_array1381 = bitcast i64* %_raw_array1380 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1381, { i64, [0 x i64] }** %_1379
  store i64 0, i64* %_1382
  br label %_1385
_1385:
  %_1383 = load i64, i64* %_1382
  %_1384 = icmp slt i64 %_1383, 100
  br i1 %_1384, label %_1386, label %_1387
_1386:
  %_1388 = load i64, i64* %_1382
  %_1389 = mul i64 2, %_1388
  %_1390 = add i64 %_1389, 1
  %_1392 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1379
  %_1393 = load i64, i64* %_1382
  %_1391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1392, i32 0, i32 1, i64 %_1393
  store i64 %_1390, i64* %_1391
  %_1394 = load i64, i64* %_1382
  %_1395 = add i64 %_1394, 1
  store i64 %_1395, i64* %_1382
  br label %_1385
_1387:
  %_1398 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1379
  %_1397 = call i1 @binary_search({ i64, [0 x i64] }* %_1398, i64 80, i64 0, i64 99)
  store i1 %_1397, i1* %_1396
  %_1401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1379
  %_1400 = call i1 @binary_search({ i64, [0 x i64] }* %_1401, i64 81, i64 0, i64 99)
  store i1 %_1400, i1* %_1399
  %_1402 = load i1, i1* %_1396
  %_1403 = load i1, i1* %_1399
  %_1404 = and i1 %_1402, %_1403
  %_1405 = and i1 1, %_1404
  %_1406 = load i1, i1* %_1396
  %_1407 = load i1, i1* %_1399
  %_1408 = or i1 %_1406, %_1407
  %_1409 = and i1 %_1405, %_1408
  br i1 %_1409, label %_1410, label %_1411
_1410:
  %_1415 = getelementptr [9 x i8], [9 x i8]* @_1414, i32 0, i32 0
  call void @print_string(i8* %_1415)
  br label %_1412
_1411:
  br label %_1412
_1412:
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
