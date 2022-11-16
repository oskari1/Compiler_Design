; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_1710 = alloca i64
  store i64 %n, i64* %_1710
  %_1711 = load i64, i64* %_1710
  %_1712 = icmp eq i64 %_1711, 0
  br i1 %_1712, label %_1713, label %_1714
_1713:
  ret i64 0
_1714:
  br label %_1715
_1715:
  %_1716 = load i64, i64* %_1710
  %_1717 = icmp eq i64 %_1716, 1
  br i1 %_1717, label %_1718, label %_1719
_1718:
  ret i64 1
_1719:
  br label %_1720
_1720:
  %_1722 = load i64, i64* %_1710
  %_1723 = sub i64 %_1722, 1
  %_1721 = call i64 @fibR(i64 %_1723)
  %_1725 = load i64, i64* %_1710
  %_1726 = sub i64 %_1725, 2
  %_1724 = call i64 @fibR(i64 %_1726)
  %_1727 = add i64 %_1721, %_1724
  ret i64 %_1727
}

define i64 @fibI(i64 %n) {
  %_1678 = alloca i64
  store i64 %n, i64* %_1678
  %_1679 = alloca i64
  %_1680 = alloca i64
  %_1699 = alloca i64
  store i64 0, i64* %_1679
  store i64 1, i64* %_1680
  %_1681 = load i64, i64* %_1678
  %_1682 = icmp eq i64 %_1681, 0
  br i1 %_1682, label %_1683, label %_1684
_1683:
  %_1686 = load i64, i64* %_1679
  ret i64 %_1686
_1684:
  br label %_1685
_1685:
  %_1687 = load i64, i64* %_1678
  %_1688 = icmp eq i64 %_1687, 1
  br i1 %_1688, label %_1689, label %_1690
_1689:
  %_1692 = load i64, i64* %_1680
  ret i64 %_1692
_1690:
  br label %_1691
_1691:
  br label %_1696
_1696:
  %_1693 = load i64, i64* %_1678
  %_1694 = sub i64 %_1693, 2
  %_1695 = icmp sgt i64 %_1694, 0
  br i1 %_1695, label %_1697, label %_1698
_1697:
  %_1700 = load i64, i64* %_1680
  store i64 %_1700, i64* %_1699
  %_1701 = load i64, i64* %_1680
  %_1702 = load i64, i64* %_1679
  %_1703 = add i64 %_1701, %_1702
  store i64 %_1703, i64* %_1680
  %_1704 = load i64, i64* %_1699
  store i64 %_1704, i64* %_1679
  %_1705 = load i64, i64* %_1678
  %_1706 = sub i64 %_1705, 1
  store i64 %_1706, i64* %_1678
  br label %_1696
_1698:
  %_1707 = load i64, i64* %_1679
  %_1708 = load i64, i64* %_1680
  %_1709 = add i64 %_1707, %_1708
  ret i64 %_1709
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1666 = alloca i64
  store i64 %argc, i64* %_1666
  %_1667 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1667
  %_1668 = alloca i64
  store i64 1, i64* %_1668
  %_1669 = call i64 @fibR(i64 12)
  %_1670 = icmp eq i64 %_1669, 144
  %_1671 = call i64 @fibI(i64 12)
  %_1672 = icmp eq i64 %_1671, 144
  %_1673 = and i1 %_1670, %_1672
  br i1 %_1673, label %_1674, label %_1675
_1674:
  store i64 0, i64* %_1668
  br label %_1676
_1675:
  br label %_1676
_1676:
  %_1677 = load i64, i64* %_1668
  ret i64 %_1677
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
