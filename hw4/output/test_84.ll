; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_1886 = alloca i8*
  store i8* %str, i8** %_1886
  %_1887 = alloca i64
  store i64 %start, i64* %_1887
  %_1888 = alloca i64
  store i64 %len, i64* %_1888
  %_1889 = alloca { i64, [0 x i64] }*
  %_1892 = alloca { i64, [0 x i64] }*
  %_1896 = alloca i64
  %_1891 = load i8*, i8** %_1886
  %_1890 = call { i64, [0 x i64] }* @array_of_string(i8* %_1891)
  store { i64, [0 x i64] }* %_1890, { i64, [0 x i64] }** %_1889
  %_1893 = load i64, i64* %_1888
  %_raw_array1894 = call i64* @oat_alloc_array(i64 %_1893)
  %_array1895 = bitcast i64* %_raw_array1894 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1895, { i64, [0 x i64] }** %_1892
  store i64 0, i64* %_1896
  br label %_1900
_1900:
  %_1897 = load i64, i64* %_1896
  %_1898 = load i64, i64* %_1888
  %_1899 = icmp slt i64 %_1897, %_1898
  br i1 %_1899, label %_1901, label %_1902
_1901:
  %_1903 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1889
  %_1904 = load i64, i64* %_1896
  %_1905 = load i64, i64* %_1887
  %_1906 = add i64 %_1904, %_1905
  %_1907 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1903, i32 0, i32 1, i64 %_1906
  %_1908 = load i64, i64* %_1907
  %_1910 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1892
  %_1911 = load i64, i64* %_1896
  %_1909 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1910, i32 0, i32 1, i64 %_1911
  store i64 %_1908, i64* %_1909
  %_1912 = load i64, i64* %_1896
  %_1913 = add i64 %_1912, 1
  store i64 %_1913, i64* %_1896
  br label %_1900
_1902:
  %_1915 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1892
  %_1914 = call i8* @string_of_array({ i64, [0 x i64] }* %_1915)
  ret i8* %_1914
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1879 = alloca i64
  store i64 %argc, i64* %_1879
  %_1880 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1880
  %_1883 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1880
  %_1884 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1883, i32 0, i32 1, i32 1
  %_1885 = load i8*, i8** %_1884
  %_1882 = call i8* @sub(i8* %_1885, i64 3, i64 5)
  call void @print_string(i8* %_1882)
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
