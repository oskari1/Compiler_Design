; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_1539 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_1576 = alloca i64
  store i64 %x, i64* %_1576
  %_1577 = alloca i64
  store i64 %y, i64* %_1577
  %_1578 = load i64, i64* %_1576
  %_1579 = load i64, i64* %_1577
  %_1580 = and i64 %_1578, %_1579
  %_1581 = xor i64 9223372036854775807, %_1580
  %_1582 = load i64, i64* %_1576
  %_1583 = load i64, i64* %_1577
  %_1584 = or i64 %_1582, %_1583
  %_1585 = and i64 %_1581, %_1584
  ret i64 %_1585
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_1544 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_1544
  %_1545 = alloca i64
  %_1549 = alloca i64
  %_1546 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1544
  %_1547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1546, i32 0, i32 1, i32 0
  %_1548 = load i64, i64* %_1547
  store i64 %_1548, i64* %_1545
  %_1550 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1544
  %_1551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1550, i32 0, i32 1, i32 1
  %_1552 = load i64, i64* %_1551
  store i64 %_1552, i64* %_1549
  %_1553 = load i64, i64* %_1549
  %_1555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1544
  %_1554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1555, i32 0, i32 1, i32 0
  store i64 %_1553, i64* %_1554
  %_1557 = load i64, i64* %_1545
  %_1558 = load i64, i64* %_1545
  %_1559 = shl i64 %_1558, 23
  %_1556 = call i64 @xor(i64 %_1557, i64 %_1559)
  store i64 %_1556, i64* %_1545
  %_1561 = load i64, i64* %_1545
  %_1562 = load i64, i64* %_1545
  %_1563 = lshr i64 %_1562, 17
  %_1560 = call i64 @xor(i64 %_1561, i64 %_1563)
  store i64 %_1560, i64* %_1545
  %_1565 = load i64, i64* %_1545
  %_1567 = load i64, i64* %_1549
  %_1568 = load i64, i64* %_1549
  %_1569 = lshr i64 %_1568, 26
  %_1566 = call i64 @xor(i64 %_1567, i64 %_1569)
  %_1564 = call i64 @xor(i64 %_1565, i64 %_1566)
  store i64 %_1564, i64* %_1545
  %_1570 = load i64, i64* %_1545
  %_1572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1544
  %_1571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1572, i32 0, i32 1, i32 1
  store i64 %_1570, i64* %_1571
  %_1573 = load i64, i64* %_1545
  %_1574 = load i64, i64* %_1549
  %_1575 = add i64 %_1573, %_1574
  ret i64 %_1575
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1516 = alloca i64
  store i64 %argc, i64* %_1516
  %_1517 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1517
  %_1518 = alloca { i64, [0 x i64] }*
  %_1521 = alloca i64
  %_raw_array1519 = call i64* @oat_alloc_array(i64 2)
  %_array1520 = bitcast i64* %_raw_array1519 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1520, { i64, [0 x i64] }** %_1518
  store i64 0, i64* %_1521
  br label %_1524
_1524:
  %_1522 = load i64, i64* %_1521
  %_1523 = icmp slt i64 %_1522, 2
  br i1 %_1523, label %_1525, label %_1526
_1525:
  %_1527 = load i64, i64* %_1521
  %_1528 = add i64 %_1527, 1
  %_1529 = mul i64 100, %_1528
  %_1531 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1518
  %_1532 = load i64, i64* %_1521
  %_1530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1531, i32 0, i32 1, i64 %_1532
  store i64 %_1529, i64* %_1530
  %_1533 = load i64, i64* %_1521
  %_1534 = add i64 %_1533, 1
  store i64 %_1534, i64* %_1521
  br label %_1524
_1526:
  %_1537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1518
  %_1536 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_1537)
  call void @print_int(i64 %_1536)
  %_1540 = getelementptr [2 x i8], [2 x i8]* @_1539, i32 0, i32 0
  call void @print_string(i8* %_1540)
  %_1543 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1518
  %_1542 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_1543)
  call void @print_int(i64 %_1542)
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
