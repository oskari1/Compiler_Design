; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2137 = alloca i64
  store i64 %argc, i64* %_2137
  %_2138 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2138
  %_2139 = alloca { i64, [0 x i64] }*
  %_2147 = alloca i8*
  %_2150 = alloca { i64, [0 x i64] }*
  %_2153 = alloca i64
  %_2154 = alloca i64
  %_raw_array2140 = call i64* @oat_alloc_array(i64 5)
  %_array2141 = bitcast i64* %_raw_array2140 to { i64, [0 x i64] }*
  %_2146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2141, i32 0, i32 1, i32 4
  store i64 115, i64* %_2146
  %_2145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2141, i32 0, i32 1, i32 3
  store i64 114, i64* %_2145
  %_2144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2141, i32 0, i32 1, i32 2
  store i64 113, i64* %_2144
  %_2143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2141, i32 0, i32 1, i32 1
  store i64 112, i64* %_2143
  %_2142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2141, i32 0, i32 1, i32 0
  store i64 111, i64* %_2142
  store { i64, [0 x i64] }* %_array2141, { i64, [0 x i64] }** %_2139
  %_2149 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2139
  %_2148 = call i8* @string_of_array({ i64, [0 x i64] }* %_2149)
  store i8* %_2148, i8** %_2147
  %_2152 = load i8*, i8** %_2147
  %_2151 = call { i64, [0 x i64] }* @array_of_string(i8* %_2152)
  store { i64, [0 x i64] }* %_2151, { i64, [0 x i64] }** %_2150
  store i64 0, i64* %_2153
  store i64 0, i64* %_2154
  br label %_2157
_2157:
  %_2155 = load i64, i64* %_2154
  %_2156 = icmp slt i64 %_2155, 5
  br i1 %_2156, label %_2158, label %_2159
_2158:
  %_2160 = load i64, i64* %_2153
  %_2161 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2150
  %_2162 = load i64, i64* %_2154
  %_2163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2161, i32 0, i32 1, i64 %_2162
  %_2164 = load i64, i64* %_2163
  %_2165 = add i64 %_2160, %_2164
  store i64 %_2165, i64* %_2153
  %_2166 = load i64, i64* %_2154
  %_2167 = add i64 %_2166, 1
  store i64 %_2167, i64* %_2154
  br label %_2157
_2159:
  %_2168 = load i64, i64* %_2153
  ret i64 %_2168
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
