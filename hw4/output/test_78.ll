; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2103 = alloca i64
  store i64 %argc, i64* %_2103
  %_2104 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2104
  %_2105 = alloca { i64, [0 x i64] }*
  %_2113 = alloca i8*
  %_2116 = alloca { i64, [0 x i64] }*
  %_2119 = alloca i64
  %_2120 = alloca i64
  %_raw_array2106 = call i64* @oat_alloc_array(i64 5)
  %_array2107 = bitcast i64* %_raw_array2106 to { i64, [0 x i64] }*
  %_2112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2107, i32 0, i32 1, i32 4
  store i64 115, i64* %_2112
  %_2111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2107, i32 0, i32 1, i32 3
  store i64 114, i64* %_2111
  %_2110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2107, i32 0, i32 1, i32 2
  store i64 113, i64* %_2110
  %_2109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2107, i32 0, i32 1, i32 1
  store i64 112, i64* %_2109
  %_2108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2107, i32 0, i32 1, i32 0
  store i64 111, i64* %_2108
  store { i64, [0 x i64] }* %_array2107, { i64, [0 x i64] }** %_2105
  %_2115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2105
  %_2114 = call i8* @string_of_array({ i64, [0 x i64] }* %_2115)
  store i8* %_2114, i8** %_2113
  %_2118 = load i8*, i8** %_2113
  %_2117 = call { i64, [0 x i64] }* @array_of_string(i8* %_2118)
  store { i64, [0 x i64] }* %_2117, { i64, [0 x i64] }** %_2116
  store i64 0, i64* %_2119
  store i64 0, i64* %_2120
  br label %_2123
_2123:
  %_2121 = load i64, i64* %_2120
  %_2122 = icmp slt i64 %_2121, 5
  br i1 %_2122, label %_2124, label %_2125
_2124:
  %_2126 = load i64, i64* %_2119
  %_2127 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2116
  %_2128 = load i64, i64* %_2120
  %_2129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2127, i32 0, i32 1, i64 %_2128
  %_2130 = load i64, i64* %_2129
  %_2131 = add i64 %_2126, %_2130
  store i64 %_2131, i64* %_2119
  %_2132 = load i64, i64* %_2120
  %_2133 = add i64 %_2132, 1
  store i64 %_2133, i64* %_2120
  br label %_2123
_2125:
  %_2135 = load i64, i64* %_2119
  call void @print_int(i64 %_2135)
  %_2136 = load i64, i64* %_2119
  ret i64 %_2136
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
