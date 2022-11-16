; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_2037 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2037
  %_2038 = alloca i64
  store i64 %l, i64* %_2038
  %_2039 = alloca i64
  store i64 %r, i64* %_2039
  %_2040 = alloca i64
  store i64 0, i64* %_2040
  %_2041 = load i64, i64* %_2038
  %_2042 = load i64, i64* %_2039
  %_2043 = icmp slt i64 %_2041, %_2042
  br i1 %_2043, label %_2044, label %_2045
_2044:
  %_2048 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2037
  %_2049 = load i64, i64* %_2038
  %_2050 = load i64, i64* %_2039
  %_2047 = call i64 @partition({ i64, [0 x i64] }* %_2048, i64 %_2049, i64 %_2050)
  store i64 %_2047, i64* %_2040
  %_2052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2037
  %_2053 = load i64, i64* %_2038
  %_2054 = load i64, i64* %_2040
  %_2055 = sub i64 %_2054, 1
  call void @quick_sort({ i64, [0 x i64] }* %_2052, i64 %_2053, i64 %_2055)
  %_2057 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2037
  %_2058 = load i64, i64* %_2040
  %_2059 = add i64 %_2058, 1
  %_2060 = load i64, i64* %_2039
  call void @quick_sort({ i64, [0 x i64] }* %_2057, i64 %_2059, i64 %_2060)
  br label %_2046
_2045:
  br label %_2046
_2046:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_1945 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_1945
  %_1946 = alloca i64
  store i64 %l, i64* %_1946
  %_1947 = alloca i64
  store i64 %r, i64* %_1947
  %_1948 = alloca i64
  %_1953 = alloca i64
  %_1955 = alloca i64
  %_1958 = alloca i64
  %_1959 = alloca i64
  %_1949 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_1950 = load i64, i64* %_1946
  %_1951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1949, i32 0, i32 1, i64 %_1950
  %_1952 = load i64, i64* %_1951
  store i64 %_1952, i64* %_1948
  %_1954 = load i64, i64* %_1946
  store i64 %_1954, i64* %_1953
  %_1956 = load i64, i64* %_1947
  %_1957 = add i64 %_1956, 1
  store i64 %_1957, i64* %_1955
  store i64 0, i64* %_1958
  store i64 0, i64* %_1959
  br label %_1962
_1962:
  %_1960 = load i64, i64* %_1959
  %_1961 = icmp eq i64 %_1960, 0
  br i1 %_1961, label %_1963, label %_1964
_1963:
  %_1965 = load i64, i64* %_1953
  %_1966 = add i64 %_1965, 1
  store i64 %_1966, i64* %_1953
  br label %_1977
_1977:
  %_1967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_1968 = load i64, i64* %_1953
  %_1969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1967, i32 0, i32 1, i64 %_1968
  %_1970 = load i64, i64* %_1969
  %_1971 = load i64, i64* %_1948
  %_1972 = icmp sle i64 %_1970, %_1971
  %_1973 = load i64, i64* %_1953
  %_1974 = load i64, i64* %_1947
  %_1975 = icmp sle i64 %_1973, %_1974
  %_1976 = and i1 %_1972, %_1975
  br i1 %_1976, label %_1978, label %_1979
_1978:
  %_1980 = load i64, i64* %_1953
  %_1981 = add i64 %_1980, 1
  store i64 %_1981, i64* %_1953
  br label %_1977
_1979:
  %_1982 = load i64, i64* %_1955
  %_1983 = sub i64 %_1982, 1
  store i64 %_1983, i64* %_1955
  br label %_1990
_1990:
  %_1984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_1985 = load i64, i64* %_1955
  %_1986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1984, i32 0, i32 1, i64 %_1985
  %_1987 = load i64, i64* %_1986
  %_1988 = load i64, i64* %_1948
  %_1989 = icmp sgt i64 %_1987, %_1988
  br i1 %_1989, label %_1991, label %_1992
_1991:
  %_1993 = load i64, i64* %_1955
  %_1994 = sub i64 %_1993, 1
  store i64 %_1994, i64* %_1955
  br label %_1990
_1992:
  %_1995 = load i64, i64* %_1953
  %_1996 = load i64, i64* %_1955
  %_1997 = icmp sge i64 %_1995, %_1996
  br i1 %_1997, label %_1998, label %_1999
_1998:
  store i64 1, i64* %_1959
  br label %_2000
_1999:
  br label %_2000
_2000:
  %_2001 = load i64, i64* %_1959
  %_2002 = icmp eq i64 %_2001, 0
  br i1 %_2002, label %_2003, label %_2004
_2003:
  %_2006 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_2007 = load i64, i64* %_1953
  %_2008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2006, i32 0, i32 1, i64 %_2007
  %_2009 = load i64, i64* %_2008
  store i64 %_2009, i64* %_1958
  %_2010 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_2011 = load i64, i64* %_1955
  %_2012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2010, i32 0, i32 1, i64 %_2011
  %_2013 = load i64, i64* %_2012
  %_2015 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_2016 = load i64, i64* %_1953
  %_2014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2015, i32 0, i32 1, i64 %_2016
  store i64 %_2013, i64* %_2014
  %_2017 = load i64, i64* %_1958
  %_2019 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_2020 = load i64, i64* %_1955
  %_2018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2019, i32 0, i32 1, i64 %_2020
  store i64 %_2017, i64* %_2018
  br label %_2005
_2004:
  br label %_2005
_2005:
  br label %_1962
_1964:
  %_2021 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_2022 = load i64, i64* %_1946
  %_2023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2021, i32 0, i32 1, i64 %_2022
  %_2024 = load i64, i64* %_2023
  store i64 %_2024, i64* %_1958
  %_2025 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_2026 = load i64, i64* %_1955
  %_2027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2025, i32 0, i32 1, i64 %_2026
  %_2028 = load i64, i64* %_2027
  %_2030 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_2031 = load i64, i64* %_1946
  %_2029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2030, i32 0, i32 1, i64 %_2031
  store i64 %_2028, i64* %_2029
  %_2032 = load i64, i64* %_1958
  %_2034 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1945
  %_2035 = load i64, i64* %_1955
  %_2033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2034, i32 0, i32 1, i64 %_2035
  store i64 %_2032, i64* %_2033
  %_2036 = load i64, i64* %_1955
  ret i64 %_2036
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1932 = alloca i64
  store i64 %argc, i64* %_1932
  %_1933 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1933
  %_1934 = alloca { i64, [0 x i64] }*
  %_raw_array1935 = call i64* @oat_alloc_array(i64 9)
  %_array1936 = bitcast i64* %_raw_array1935 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1936, { i64, [0 x i64] }** %_1934
  %_1939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1934
  %_1938 = call i8* @string_of_array({ i64, [0 x i64] }* %_1939)
  call void @print_string(i8* %_1938)
  %_1941 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1934
  call void @quick_sort({ i64, [0 x i64] }* %_1941, i64 0, i64 8)
  %_1944 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1934
  %_1943 = call i8* @string_of_array({ i64, [0 x i64] }* %_1944)
  call void @print_string(i8* %_1943)
  ret i64 255
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
