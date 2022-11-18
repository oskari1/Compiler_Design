; generated from: oatprograms/no_of_fac.oat
target triple = "x86_64-unknown-linux"
define i64 @mod(i64 %a, i64 %b) {
  %_1682 = alloca i64
  store i64 %a, i64* %_1682
  %_1683 = alloca i64
  store i64 %b, i64* %_1683
  %_1684 = alloca i64
  %_1685 = load i64, i64* %_1682
  store i64 %_1685, i64* %_1684
  br label %_1690
_1690:
  %_1686 = load i64, i64* %_1684
  %_1687 = load i64, i64* %_1683
  %_1688 = sub i64 %_1686, %_1687
  %_1689 = icmp sge i64 %_1688, 0
  br i1 %_1689, label %_1691, label %_1692
_1691:
  %_1693 = load i64, i64* %_1684
  %_1694 = load i64, i64* %_1683
  %_1695 = sub i64 %_1693, %_1694
  store i64 %_1695, i64* %_1684
  br label %_1690
_1692:
  %_1696 = load i64, i64* %_1684
  ret i64 %_1696
}

define i64 @div(i64 %a, i64 %b) {
  %_1664 = alloca i64
  store i64 %a, i64* %_1664
  %_1665 = alloca i64
  store i64 %b, i64* %_1665
  %_1666 = alloca i64
  %_1667 = alloca i64
  %_1669 = alloca i64
  store i64 0, i64* %_1666
  %_1668 = load i64, i64* %_1664
  store i64 %_1668, i64* %_1667
  %_1670 = load i64, i64* %_1665
  store i64 %_1670, i64* %_1669
  br label %_1673
_1673:
  %_1671 = load i64, i64* %_1667
  %_1672 = icmp sgt i64 %_1671, 0
  br i1 %_1672, label %_1674, label %_1675
_1674:
  %_1676 = load i64, i64* %_1667
  %_1677 = load i64, i64* %_1669
  %_1678 = sub i64 %_1676, %_1677
  store i64 %_1678, i64* %_1667
  %_1679 = load i64, i64* %_1666
  %_1680 = add i64 %_1679, 1
  store i64 %_1680, i64* %_1666
  br label %_1673
_1675:
  %_1681 = load i64, i64* %_1666
  ret i64 %_1681
}

define i64 @no_of_factors(i64 %n) {
  %_1623 = alloca i64
  store i64 %n, i64* %_1623
  %_1624 = alloca i64
  %_1625 = alloca i64
  %_1627 = alloca i64
  %_1637 = alloca i64
  store i64 1, i64* %_1624
  %_1626 = load i64, i64* %_1623
  store i64 %_1626, i64* %_1625
  store i64 2, i64* %_1627
  br label %_1634
_1634:
  %_1628 = load i64, i64* %_1627
  %_1629 = load i64, i64* %_1627
  %_1630 = mul i64 %_1628, %_1629
  %_1631 = load i64, i64* %_1625
  %_1632 = add i64 %_1631, 1
  %_1633 = icmp slt i64 %_1630, %_1632
  br i1 %_1633, label %_1635, label %_1636
_1635:
  store i64 0, i64* %_1637
  br label %_1642
_1642:
  %_1639 = load i64, i64* %_1623
  %_1640 = load i64, i64* %_1627
  %_1638 = call i64 @mod(i64 %_1639, i64 %_1640)
  %_1641 = icmp eq i64 %_1638, 0
  br i1 %_1641, label %_1643, label %_1644
_1643:
  %_1646 = load i64, i64* %_1623
  %_1647 = load i64, i64* %_1627
  %_1645 = call i64 @div(i64 %_1646, i64 %_1647)
  store i64 %_1645, i64* %_1623
  %_1648 = load i64, i64* %_1637
  %_1649 = add i64 %_1648, 1
  store i64 %_1649, i64* %_1637
  br label %_1642
_1644:
  %_1650 = load i64, i64* %_1624
  %_1651 = load i64, i64* %_1637
  %_1652 = add i64 %_1651, 1
  %_1653 = mul i64 %_1650, %_1652
  store i64 %_1653, i64* %_1624
  %_1654 = load i64, i64* %_1627
  %_1655 = add i64 %_1654, 1
  store i64 %_1655, i64* %_1627
  br label %_1634
_1636:
  %_1656 = load i64, i64* %_1623
  %_1657 = icmp sgt i64 %_1656, 1
  br i1 %_1657, label %_1658, label %_1659
_1658:
  %_1661 = load i64, i64* %_1624
  %_1662 = mul i64 %_1661, 2
  store i64 %_1662, i64* %_1624
  br label %_1660
_1659:
  br label %_1660
_1660:
  %_1663 = load i64, i64* %_1624
  ret i64 %_1663
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1620 = alloca i64
  store i64 %argc, i64* %_1620
  %_1621 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1621
  %_1622 = call i64 @no_of_factors(i64 6400)
  ret i64 %_1622
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
