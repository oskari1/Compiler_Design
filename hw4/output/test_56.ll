; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_1921 to { i64, [0 x i1] }*)
@_1921 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_1906 = global [2 x i8] c"T\00"
@_1908 = global [2 x i8] c"F\00"
@_1879 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_1910 = alloca i1
  store i1 %x, i1* %_1910
  %_1911 = alloca i1
  store i1 %y, i1* %_1911
  %_1912 = load i1, i1* %_1910
  %_1913 = load i1, i1* %_1911
  %_1914 = and i1 1, %_1913
  %_1915 = and i1 %_1912, %_1914
  %_1916 = load i1, i1* %_1910
  %_1917 = and i1 1, %_1916
  %_1918 = load i1, i1* %_1911
  %_1919 = and i1 %_1917, %_1918
  %_1920 = or i1 %_1915, %_1919
  ret i1 %_1920
}

define i8* @string_of_bool(i1 %b) {
  %_1901 = alloca i1
  store i1 %b, i1* %_1901
  %_1902 = load i1, i1* %_1901
  br i1 %_1902, label %_1903, label %_1904
_1903:
  %_1907 = getelementptr [2 x i8], [2 x i8]* @_1906, i32 0, i32 0
  ret i8* %_1907
_1904:
  %_1909 = getelementptr [2 x i8], [2 x i8]* @_1908, i32 0, i32 0
  ret i8* %_1909
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_1884 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_1884
  %_1885 = alloca i64
  store i64 %len, i64* %_1885
  %_1886 = alloca i64
  store i64 0, i64* %_1886
  br label %_1890
_1890:
  %_1887 = load i64, i64* %_1886
  %_1888 = load i64, i64* %_1885
  %_1889 = icmp slt i64 %_1887, %_1888
  br i1 %_1889, label %_1891, label %_1892
_1891:
  %_1895 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1884
  %_1896 = load i64, i64* %_1886
  %_1897 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1895, i32 0, i32 1, i64 %_1896
  %_1898 = load i1, i1* %_1897
  %_1894 = call i8* @string_of_bool(i1 %_1898)
  call void @print_string(i8* %_1894)
  %_1899 = load i64, i64* %_1886
  %_1900 = add i64 %_1899, 1
  store i64 %_1900, i64* %_1886
  br label %_1890
_1892:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1811 = alloca i64
  store i64 %argc, i64* %_1811
  %_1812 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1812
  %_1813 = alloca { i64, [0 x i1] }*
  %_1817 = alloca i64
  %_1833 = alloca i64
  %_1840 = alloca i1
  %_1852 = alloca i64
  %_1814 = load i64, i64* @lfsr_length
  %_raw_array1815 = call i64* @oat_alloc_array(i64 %_1814)
  %_array1816 = bitcast i64* %_raw_array1815 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array1816, { i64, [0 x i1] }** %_1813
  store i64 0, i64* %_1817
  br label %_1821
_1821:
  %_1818 = load i64, i64* %_1817
  %_1819 = load i64, i64* @lfsr_length
  %_1820 = icmp slt i64 %_1818, %_1819
  br i1 %_1820, label %_1822, label %_1823
_1822:
  %_1824 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_1825 = load i64, i64* %_1817
  %_1826 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1824, i32 0, i32 1, i64 %_1825
  %_1827 = load i1, i1* %_1826
  %_1829 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1813
  %_1830 = load i64, i64* %_1817
  %_1828 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1829, i32 0, i32 1, i64 %_1830
  store i1 %_1827, i1* %_1828
  %_1831 = load i64, i64* %_1817
  %_1832 = add i64 %_1831, 1
  store i64 %_1832, i64* %_1817
  br label %_1821
_1823:
  store i64 0, i64* %_1833
  br label %_1837
_1837:
  %_1834 = load i64, i64* %_1833
  %_1835 = load i64, i64* @lfsr_iterations
  %_1836 = icmp slt i64 %_1834, %_1835
  br i1 %_1836, label %_1838, label %_1839
_1838:
  %_1842 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1813
  %_1843 = load i64, i64* @lfsr_length
  %_1844 = sub i64 %_1843, 1
  %_1845 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1842, i32 0, i32 1, i64 %_1844
  %_1846 = load i1, i1* %_1845
  %_1847 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1813
  %_1848 = load i64, i64* @lfsr_length
  %_1849 = sub i64 %_1848, 2
  %_1850 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1847, i32 0, i32 1, i64 %_1849
  %_1851 = load i1, i1* %_1850
  %_1841 = call i1 @xor(i1 %_1846, i1 %_1851)
  store i1 %_1841, i1* %_1840
  %_1853 = load i64, i64* @lfsr_length
  %_1854 = sub i64 %_1853, 1
  store i64 %_1854, i64* %_1852
  br label %_1857
_1857:
  %_1855 = load i64, i64* %_1852
  %_1856 = icmp sgt i64 %_1855, 0
  br i1 %_1856, label %_1858, label %_1859
_1858:
  %_1860 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1813
  %_1861 = load i64, i64* %_1852
  %_1862 = sub i64 %_1861, 1
  %_1863 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1860, i32 0, i32 1, i64 %_1862
  %_1864 = load i1, i1* %_1863
  %_1866 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1813
  %_1867 = load i64, i64* %_1852
  %_1865 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1866, i32 0, i32 1, i64 %_1867
  store i1 %_1864, i1* %_1865
  %_1868 = load i64, i64* %_1852
  %_1869 = sub i64 %_1868, 1
  store i64 %_1869, i64* %_1852
  br label %_1857
_1859:
  %_1870 = load i1, i1* %_1840
  %_1872 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1813
  %_1871 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_1872, i32 0, i32 1, i32 0
  store i1 %_1870, i1* %_1871
  %_1873 = load i64, i64* %_1833
  %_1874 = add i64 %_1873, 1
  store i64 %_1874, i64* %_1833
  br label %_1837
_1839:
  %_1876 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_1877 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_1876, i64 %_1877)
  %_1880 = getelementptr [2 x i8], [2 x i8]* @_1879, i32 0, i32 0
  call void @print_string(i8* %_1880)
  %_1882 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_1813
  %_1883 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_1882, i64 %_1883)
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
