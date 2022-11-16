; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_1591 = alloca i64
  store i64 %n, i64* %_1591
  %_1592 = alloca { i64, [0 x i1] }*
  %_1596 = alloca i64
  %_1612 = alloca i64
  %_1626 = alloca i64
  %_1643 = alloca i64
  %_1644 = alloca i64
  %_1593 = load i64, i64* %_1591
  %_raw_array1594 = call i64* @oat_alloc_array(i64 %_1593)
  %_array1595 = bitcast i64* %_raw_array1594 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array1595, { i64, [0 x i1] }** %_1592
  store i64 0, i64* %_1596
  br label %_1600
_1600:
  %_1597 = load i64, i64* %_1596
  %_1598 = load i64, i64* %_1591
  %_1599 = icmp slt i64 %_1597, %_1598
  br i1 %_1599, label %_1601, label %_1602
_1601:
  %_1604 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1592
  %_1605 = load i64, i64* %_1596
  %_1603 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1604, i32 0, i32 1, i64 %_1605
  store i1 1, i1* %_1603
  %_1606 = load i64, i64* %_1596
  %_1607 = add i64 %_1606, 1
  store i64 %_1607, i64* %_1596
  br label %_1600
_1602:
  %_1609 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1592
  %_1608 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1609, i32 0, i32 1, i32 0
  store i1 0, i1* %_1608
  %_1611 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1592
  %_1610 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1611, i32 0, i32 1, i32 1
  store i1 0, i1* %_1610
  store i64 0, i64* %_1612
  br label %_1616
_1616:
  %_1613 = load i64, i64* %_1612
  %_1614 = load i64, i64* %_1591
  %_1615 = icmp slt i64 %_1613, %_1614
  br i1 %_1615, label %_1617, label %_1618
_1617:
  %_1619 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1592
  %_1620 = load i64, i64* %_1612
  %_1621 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1619, i32 0, i32 1, i64 %_1620
  %_1622 = load i1, i1* %_1621
  br i1 %_1622, label %_1623, label %_1624
_1623:
  %_1627 = load i64, i64* %_1612
  %_1628 = mul i64 %_1627, 2
  store i64 %_1628, i64* %_1626
  br label %_1632
_1632:
  %_1629 = load i64, i64* %_1626
  %_1630 = load i64, i64* %_1591
  %_1631 = icmp slt i64 %_1629, %_1630
  br i1 %_1631, label %_1633, label %_1634
_1633:
  %_1636 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1592
  %_1637 = load i64, i64* %_1626
  %_1635 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1636, i32 0, i32 1, i64 %_1637
  store i1 0, i1* %_1635
  %_1638 = load i64, i64* %_1626
  %_1639 = load i64, i64* %_1612
  %_1640 = add i64 %_1638, %_1639
  store i64 %_1640, i64* %_1626
  br label %_1632
_1634:
  br label %_1625
_1624:
  br label %_1625
_1625:
  %_1641 = load i64, i64* %_1612
  %_1642 = add i64 %_1641, 1
  store i64 %_1642, i64* %_1612
  br label %_1616
_1618:
  store i64 0, i64* %_1643
  store i64 0, i64* %_1644
  br label %_1648
_1648:
  %_1645 = load i64, i64* %_1644
  %_1646 = load i64, i64* %_1591
  %_1647 = icmp slt i64 %_1645, %_1646
  br i1 %_1647, label %_1649, label %_1650
_1649:
  %_1651 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1592
  %_1652 = load i64, i64* %_1644
  %_1653 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1651, i32 0, i32 1, i64 %_1652
  %_1654 = load i1, i1* %_1653
  br i1 %_1654, label %_1655, label %_1656
_1655:
  %_1658 = load i64, i64* %_1643
  %_1659 = add i64 %_1658, 1
  store i64 %_1659, i64* %_1643
  br label %_1657
_1656:
  br label %_1657
_1657:
  %_1660 = load i64, i64* %_1644
  %_1661 = add i64 %_1660, 1
  store i64 %_1661, i64* %_1644
  br label %_1648
_1650:
  %_1662 = load i64, i64* %_1643
  ret i64 %_1662
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1586 = alloca i64
  store i64 %argc, i64* %_1586
  %_1587 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1587
  %_1588 = alloca i64
  store i64 100, i64* %_1588
  %_1590 = load i64, i64* %_1588
  %_1589 = call i64 @sieve(i64 %_1590)
  ret i64 %_1589
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
