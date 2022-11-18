; generated from: oatprograms/regex.oat
target triple = "x86_64-unknown-linux"
define i64 @reg_match({ i64, [0 x i64] }* %str, { i64, [0 x i64] }* %reg, i64 %p1, i64 %p2, i64 %last) {
  %_2027 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %str, { i64, [0 x i64] }** %_2027
  %_2028 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %reg, { i64, [0 x i64] }** %_2028
  %_2029 = alloca i64
  store i64 %p1, i64* %_2029
  %_2030 = alloca i64
  store i64 %p2, i64* %_2030
  %_2031 = alloca i64
  store i64 %last, i64* %_2031
  %_2101 = alloca i64
  %_2032 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2027
  %_2033 = load i64, i64* %_2029
  %_2034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2032, i32 0, i32 1, i64 %_2033
  %_2035 = load i64, i64* %_2034
  %_2036 = icmp eq i64 %_2035, 0
  %_2037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2038 = load i64, i64* %_2030
  %_2039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2037, i32 0, i32 1, i64 %_2038
  %_2040 = load i64, i64* %_2039
  %_2041 = icmp eq i64 %_2040, 0
  %_2042 = and i1 %_2036, %_2041
  br i1 %_2042, label %_2043, label %_2044
_2043:
  ret i64 1
_2044:
  br label %_2045
_2045:
  %_2046 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2027
  %_2047 = load i64, i64* %_2029
  %_2048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2046, i32 0, i32 1, i64 %_2047
  %_2049 = load i64, i64* %_2048
  %_2050 = icmp eq i64 %_2049, 0
  %_2051 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2052 = load i64, i64* %_2030
  %_2053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2051, i32 0, i32 1, i64 %_2052
  %_2054 = load i64, i64* %_2053
  %_2055 = icmp ne i64 %_2054, 0
  %_2056 = and i1 %_2050, %_2055
  br i1 %_2056, label %_2057, label %_2058
_2057:
  ret i64 0
_2058:
  br label %_2059
_2059:
  %_2060 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2027
  %_2061 = load i64, i64* %_2029
  %_2062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2060, i32 0, i32 1, i64 %_2061
  %_2063 = load i64, i64* %_2062
  %_2064 = icmp ne i64 %_2063, 0
  %_2065 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2066 = load i64, i64* %_2030
  %_2067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2065, i32 0, i32 1, i64 %_2066
  %_2068 = load i64, i64* %_2067
  %_2069 = icmp eq i64 %_2068, 0
  %_2070 = and i1 %_2064, %_2069
  br i1 %_2070, label %_2071, label %_2072
_2071:
  ret i64 0
_2072:
  br label %_2073
_2073:
  %_2074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2075 = load i64, i64* %_2030
  %_2076 = add i64 %_2075, 1
  %_2077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2074, i32 0, i32 1, i64 %_2076
  %_2078 = load i64, i64* %_2077
  %_2079 = icmp eq i64 %_2078, 42
  br i1 %_2079, label %_2080, label %_2081
_2080:
  %_2084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2027
  %_2085 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2086 = load i64, i64* %_2029
  %_2087 = load i64, i64* %_2030
  %_2088 = add i64 %_2087, 1
  %_2089 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2090 = load i64, i64* %_2030
  %_2091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2089, i32 0, i32 1, i64 %_2090
  %_2092 = load i64, i64* %_2091
  %_2083 = call i64 @reg_match({ i64, [0 x i64] }* %_2084, { i64, [0 x i64] }* %_2085, i64 %_2086, i64 %_2088, i64 %_2092)
  ret i64 %_2083
_2081:
  br label %_2082
_2082:
  %_2093 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2094 = load i64, i64* %_2030
  %_2095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2093, i32 0, i32 1, i64 %_2094
  %_2096 = load i64, i64* %_2095
  %_2097 = icmp eq i64 %_2096, 42
  br i1 %_2097, label %_2098, label %_2099
_2098:
  %_2103 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2027
  %_2104 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2105 = load i64, i64* %_2029
  %_2106 = load i64, i64* %_2030
  %_2107 = add i64 %_2106, 1
  %_2102 = call i64 @reg_match({ i64, [0 x i64] }* %_2103, { i64, [0 x i64] }* %_2104, i64 %_2105, i64 %_2107, i64 0)
  store i64 %_2102, i64* %_2101
  %_2108 = load i64, i64* %_2101
  %_2109 = icmp eq i64 %_2108, 1
  br i1 %_2109, label %_2110, label %_2111
_2110:
  ret i64 1
_2111:
  br label %_2112
_2112:
  %_2113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2027
  %_2114 = load i64, i64* %_2029
  %_2115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2113, i32 0, i32 1, i64 %_2114
  %_2116 = load i64, i64* %_2115
  %_2117 = load i64, i64* %_2031
  %_2118 = icmp eq i64 %_2116, %_2117
  %_2119 = load i64, i64* %_2031
  %_2120 = icmp eq i64 %_2119, 46
  %_2121 = or i1 %_2118, %_2120
  br i1 %_2121, label %_2122, label %_2123
_2122:
  %_2126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2027
  %_2127 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2128 = load i64, i64* %_2029
  %_2129 = add i64 %_2128, 1
  %_2130 = load i64, i64* %_2030
  %_2131 = load i64, i64* %_2031
  %_2125 = call i64 @reg_match({ i64, [0 x i64] }* %_2126, { i64, [0 x i64] }* %_2127, i64 %_2129, i64 %_2130, i64 %_2131)
  ret i64 %_2125
_2123:
  br label %_2124
_2124:
  ret i64 0
_2099:
  br label %_2100
_2100:
  %_2132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2027
  %_2133 = load i64, i64* %_2029
  %_2134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2132, i32 0, i32 1, i64 %_2133
  %_2135 = load i64, i64* %_2134
  %_2136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2137 = load i64, i64* %_2030
  %_2138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2136, i32 0, i32 1, i64 %_2137
  %_2139 = load i64, i64* %_2138
  %_2140 = icmp eq i64 %_2135, %_2139
  %_2141 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2142 = load i64, i64* %_2030
  %_2143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2141, i32 0, i32 1, i64 %_2142
  %_2144 = load i64, i64* %_2143
  %_2145 = icmp eq i64 %_2144, 46
  %_2146 = or i1 %_2140, %_2145
  br i1 %_2146, label %_2147, label %_2148
_2147:
  %_2151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2027
  %_2152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2028
  %_2153 = load i64, i64* %_2029
  %_2154 = add i64 %_2153, 1
  %_2155 = load i64, i64* %_2030
  %_2156 = add i64 %_2155, 1
  %_2150 = call i64 @reg_match({ i64, [0 x i64] }* %_2151, { i64, [0 x i64] }* %_2152, i64 %_2154, i64 %_2156, i64 0)
  ret i64 %_2150
_2148:
  br label %_2149
_2149:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1992 = alloca i64
  store i64 %argc, i64* %_1992
  %_1993 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1993
  %_1994 = alloca { i64, [0 x i64] }*
  %_2008 = alloca { i64, [0 x i64] }*
  %_raw_array1995 = call i64* @oat_alloc_array(i64 11)
  %_array1996 = bitcast i64* %_raw_array1995 to { i64, [0 x i64] }*
  %_2007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 10
  store i64 0, i64* %_2007
  %_2006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 9
  store i64 102, i64* %_2006
  %_2005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 8
  store i64 101, i64* %_2005
  %_2004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 7
  store i64 100, i64* %_2004
  %_2003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 6
  store i64 99, i64* %_2003
  %_2002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 5
  store i64 99, i64* %_2002
  %_2001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 4
  store i64 99, i64* %_2001
  %_2000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 3
  store i64 99, i64* %_2000
  %_1999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 2
  store i64 99, i64* %_1999
  %_1998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 1
  store i64 98, i64* %_1998
  %_1997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1996, i32 0, i32 1, i32 0
  store i64 97, i64* %_1997
  store { i64, [0 x i64] }* %_array1996, { i64, [0 x i64] }** %_1994
  %_raw_array2009 = call i64* @oat_alloc_array(i64 13)
  %_array2010 = bitcast i64* %_raw_array2009 to { i64, [0 x i64] }*
  %_2023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 12
  store i64 0, i64* %_2023
  %_2022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 11
  store i64 102, i64* %_2022
  %_2021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 10
  store i64 42, i64* %_2021
  %_2020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 9
  store i64 101, i64* %_2020
  %_2019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 8
  store i64 100, i64* %_2019
  %_2018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 7
  store i64 42, i64* %_2018
  %_2017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 6
  store i64 99, i64* %_2017
  %_2016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 5
  store i64 42, i64* %_2016
  %_2015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 4
  store i64 99, i64* %_2015
  %_2014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 3
  store i64 46, i64* %_2014
  %_2013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 2
  store i64 42, i64* %_2013
  %_2012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 1
  store i64 103, i64* %_2012
  %_2011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2010, i32 0, i32 1, i32 0
  store i64 97, i64* %_2011
  store { i64, [0 x i64] }* %_array2010, { i64, [0 x i64] }** %_2008
  %_2025 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1994
  %_2026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2008
  %_2024 = call i64 @reg_match({ i64, [0 x i64] }* %_2025, { i64, [0 x i64] }* %_2026, i64 0, i64 0, i64 0)
  ret i64 %_2024
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
