; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_2086 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_2094 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_2094
  %_2095 = alloca i64
  store i64 %array_size, i64* %_2095
  %_2096 = alloca i64
  %_2097 = alloca i64
  %_2105 = alloca i64
  store i64 0, i64* %_2096
  %_2098 = load i64, i64* %_2095
  %_2099 = sub i64 %_2098, 1
  store i64 %_2099, i64* %_2097
  br label %_2102
_2102:
  %_2100 = load i64, i64* %_2097
  %_2101 = icmp sgt i64 %_2100, 0
  br i1 %_2101, label %_2103, label %_2104
_2103:
  store i64 1, i64* %_2105
  br label %_2109
_2109:
  %_2106 = load i64, i64* %_2105
  %_2107 = load i64, i64* %_2097
  %_2108 = icmp sle i64 %_2106, %_2107
  br i1 %_2108, label %_2110, label %_2111
_2110:
  %_2112 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2094
  %_2113 = load i64, i64* %_2105
  %_2114 = sub i64 %_2113, 1
  %_2115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2112, i32 0, i32 1, i64 %_2114
  %_2116 = load i64, i64* %_2115
  %_2117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2094
  %_2118 = load i64, i64* %_2097
  %_2119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2117, i32 0, i32 1, i64 %_2118
  %_2120 = load i64, i64* %_2119
  %_2121 = icmp sgt i64 %_2116, %_2120
  br i1 %_2121, label %_2122, label %_2123
_2122:
  %_2125 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2094
  %_2126 = load i64, i64* %_2105
  %_2127 = sub i64 %_2126, 1
  %_2128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2125, i32 0, i32 1, i64 %_2127
  %_2129 = load i64, i64* %_2128
  store i64 %_2129, i64* %_2096
  %_2130 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2094
  %_2131 = load i64, i64* %_2097
  %_2132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2130, i32 0, i32 1, i64 %_2131
  %_2133 = load i64, i64* %_2132
  %_2135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2094
  %_2136 = load i64, i64* %_2105
  %_2137 = sub i64 %_2136, 1
  %_2134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2135, i32 0, i32 1, i64 %_2137
  store i64 %_2133, i64* %_2134
  %_2138 = load i64, i64* %_2096
  %_2140 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2094
  %_2141 = load i64, i64* %_2097
  %_2139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2140, i32 0, i32 1, i64 %_2141
  store i64 %_2138, i64* %_2139
  br label %_2124
_2123:
  br label %_2124
_2124:
  %_2142 = load i64, i64* %_2105
  %_2143 = add i64 %_2142, 1
  store i64 %_2143, i64* %_2105
  br label %_2109
_2111:
  %_2144 = load i64, i64* %_2097
  %_2145 = sub i64 %_2144, 1
  store i64 %_2145, i64* %_2097
  br label %_2102
_2104:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2061 = alloca i64
  store i64 %argc, i64* %_2061
  %_2062 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2062
  %_2063 = alloca { i64, [0 x i64] }*
  %_raw_array2064 = call i64* @oat_alloc_array(i64 8)
  %_array2065 = bitcast i64* %_raw_array2064 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2065, { i64, [0 x i64] }** %_2063
  %_2067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  %_2066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2067, i32 0, i32 1, i32 0
  store i64 121, i64* %_2066
  %_2069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  %_2068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2069, i32 0, i32 1, i32 1
  store i64 125, i64* %_2068
  %_2071 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  %_2070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2071, i32 0, i32 1, i32 2
  store i64 120, i64* %_2070
  %_2073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  %_2072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2073, i32 0, i32 1, i32 3
  store i64 111, i64* %_2072
  %_2075 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  %_2074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2075, i32 0, i32 1, i32 4
  store i64 116, i64* %_2074
  %_2077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  %_2076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2077, i32 0, i32 1, i32 5
  store i64 110, i64* %_2076
  %_2079 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  %_2078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2079, i32 0, i32 1, i32 6
  store i64 117, i64* %_2078
  %_2081 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  %_2080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2081, i32 0, i32 1, i32 7
  store i64 119, i64* %_2080
  %_2084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  %_2083 = call i8* @string_of_array({ i64, [0 x i64] }* %_2084)
  call void @print_string(i8* %_2083)
  %_2087 = getelementptr [2 x i8], [2 x i8]* @_2086, i32 0, i32 0
  call void @print_string(i8* %_2087)
  %_2089 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  call void @bubble_sort({ i64, [0 x i64] }* %_2089, i64 8)
  %_2092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2063
  %_2091 = call i8* @string_of_array({ i64, [0 x i64] }* %_2092)
  call void @print_string(i8* %_2091)
  %_2093 = sub i64 0, 1
  ret i64 %_2093
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
