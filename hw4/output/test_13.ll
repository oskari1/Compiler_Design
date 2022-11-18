; generated from: oatprograms/reverse.oat
target triple = "x86_64-unknown-linux"
define i64 @mod_ten(i64 %n) {
  %_2191 = alloca i64
  store i64 %n, i64* %_2191
  %_2192 = load i64, i64* %_2191
  %_2193 = icmp slt i64 %_2192, 10
  br i1 %_2193, label %_2194, label %_2195
_2194:
  %_2197 = load i64, i64* %_2191
  ret i64 %_2197
_2195:
  br label %_2196
_2196:
  %_2199 = load i64, i64* %_2191
  %_2200 = sub i64 %_2199, 10
  %_2198 = call i64 @mod_ten(i64 %_2200)
  ret i64 %_2198
}

define i64 @div_ten(i64 %n) {
  %_2179 = alloca i64
  store i64 %n, i64* %_2179
  %_2180 = alloca i64
  store i64 0, i64* %_2180
  br label %_2183
_2183:
  %_2181 = load i64, i64* %_2179
  %_2182 = icmp sge i64 %_2181, 10
  br i1 %_2182, label %_2184, label %_2185
_2184:
  %_2186 = load i64, i64* %_2179
  %_2187 = sub i64 %_2186, 10
  store i64 %_2187, i64* %_2179
  %_2188 = load i64, i64* %_2180
  %_2189 = add i64 %_2188, 1
  store i64 %_2189, i64* %_2180
  br label %_2183
_2185:
  %_2190 = load i64, i64* %_2180
  ret i64 %_2190
}

define i64 @reversed(i64 %n) {
  %_2162 = alloca i64
  store i64 %n, i64* %_2162
  %_2163 = alloca i64
  %_2169 = alloca i64
  store i64 0, i64* %_2163
  br label %_2166
_2166:
  %_2164 = load i64, i64* %_2162
  %_2165 = icmp ne i64 %_2164, 0
  br i1 %_2165, label %_2167, label %_2168
_2167:
  %_2171 = load i64, i64* %_2162
  %_2170 = call i64 @mod_ten(i64 %_2171)
  store i64 %_2170, i64* %_2169
  %_2172 = load i64, i64* %_2163
  %_2173 = mul i64 %_2172, 10
  %_2174 = load i64, i64* %_2169
  %_2175 = add i64 %_2173, %_2174
  store i64 %_2175, i64* %_2163
  %_2177 = load i64, i64* %_2162
  %_2176 = call i64 @div_ten(i64 %_2177)
  store i64 %_2176, i64* %_2162
  br label %_2166
_2168:
  %_2178 = load i64, i64* %_2163
  ret i64 %_2178
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2157 = alloca i64
  store i64 %argc, i64* %_2157
  %_2158 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2158
  %_2159 = alloca i64
  store i64 321, i64* %_2159
  %_2161 = load i64, i64* %_2159
  %_2160 = call i64 @reversed(i64 %_2161)
  ret i64 %_2160
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
