; generated from: oatprograms/kmp.oat
target triple = "x86_64-unknown-linux"
@_1394 = global [17 x i8] c"abcdabcdabcdcbab\00"
@_1397 = global [7 x i8] c"dabcdc\00"

define { i64, [0 x i64] }* @construct_table(i8* %w) {
  %_1477 = alloca i8*
  store i8* %w, i8** %_1477
  %_1478 = alloca i64
  %_1481 = alloca { i64, [0 x i64] }*
  %_1484 = alloca { i64, [0 x i64] }*
  %_1488 = alloca i64
  %_1489 = alloca i64
  %_1480 = load i8*, i8** %_1477
  %_1479 = call i64 @length_of_string(i8* %_1480)
  store i64 %_1479, i64* %_1478
  %_1483 = load i8*, i8** %_1477
  %_1482 = call { i64, [0 x i64] }* @array_of_string(i8* %_1483)
  store { i64, [0 x i64] }* %_1482, { i64, [0 x i64] }** %_1481
  %_1485 = load i64, i64* %_1478
  %_raw_array1486 = call i64* @oat_alloc_array(i64 %_1485)
  %_array1487 = bitcast i64* %_raw_array1486 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1487, { i64, [0 x i64] }** %_1484
  store i64 2, i64* %_1488
  store i64 0, i64* %_1489
  %_1490 = sub i64 0, 1
  %_1492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1484
  %_1491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1492, i32 0, i32 1, i32 0
  store i64 %_1490, i64* %_1491
  %_1494 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1484
  %_1493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1494, i32 0, i32 1, i32 1
  store i64 0, i64* %_1493
  br label %_1498
_1498:
  %_1495 = load i64, i64* %_1488
  %_1496 = load i64, i64* %_1478
  %_1497 = icmp slt i64 %_1495, %_1496
  br i1 %_1497, label %_1499, label %_1500
_1499:
  %_1501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1481
  %_1502 = load i64, i64* %_1488
  %_1503 = sub i64 %_1502, 1
  %_1504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1501, i32 0, i32 1, i64 %_1503
  %_1505 = load i64, i64* %_1504
  %_1506 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1481
  %_1507 = load i64, i64* %_1489
  %_1508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1506, i32 0, i32 1, i64 %_1507
  %_1509 = load i64, i64* %_1508
  %_1510 = icmp eq i64 %_1505, %_1509
  br i1 %_1510, label %_1511, label %_1512
_1511:
  %_1514 = load i64, i64* %_1489
  %_1515 = add i64 %_1514, 1
  %_1517 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1484
  %_1518 = load i64, i64* %_1488
  %_1516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1517, i32 0, i32 1, i64 %_1518
  store i64 %_1515, i64* %_1516
  %_1519 = load i64, i64* %_1489
  %_1520 = add i64 %_1519, 1
  store i64 %_1520, i64* %_1489
  %_1521 = load i64, i64* %_1488
  %_1522 = add i64 %_1521, 1
  store i64 %_1522, i64* %_1488
  br label %_1513
_1512:
  %_1523 = load i64, i64* %_1489
  %_1524 = icmp sgt i64 %_1523, 0
  br i1 %_1524, label %_1525, label %_1526
_1525:
  %_1528 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1484
  %_1529 = load i64, i64* %_1489
  %_1530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1528, i32 0, i32 1, i64 %_1529
  %_1531 = load i64, i64* %_1530
  store i64 %_1531, i64* %_1489
  br label %_1527
_1526:
  %_1533 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1484
  %_1534 = load i64, i64* %_1488
  %_1532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1533, i32 0, i32 1, i64 %_1534
  store i64 0, i64* %_1532
  %_1535 = load i64, i64* %_1488
  %_1536 = add i64 %_1535, 1
  store i64 %_1536, i64* %_1488
  br label %_1527
_1527:
  br label %_1513
_1513:
  br label %_1498
_1500:
  %_1537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1484
  ret { i64, [0 x i64] }* %_1537
}

define i64 @kmp(i8* %str, i8* %w) {
  %_1404 = alloca i8*
  store i8* %str, i8** %_1404
  %_1405 = alloca i8*
  store i8* %w, i8** %_1405
  %_1406 = alloca i64
  %_1407 = alloca i64
  %_1408 = alloca i64
  %_1411 = alloca { i64, [0 x i64] }*
  %_1414 = alloca { i64, [0 x i64] }*
  %_1417 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_1406
  store i64 0, i64* %_1407
  %_1410 = load i8*, i8** %_1405
  %_1409 = call i64 @length_of_string(i8* %_1410)
  store i64 %_1409, i64* %_1408
  %_1413 = load i8*, i8** %_1405
  %_1412 = call { i64, [0 x i64] }* @array_of_string(i8* %_1413)
  store { i64, [0 x i64] }* %_1412, { i64, [0 x i64] }** %_1411
  %_1416 = load i8*, i8** %_1404
  %_1415 = call { i64, [0 x i64] }* @array_of_string(i8* %_1416)
  store { i64, [0 x i64] }* %_1415, { i64, [0 x i64] }** %_1414
  %_1419 = load i8*, i8** %_1405
  %_1418 = call { i64, [0 x i64] }* @construct_table(i8* %_1419)
  store { i64, [0 x i64] }* %_1418, { i64, [0 x i64] }** %_1417
  br label %_1426
_1426:
  %_1420 = load i64, i64* %_1406
  %_1421 = load i64, i64* %_1407
  %_1422 = add i64 %_1420, %_1421
  %_1424 = load i8*, i8** %_1404
  %_1423 = call i64 @length_of_string(i8* %_1424)
  %_1425 = icmp slt i64 %_1422, %_1423
  br i1 %_1425, label %_1427, label %_1428
_1427:
  %_1429 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1411
  %_1430 = load i64, i64* %_1407
  %_1431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1429, i32 0, i32 1, i64 %_1430
  %_1432 = load i64, i64* %_1431
  %_1433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1414
  %_1434 = load i64, i64* %_1406
  %_1435 = load i64, i64* %_1407
  %_1436 = add i64 %_1434, %_1435
  %_1437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1433, i32 0, i32 1, i64 %_1436
  %_1438 = load i64, i64* %_1437
  %_1439 = icmp eq i64 %_1432, %_1438
  br i1 %_1439, label %_1440, label %_1441
_1440:
  %_1443 = load i64, i64* %_1407
  %_1444 = load i64, i64* %_1408
  %_1445 = sub i64 %_1444, 1
  %_1446 = icmp eq i64 %_1443, %_1445
  br i1 %_1446, label %_1447, label %_1448
_1447:
  %_1450 = load i64, i64* %_1406
  ret i64 %_1450
_1448:
  br label %_1449
_1449:
  %_1451 = load i64, i64* %_1407
  %_1452 = add i64 %_1451, 1
  store i64 %_1452, i64* %_1407
  br label %_1442
_1441:
  %_1453 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1417
  %_1454 = load i64, i64* %_1407
  %_1455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1453, i32 0, i32 1, i64 %_1454
  %_1456 = load i64, i64* %_1455
  %_1457 = sub i64 0, 1
  %_1458 = icmp sgt i64 %_1456, %_1457
  br i1 %_1458, label %_1459, label %_1460
_1459:
  %_1462 = load i64, i64* %_1406
  %_1463 = load i64, i64* %_1407
  %_1464 = add i64 %_1462, %_1463
  %_1465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1417
  %_1466 = load i64, i64* %_1407
  %_1467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1465, i32 0, i32 1, i64 %_1466
  %_1468 = load i64, i64* %_1467
  %_1469 = sub i64 %_1464, %_1468
  store i64 %_1469, i64* %_1406
  %_1470 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1417
  %_1471 = load i64, i64* %_1407
  %_1472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1470, i32 0, i32 1, i64 %_1471
  %_1473 = load i64, i64* %_1472
  store i64 %_1473, i64* %_1407
  br label %_1461
_1460:
  %_1474 = load i64, i64* %_1406
  %_1475 = add i64 %_1474, 1
  store i64 %_1475, i64* %_1406
  store i64 0, i64* %_1407
  br label %_1461
_1461:
  br label %_1442
_1442:
  br label %_1426
_1428:
  %_1476 = sub i64 0, 1
  ret i64 %_1476
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1391 = alloca i64
  store i64 %argc, i64* %_1391
  %_1392 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1392
  %_1393 = alloca i8*
  %_1396 = alloca i8*
  %_1399 = alloca i64
  %_1395 = getelementptr [17 x i8], [17 x i8]* @_1394, i32 0, i32 0
  store i8* %_1395, i8** %_1393
  %_1398 = getelementptr [7 x i8], [7 x i8]* @_1397, i32 0, i32 0
  store i8* %_1398, i8** %_1396
  %_1401 = load i8*, i8** %_1393
  %_1402 = load i8*, i8** %_1396
  %_1400 = call i64 @kmp(i8* %_1401, i8* %_1402)
  store i64 %_1400, i64* %_1399
  %_1403 = load i64, i64* %_1399
  ret i64 %_1403
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
