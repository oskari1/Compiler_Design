; generated from: oatprograms/leastsquare.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1615 = alloca i64
  store i64 %argc, i64* %_1615
  %_1616 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1616
  %_1617 = alloca i64
  store i64 500, i64* %_1617
  %_1619 = load i64, i64* %_1617
  %_1618 = call i64 @leastsquare(i64 %_1619)
  ret i64 %_1618
}

define i64 @leastsquare(i64 %n) {
  %_1548 = alloca i64
  store i64 %n, i64* %_1548
  %_1549 = alloca { i64, [0 x i64] }*
  %_1563 = alloca i64
  %_1575 = alloca i64
  %_1582 = alloca i64
  %_raw_array1550 = call i64* @oat_alloc_array(i64 1)
  %_array1551 = bitcast i64* %_raw_array1550 to { i64, [0 x i64] }*
  %_1552 = load i64, i64* %_1548
  %_1553 = add i64 %_1552, 1
  %_1554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1551, i32 0, i32 1, i32 0
  store i64 %_1553, i64* %_1554
  store { i64, [0 x i64] }* %_array1551, { i64, [0 x i64] }** %_1549
  %_1556 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1549
  %_1555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1556, i32 0, i32 1, i32 0
  store i64 0, i64* %_1555
  %_1558 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1549
  %_1557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1558, i32 0, i32 1, i32 1
  store i64 1, i64* %_1557
  %_1560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1549
  %_1559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1560, i32 0, i32 1, i32 2
  store i64 2, i64* %_1559
  %_1562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1549
  %_1561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1562, i32 0, i32 1, i32 3
  store i64 3, i64* %_1561
  store i64 4, i64* %_1563
  br label %_1568
_1568:
  %_1564 = load i64, i64* %_1563
  %_1565 = load i64, i64* %_1548
  %_1566 = add i64 %_1565, 1
  %_1567 = icmp slt i64 %_1564, %_1566
  br i1 %_1567, label %_1569, label %_1570
_1569:
  %_1571 = load i64, i64* %_1563
  %_1573 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1549
  %_1574 = load i64, i64* %_1563
  %_1572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1573, i32 0, i32 1, i64 %_1574
  store i64 %_1571, i64* %_1572
  store i64 1, i64* %_1575
  br label %_1579
_1579:
  %_1576 = load i64, i64* %_1575
  %_1577 = load i64, i64* %_1548
  %_1578 = icmp slt i64 %_1576, %_1577
  br i1 %_1578, label %_1580, label %_1581
_1580:
  %_1583 = load i64, i64* %_1575
  %_1584 = load i64, i64* %_1575
  %_1585 = mul i64 %_1583, %_1584
  store i64 %_1585, i64* %_1582
  %_1586 = load i64, i64* %_1582
  %_1587 = load i64, i64* %_1563
  %_1588 = icmp sgt i64 %_1586, %_1587
  br i1 %_1588, label %_1589, label %_1590
_1589:
  br label %_1591
_1590:
  %_1593 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1549
  %_1594 = load i64, i64* %_1563
  %_1595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1593, i32 0, i32 1, i64 %_1594
  %_1596 = load i64, i64* %_1595
  %_1597 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1549
  %_1598 = load i64, i64* %_1563
  %_1599 = load i64, i64* %_1582
  %_1600 = sub i64 %_1598, %_1599
  %_1601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1597, i32 0, i32 1, i64 %_1600
  %_1602 = load i64, i64* %_1601
  %_1603 = add i64 1, %_1602
  %_1592 = call i64 @min(i64 %_1596, i64 %_1603)
  %_1605 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1549
  %_1606 = load i64, i64* %_1563
  %_1604 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1605, i32 0, i32 1, i64 %_1606
  store i64 %_1592, i64* %_1604
  br label %_1591
_1591:
  %_1607 = load i64, i64* %_1575
  %_1608 = add i64 %_1607, 1
  store i64 %_1608, i64* %_1575
  br label %_1579
_1581:
  %_1609 = load i64, i64* %_1563
  %_1610 = add i64 %_1609, 1
  store i64 %_1610, i64* %_1563
  br label %_1568
_1570:
  %_1611 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1549
  %_1612 = load i64, i64* %_1548
  %_1613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1611, i32 0, i32 1, i64 %_1612
  %_1614 = load i64, i64* %_1613
  ret i64 %_1614
}

define i64 @min(i64 %y, i64 %x) {
  %_1538 = alloca i64
  store i64 %y, i64* %_1538
  %_1539 = alloca i64
  store i64 %x, i64* %_1539
  %_1540 = load i64, i64* %_1539
  %_1541 = load i64, i64* %_1538
  %_1542 = icmp sgt i64 %_1540, %_1541
  br i1 %_1542, label %_1543, label %_1544
_1543:
  %_1546 = load i64, i64* %_1538
  ret i64 %_1546
_1544:
  %_1547 = load i64, i64* %_1539
  ret i64 %_1547
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
