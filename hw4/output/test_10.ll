; generated from: oatprograms/qs_bs.oat
target triple = "x86_64-unknown-linux"
define i64 @partition({ i64, [0 x i64] }* %a, i64 %low_ind, i64 %hi_ind) {
  %_1811 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_1811
  %_1812 = alloca i64
  store i64 %low_ind, i64* %_1812
  %_1813 = alloca i64
  store i64 %hi_ind, i64* %_1813
  %_1814 = alloca i64
  %_1819 = alloca i64
  %_1822 = alloca i64
  %_1841 = alloca i64
  %_1859 = alloca i64
  %_1815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1811
  %_1816 = load i64, i64* %_1813
  %_1817 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1815, i32 0, i32 1, i64 %_1816
  %_1818 = load i64, i64* %_1817
  store i64 %_1818, i64* %_1814
  %_1820 = load i64, i64* %_1812
  %_1821 = sub i64 %_1820, 1
  store i64 %_1821, i64* %_1819
  %_1823 = load i64, i64* %_1812
  store i64 %_1823, i64* %_1822
  br label %_1827
_1827:
  %_1824 = load i64, i64* %_1822
  %_1825 = load i64, i64* %_1813
  %_1826 = icmp slt i64 %_1824, %_1825
  br i1 %_1826, label %_1828, label %_1829
_1828:
  %_1830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1811
  %_1831 = load i64, i64* %_1822
  %_1832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1830, i32 0, i32 1, i64 %_1831
  %_1833 = load i64, i64* %_1832
  %_1834 = load i64, i64* %_1814
  %_1835 = icmp sle i64 %_1833, %_1834
  br i1 %_1835, label %_1836, label %_1837
_1836:
  %_1839 = load i64, i64* %_1819
  %_1840 = add i64 %_1839, 1
  store i64 %_1840, i64* %_1819
  %_1842 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1811
  %_1843 = load i64, i64* %_1819
  %_1844 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1842, i32 0, i32 1, i64 %_1843
  %_1845 = load i64, i64* %_1844
  store i64 %_1845, i64* %_1841
  %_1846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1811
  %_1847 = load i64, i64* %_1822
  %_1848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1846, i32 0, i32 1, i64 %_1847
  %_1849 = load i64, i64* %_1848
  %_1851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1811
  %_1852 = load i64, i64* %_1819
  %_1850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1851, i32 0, i32 1, i64 %_1852
  store i64 %_1849, i64* %_1850
  %_1853 = load i64, i64* %_1841
  %_1855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1811
  %_1856 = load i64, i64* %_1822
  %_1854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1855, i32 0, i32 1, i64 %_1856
  store i64 %_1853, i64* %_1854
  br label %_1838
_1837:
  br label %_1838
_1838:
  %_1857 = load i64, i64* %_1822
  %_1858 = add i64 %_1857, 1
  store i64 %_1858, i64* %_1822
  br label %_1827
_1829:
  %_1860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1811
  %_1861 = load i64, i64* %_1819
  %_1862 = add i64 %_1861, 1
  %_1863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1860, i32 0, i32 1, i64 %_1862
  %_1864 = load i64, i64* %_1863
  store i64 %_1864, i64* %_1859
  %_1865 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1811
  %_1866 = load i64, i64* %_1813
  %_1867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1865, i32 0, i32 1, i64 %_1866
  %_1868 = load i64, i64* %_1867
  %_1870 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1811
  %_1871 = load i64, i64* %_1819
  %_1872 = add i64 %_1871, 1
  %_1869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1870, i32 0, i32 1, i64 %_1872
  store i64 %_1868, i64* %_1869
  %_1873 = load i64, i64* %_1859
  %_1875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1811
  %_1876 = load i64, i64* %_1813
  %_1874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1875, i32 0, i32 1, i64 %_1876
  store i64 %_1873, i64* %_1874
  %_1877 = load i64, i64* %_1819
  %_1878 = add i64 %_1877, 1
  ret i64 %_1878
}

define void @quicksort({ i64, [0 x i64] }* %a, i64 %low_ind, i64 %hi_ind) {
  %_1787 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_1787
  %_1788 = alloca i64
  store i64 %low_ind, i64* %_1788
  %_1789 = alloca i64
  store i64 %hi_ind, i64* %_1789
  %_1796 = alloca i64
  %_1790 = load i64, i64* %_1788
  %_1791 = load i64, i64* %_1789
  %_1792 = icmp slt i64 %_1790, %_1791
  br i1 %_1792, label %_1793, label %_1794
_1793:
  %_1798 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1787
  %_1799 = load i64, i64* %_1788
  %_1800 = load i64, i64* %_1789
  %_1797 = call i64 @partition({ i64, [0 x i64] }* %_1798, i64 %_1799, i64 %_1800)
  store i64 %_1797, i64* %_1796
  %_1802 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1787
  %_1803 = load i64, i64* %_1788
  %_1804 = load i64, i64* %_1796
  %_1805 = sub i64 %_1804, 1
  call void @quicksort({ i64, [0 x i64] }* %_1802, i64 %_1803, i64 %_1805)
  %_1807 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1787
  %_1808 = load i64, i64* %_1796
  %_1809 = add i64 %_1808, 1
  %_1810 = load i64, i64* %_1789
  call void @quicksort({ i64, [0 x i64] }* %_1807, i64 %_1809, i64 %_1810)
  br label %_1795
_1794:
  br label %_1795
_1795:
  ret void
}

define i64 @int_division(i64 %a, i64 %b) {
  %_1771 = alloca i64
  store i64 %a, i64* %_1771
  %_1772 = alloca i64
  store i64 %b, i64* %_1772
  %_1773 = alloca i64
  %_1774 = alloca i64
  store i64 0, i64* %_1773
  store i64 0, i64* %_1774
  br label %_1778
_1778:
  %_1775 = load i64, i64* %_1771
  %_1776 = load i64, i64* %_1773
  %_1777 = icmp sgt i64 %_1775, %_1776
  br i1 %_1777, label %_1779, label %_1780
_1779:
  %_1781 = load i64, i64* %_1773
  %_1782 = load i64, i64* %_1772
  %_1783 = add i64 %_1781, %_1782
  store i64 %_1783, i64* %_1773
  %_1784 = load i64, i64* %_1774
  %_1785 = add i64 %_1784, 1
  store i64 %_1785, i64* %_1774
  br label %_1778
_1780:
  %_1786 = load i64, i64* %_1774
  ret i64 %_1786
}

define i64 @binary_search({ i64, [0 x i64] }* %a, i64 %e, i64 %max, i64 %min) {
  %_1729 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_1729
  %_1730 = alloca i64
  store i64 %e, i64* %_1730
  %_1731 = alloca i64
  store i64 %max, i64* %_1731
  %_1732 = alloca i64
  store i64 %min, i64* %_1732
  %_1733 = alloca i64
  %_1734 = load i64, i64* %_1732
  %_1736 = load i64, i64* %_1731
  %_1737 = load i64, i64* %_1732
  %_1738 = sub i64 %_1736, %_1737
  %_1735 = call i64 @int_division(i64 %_1738, i64 2)
  %_1739 = add i64 %_1734, %_1735
  store i64 %_1739, i64* %_1733
  %_1740 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1729
  %_1741 = load i64, i64* %_1733
  %_1742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1740, i32 0, i32 1, i64 %_1741
  %_1743 = load i64, i64* %_1742
  %_1744 = load i64, i64* %_1730
  %_1745 = icmp eq i64 %_1743, %_1744
  br i1 %_1745, label %_1746, label %_1747
_1746:
  %_1749 = load i64, i64* %_1733
  ret i64 %_1749
_1747:
  br label %_1748
_1748:
  %_1750 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1729
  %_1751 = load i64, i64* %_1733
  %_1752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1750, i32 0, i32 1, i64 %_1751
  %_1753 = load i64, i64* %_1752
  %_1754 = load i64, i64* %_1730
  %_1755 = icmp sgt i64 %_1753, %_1754
  br i1 %_1755, label %_1756, label %_1757
_1756:
  %_1760 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1729
  %_1761 = load i64, i64* %_1730
  %_1762 = load i64, i64* %_1733
  %_1763 = sub i64 %_1762, 1
  %_1764 = load i64, i64* %_1732
  %_1759 = call i64 @binary_search({ i64, [0 x i64] }* %_1760, i64 %_1761, i64 %_1763, i64 %_1764)
  ret i64 %_1759
_1757:
  br label %_1758
_1758:
  %_1766 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1729
  %_1767 = load i64, i64* %_1730
  %_1768 = load i64, i64* %_1731
  %_1769 = load i64, i64* %_1733
  %_1770 = add i64 %_1769, 1
  %_1765 = call i64 @binary_search({ i64, [0 x i64] }* %_1766, i64 %_1767, i64 %_1768, i64 %_1770)
  ret i64 %_1765
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1697 = alloca i64
  store i64 %argc, i64* %_1697
  %_1698 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1698
  %_1699 = alloca { i64, [0 x i64] }*
  %_raw_array1700 = call i64* @oat_alloc_array(i64 15)
  %_array1701 = bitcast i64* %_raw_array1700 to { i64, [0 x i64] }*
  %_1716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 14
  store i64 20, i64* %_1716
  %_1715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 13
  store i64 4, i64* %_1715
  %_1714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 12
  store i64 33, i64* %_1714
  %_1713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 11
  store i64 999, i64* %_1713
  %_1712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 10
  store i64 55, i64* %_1712
  %_1711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 9
  store i64 99, i64* %_1711
  %_1710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 8
  store i64 1000, i64* %_1710
  %_1709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 7
  store i64 100, i64* %_1709
  %_1708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 6
  store i64 10, i64* %_1708
  %_1707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 5
  store i64 7, i64* %_1707
  %_1706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 4
  store i64 2, i64* %_1706
  %_1705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 3
  store i64 4, i64* %_1705
  %_1704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 2
  store i64 6, i64* %_1704
  %_1703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 1
  store i64 9, i64* %_1703
  %_1702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 0
  store i64 5, i64* %_1702
  store { i64, [0 x i64] }* %_array1701, { i64, [0 x i64] }** %_1699
  %_1718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1699
  call void @quicksort({ i64, [0 x i64] }* %_1718, i64 0, i64 14)
  %_1720 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1699
  %_1719 = call i64 @binary_search({ i64, [0 x i64] }* %_1720, i64 10, i64 14, i64 0)
  %_1722 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1699
  %_1721 = call i64 @binary_search({ i64, [0 x i64] }* %_1722, i64 4, i64 14, i64 0)
  %_1723 = mul i64 7, %_1721
  %_1724 = add i64 %_1719, %_1723
  %_1726 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1699
  %_1725 = call i64 @binary_search({ i64, [0 x i64] }* %_1726, i64 999, i64 14, i64 0)
  %_1727 = mul i64 23, %_1725
  %_1728 = add i64 %_1724, %_1727
  ret i64 %_1728
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
