; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_1738 = alloca i64
  store i64 %x, i64* %_1738
  %_1739 = alloca i64
  store i64 %y, i64* %_1739
  %_1740 = load i64, i64* %_1738
  %_1741 = load i64, i64* %_1739
  %_1742 = icmp eq i64 %_1740, %_1741
  br i1 %_1742, label %_1743, label %_1744
_1743:
  %_1746 = load i64, i64* %_1738
  ret i64 %_1746
_1744:
  br label %_1745
_1745:
  %_1747 = load i64, i64* %_1738
  %_1748 = icmp eq i64 %_1747, 0
  br i1 %_1748, label %_1749, label %_1750
_1749:
  %_1752 = load i64, i64* %_1739
  ret i64 %_1752
_1750:
  br label %_1751
_1751:
  %_1753 = load i64, i64* %_1739
  %_1754 = icmp eq i64 %_1753, 0
  br i1 %_1754, label %_1755, label %_1756
_1755:
  %_1758 = load i64, i64* %_1738
  ret i64 %_1758
_1756:
  br label %_1757
_1757:
  %_1759 = load i64, i64* %_1738
  %_1760 = xor i64 9223372036854775807, %_1759
  %_1761 = and i64 %_1760, 1
  %_1762 = icmp eq i64 %_1761, 1
  br i1 %_1762, label %_1763, label %_1764
_1763:
  %_1766 = load i64, i64* %_1739
  %_1767 = and i64 %_1766, 1
  %_1768 = icmp eq i64 %_1767, 1
  br i1 %_1768, label %_1769, label %_1770
_1769:
  %_1773 = load i64, i64* %_1738
  %_1774 = lshr i64 %_1773, 1
  %_1775 = load i64, i64* %_1739
  %_1772 = call i64 @binary_gcd(i64 %_1774, i64 %_1775)
  ret i64 %_1772
_1770:
  %_1777 = load i64, i64* %_1738
  %_1778 = lshr i64 %_1777, 1
  %_1779 = load i64, i64* %_1739
  %_1780 = lshr i64 %_1779, 1
  %_1776 = call i64 @binary_gcd(i64 %_1778, i64 %_1780)
  %_1781 = shl i64 %_1776, 1
  ret i64 %_1781
_1771:
  br label %_1765
_1764:
  br label %_1765
_1765:
  %_1782 = load i64, i64* %_1739
  %_1783 = xor i64 9223372036854775807, %_1782
  %_1784 = and i64 %_1783, 1
  %_1785 = icmp eq i64 %_1784, 1
  br i1 %_1785, label %_1786, label %_1787
_1786:
  %_1790 = load i64, i64* %_1738
  %_1791 = load i64, i64* %_1739
  %_1792 = lshr i64 %_1791, 1
  %_1789 = call i64 @binary_gcd(i64 %_1790, i64 %_1792)
  ret i64 %_1789
_1787:
  br label %_1788
_1788:
  %_1793 = load i64, i64* %_1738
  %_1794 = load i64, i64* %_1739
  %_1795 = icmp sgt i64 %_1793, %_1794
  br i1 %_1795, label %_1796, label %_1797
_1796:
  %_1800 = load i64, i64* %_1738
  %_1801 = load i64, i64* %_1739
  %_1802 = sub i64 %_1800, %_1801
  %_1803 = lshr i64 %_1802, 1
  %_1804 = load i64, i64* %_1739
  %_1799 = call i64 @binary_gcd(i64 %_1803, i64 %_1804)
  ret i64 %_1799
_1797:
  br label %_1798
_1798:
  %_1806 = load i64, i64* %_1739
  %_1807 = load i64, i64* %_1738
  %_1808 = sub i64 %_1806, %_1807
  %_1809 = lshr i64 %_1808, 1
  %_1810 = load i64, i64* %_1738
  %_1805 = call i64 @binary_gcd(i64 %_1809, i64 %_1810)
  ret i64 %_1805
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1731 = alloca i64
  store i64 %argc, i64* %_1731
  %_1732 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1732
  %_1733 = alloca i64
  %_1734 = alloca i64
  store i64 21, i64* %_1733
  store i64 15, i64* %_1734
  %_1736 = load i64, i64* %_1733
  %_1737 = load i64, i64* %_1734
  %_1735 = call i64 @binary_gcd(i64 %_1736, i64 %_1737)
  ret i64 %_1735
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
