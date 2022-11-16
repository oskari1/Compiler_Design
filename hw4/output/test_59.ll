; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_2099 to { i64, [0 x i64] }*)
@_2099 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_2027 = global [1 x i8] c"\00"
@_2006 = global [7 x i8] c"TOMATO\00"
@_2009 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_2015 = alloca i64
  store i64 %i, i64* %_2015
  %_2016 = alloca i64
  store i64 %j, i64* %_2016
  %_2017 = alloca i8*
  store i8* %a, i8** %_2017
  %_2018 = alloca i8*
  store i8* %b, i8** %_2018
  %_2029 = alloca { i64, [0 x i64] }*
  %_2032 = alloca { i64, [0 x i64] }*
  %_2035 = alloca i64
  %_2040 = alloca i64
  %_2051 = alloca i8*
  %_2065 = alloca i8*
  %_2071 = alloca i8*
  %_2078 = alloca i8*
  %_2085 = alloca i64
  %_2088 = alloca i64
  %_2019 = load i64, i64* %_2015
  %_2020 = icmp slt i64 %_2019, 0
  %_2021 = load i64, i64* %_2016
  %_2022 = icmp slt i64 %_2021, 0
  %_2023 = or i1 %_2020, %_2022
  br i1 %_2023, label %_2024, label %_2025
_2024:
  %_2028 = getelementptr [1 x i8], [1 x i8]* @_2027, i32 0, i32 0
  ret i8* %_2028
_2025:
  br label %_2026
_2026:
  %_2031 = load i8*, i8** %_2017
  %_2030 = call { i64, [0 x i64] }* @array_of_string(i8* %_2031)
  store { i64, [0 x i64] }* %_2030, { i64, [0 x i64] }** %_2029
  %_2034 = load i8*, i8** %_2018
  %_2033 = call { i64, [0 x i64] }* @array_of_string(i8* %_2034)
  store { i64, [0 x i64] }* %_2033, { i64, [0 x i64] }** %_2032
  %_2036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2029
  %_2037 = load i64, i64* %_2015
  %_2038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2036, i32 0, i32 1, i64 %_2037
  %_2039 = load i64, i64* %_2038
  store i64 %_2039, i64* %_2035
  %_2041 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2032
  %_2042 = load i64, i64* %_2016
  %_2043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2041, i32 0, i32 1, i64 %_2042
  %_2044 = load i64, i64* %_2043
  store i64 %_2044, i64* %_2040
  %_2045 = load i64, i64* %_2035
  %_2046 = load i64, i64* %_2040
  %_2047 = icmp eq i64 %_2045, %_2046
  br i1 %_2047, label %_2048, label %_2049
_2048:
  %_2053 = load i64, i64* %_2015
  %_2054 = sub i64 %_2053, 1
  %_2055 = load i64, i64* %_2016
  %_2056 = sub i64 %_2055, 1
  %_2057 = load i8*, i8** %_2017
  %_2058 = load i8*, i8** %_2018
  %_2052 = call i8* @lcs(i64 %_2054, i64 %_2056, i8* %_2057, i8* %_2058)
  store i8* %_2052, i8** %_2051
  %_2059 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2029
  %_2060 = load i64, i64* %_2015
  %_2061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2059, i32 0, i32 1, i64 %_2060
  %_2062 = load i64, i64* %_2061
  %_2064 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_2063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2064, i32 0, i32 1, i32 0
  store i64 %_2062, i64* %_2063
  %_2067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_2066 = call i8* @string_of_array({ i64, [0 x i64] }* %_2067)
  store i8* %_2066, i8** %_2065
  %_2069 = load i8*, i8** %_2051
  %_2070 = load i8*, i8** %_2065
  %_2068 = call i8* @string_cat(i8* %_2069, i8* %_2070)
  ret i8* %_2068
_2049:
  br label %_2050
_2050:
  %_2073 = load i64, i64* %_2015
  %_2074 = load i64, i64* %_2016
  %_2075 = sub i64 %_2074, 1
  %_2076 = load i8*, i8** %_2017
  %_2077 = load i8*, i8** %_2018
  %_2072 = call i8* @lcs(i64 %_2073, i64 %_2075, i8* %_2076, i8* %_2077)
  store i8* %_2072, i8** %_2071
  %_2080 = load i64, i64* %_2015
  %_2081 = sub i64 %_2080, 1
  %_2082 = load i64, i64* %_2016
  %_2083 = load i8*, i8** %_2017
  %_2084 = load i8*, i8** %_2018
  %_2079 = call i8* @lcs(i64 %_2081, i64 %_2082, i8* %_2083, i8* %_2084)
  store i8* %_2079, i8** %_2078
  %_2087 = load i8*, i8** %_2071
  %_2086 = call i64 @length_of_string(i8* %_2087)
  store i64 %_2086, i64* %_2085
  %_2090 = load i8*, i8** %_2078
  %_2089 = call i64 @length_of_string(i8* %_2090)
  store i64 %_2089, i64* %_2088
  %_2091 = load i64, i64* %_2085
  %_2092 = load i64, i64* %_2088
  %_2093 = icmp slt i64 %_2091, %_2092
  br i1 %_2093, label %_2094, label %_2095
_2094:
  %_2097 = load i8*, i8** %_2078
  ret i8* %_2097
_2095:
  %_2098 = load i8*, i8** %_2071
  ret i8* %_2098
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2003 = alloca i64
  store i64 %argc, i64* %_2003
  %_2004 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2004
  %_2005 = alloca i8*
  %_2008 = alloca i8*
  %_2007 = getelementptr [7 x i8], [7 x i8]* @_2006, i32 0, i32 0
  store i8* %_2007, i8** %_2005
  %_2010 = getelementptr [8 x i8], [8 x i8]* @_2009, i32 0, i32 0
  store i8* %_2010, i8** %_2008
  %_2013 = load i8*, i8** %_2005
  %_2014 = load i8*, i8** %_2008
  %_2012 = call i8* @lcs(i64 5, i64 6, i8* %_2013, i8* %_2014)
  call void @print_string(i8* %_2012)
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
