; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_1841 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1837 = alloca i64
  store i64 %argc, i64* %_1837
  %_1838 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1838
  %_1839 = alloca { i64, [0 x i64] }*
  %_1843 = alloca i64
  %_1844 = alloca i64
  %_1856 = alloca i64
  %_1842 = getelementptr [11 x i8], [11 x i8]* @_1841, i32 0, i32 0
  %_1840 = call { i64, [0 x i64] }* @array_of_string(i8* %_1842)
  store { i64, [0 x i64] }* %_1840, { i64, [0 x i64] }** %_1839
  store i64 0, i64* %_1843
  store i64 0, i64* %_1844
  br label %_1847
_1847:
  %_1845 = load i64, i64* %_1844
  %_1846 = icmp slt i64 %_1845, 10
  br i1 %_1846, label %_1848, label %_1849
_1848:
  %_1850 = load i64, i64* %_1844
  %_1852 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1839
  %_1853 = load i64, i64* %_1844
  %_1851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1852, i32 0, i32 1, i64 %_1853
  store i64 %_1850, i64* %_1851
  %_1854 = load i64, i64* %_1844
  %_1855 = add i64 %_1854, 1
  store i64 %_1855, i64* %_1844
  br label %_1847
_1849:
  store i64 0, i64* %_1856
  br label %_1859
_1859:
  %_1857 = load i64, i64* %_1856
  %_1858 = icmp slt i64 %_1857, 10
  br i1 %_1858, label %_1860, label %_1861
_1860:
  %_1862 = load i64, i64* %_1843
  %_1863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1839
  %_1864 = load i64, i64* %_1856
  %_1865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1863, i32 0, i32 1, i64 %_1864
  %_1866 = load i64, i64* %_1865
  %_1867 = add i64 %_1862, %_1866
  store i64 %_1867, i64* %_1843
  %_1868 = load i64, i64* %_1856
  %_1869 = add i64 %_1868, 1
  store i64 %_1869, i64* %_1856
  br label %_1859
_1861:
  %_1870 = load i64, i64* %_1843
  ret i64 %_1870
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
