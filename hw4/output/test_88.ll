; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_2294 = global [2 x i8] c" \00"
@_2300 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2282 = alloca i64
  store i64 %argc, i64* %_2282
  %_2283 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2283
  %_2284 = alloca i64
  %_2285 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_2284
  %_raw_array2286 = call i64* @oat_alloc_array(i64 10)
  %_array2287 = bitcast i64* %_raw_array2286 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2287, { i64, [0 x i64] }** %_2285
  %_2290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2285
  %_2289 = call i8* @string_of_array({ i64, [0 x i64] }* %_2290)
  call void @print_string(i8* %_2289)
  %_2292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2285
  call void @oat_mergesort({ i64, [0 x i64] }* %_2292, i64 0, i64 9)
  %_2295 = getelementptr [2 x i8], [2 x i8]* @_2294, i32 0, i32 0
  call void @print_string(i8* %_2295)
  %_2298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2285
  %_2297 = call i8* @string_of_array({ i64, [0 x i64] }* %_2298)
  call void @print_string(i8* %_2297)
  %_2301 = getelementptr [2 x i8], [2 x i8]* @_2300, i32 0, i32 0
  call void @print_string(i8* %_2301)
  %_2302 = load i64, i64* %_2284
  ret i64 %_2302
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_2254 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2254
  %_2255 = alloca i64
  store i64 %low, i64* %_2255
  %_2256 = alloca i64
  store i64 %high, i64* %_2256
  %_2257 = alloca i64
  store i64 0, i64* %_2257
  %_2258 = load i64, i64* %_2255
  %_2259 = load i64, i64* %_2256
  %_2260 = icmp slt i64 %_2258, %_2259
  br i1 %_2260, label %_2261, label %_2262
_2261:
  %_2264 = load i64, i64* %_2255
  %_2265 = load i64, i64* %_2256
  %_2266 = add i64 %_2264, %_2265
  %_2267 = lshr i64 %_2266, 1
  store i64 %_2267, i64* %_2257
  %_2269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2254
  %_2270 = load i64, i64* %_2255
  %_2271 = load i64, i64* %_2257
  call void @oat_mergesort({ i64, [0 x i64] }* %_2269, i64 %_2270, i64 %_2271)
  %_2273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2254
  %_2274 = load i64, i64* %_2257
  %_2275 = add i64 %_2274, 1
  %_2276 = load i64, i64* %_2256
  call void @oat_mergesort({ i64, [0 x i64] }* %_2273, i64 %_2275, i64 %_2276)
  %_2278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2254
  %_2279 = load i64, i64* %_2255
  %_2280 = load i64, i64* %_2256
  %_2281 = load i64, i64* %_2257
  call void @merge({ i64, [0 x i64] }* %_2278, i64 %_2279, i64 %_2280, i64 %_2281)
  br label %_2263
_2262:
  br label %_2263
_2263:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_2146 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2146
  %_2147 = alloca i64
  store i64 %low, i64* %_2147
  %_2148 = alloca i64
  store i64 %high, i64* %_2148
  %_2149 = alloca i64
  store i64 %mid, i64* %_2149
  %_2150 = alloca i64
  %_2151 = alloca i64
  %_2152 = alloca i64
  %_2153 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_2150
  store i64 0, i64* %_2151
  store i64 0, i64* %_2152
  %_raw_array2154 = call i64* @oat_alloc_array(i64 50)
  %_array2155 = bitcast i64* %_raw_array2154 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2155, { i64, [0 x i64] }** %_2153
  %_2156 = load i64, i64* %_2147
  store i64 %_2156, i64* %_2150
  %_2157 = load i64, i64* %_2149
  %_2158 = add i64 %_2157, 1
  store i64 %_2158, i64* %_2151
  %_2159 = load i64, i64* %_2147
  store i64 %_2159, i64* %_2152
  br label %_2167
_2167:
  %_2160 = load i64, i64* %_2150
  %_2161 = load i64, i64* %_2149
  %_2162 = icmp sle i64 %_2160, %_2161
  %_2163 = load i64, i64* %_2151
  %_2164 = load i64, i64* %_2148
  %_2165 = icmp sle i64 %_2163, %_2164
  %_2166 = and i1 %_2162, %_2165
  br i1 %_2166, label %_2168, label %_2169
_2168:
  %_2170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2146
  %_2171 = load i64, i64* %_2150
  %_2172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2170, i32 0, i32 1, i64 %_2171
  %_2173 = load i64, i64* %_2172
  %_2174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2146
  %_2175 = load i64, i64* %_2151
  %_2176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2174, i32 0, i32 1, i64 %_2175
  %_2177 = load i64, i64* %_2176
  %_2178 = icmp slt i64 %_2173, %_2177
  br i1 %_2178, label %_2179, label %_2180
_2179:
  %_2182 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2146
  %_2183 = load i64, i64* %_2150
  %_2184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2182, i32 0, i32 1, i64 %_2183
  %_2185 = load i64, i64* %_2184
  %_2187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2153
  %_2188 = load i64, i64* %_2152
  %_2186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2187, i32 0, i32 1, i64 %_2188
  store i64 %_2185, i64* %_2186
  %_2189 = load i64, i64* %_2152
  %_2190 = add i64 %_2189, 1
  store i64 %_2190, i64* %_2152
  %_2191 = load i64, i64* %_2150
  %_2192 = add i64 %_2191, 1
  store i64 %_2192, i64* %_2150
  br label %_2181
_2180:
  %_2193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2146
  %_2194 = load i64, i64* %_2151
  %_2195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2193, i32 0, i32 1, i64 %_2194
  %_2196 = load i64, i64* %_2195
  %_2198 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2153
  %_2199 = load i64, i64* %_2152
  %_2197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2198, i32 0, i32 1, i64 %_2199
  store i64 %_2196, i64* %_2197
  %_2200 = load i64, i64* %_2152
  %_2201 = add i64 %_2200, 1
  store i64 %_2201, i64* %_2152
  %_2202 = load i64, i64* %_2151
  %_2203 = add i64 %_2202, 1
  store i64 %_2203, i64* %_2151
  br label %_2181
_2181:
  br label %_2167
_2169:
  br label %_2207
_2207:
  %_2204 = load i64, i64* %_2150
  %_2205 = load i64, i64* %_2149
  %_2206 = icmp sle i64 %_2204, %_2205
  br i1 %_2206, label %_2208, label %_2209
_2208:
  %_2210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2146
  %_2211 = load i64, i64* %_2150
  %_2212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2210, i32 0, i32 1, i64 %_2211
  %_2213 = load i64, i64* %_2212
  %_2215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2153
  %_2216 = load i64, i64* %_2152
  %_2214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2215, i32 0, i32 1, i64 %_2216
  store i64 %_2213, i64* %_2214
  %_2217 = load i64, i64* %_2152
  %_2218 = add i64 %_2217, 1
  store i64 %_2218, i64* %_2152
  %_2219 = load i64, i64* %_2150
  %_2220 = add i64 %_2219, 1
  store i64 %_2220, i64* %_2150
  br label %_2207
_2209:
  br label %_2224
_2224:
  %_2221 = load i64, i64* %_2151
  %_2222 = load i64, i64* %_2148
  %_2223 = icmp sle i64 %_2221, %_2222
  br i1 %_2223, label %_2225, label %_2226
_2225:
  %_2227 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2146
  %_2228 = load i64, i64* %_2151
  %_2229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2227, i32 0, i32 1, i64 %_2228
  %_2230 = load i64, i64* %_2229
  %_2232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2153
  %_2233 = load i64, i64* %_2152
  %_2231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2232, i32 0, i32 1, i64 %_2233
  store i64 %_2230, i64* %_2231
  %_2234 = load i64, i64* %_2152
  %_2235 = add i64 %_2234, 1
  store i64 %_2235, i64* %_2152
  %_2236 = load i64, i64* %_2151
  %_2237 = add i64 %_2236, 1
  store i64 %_2237, i64* %_2151
  br label %_2224
_2226:
  %_2238 = load i64, i64* %_2147
  store i64 %_2238, i64* %_2150
  br label %_2242
_2242:
  %_2239 = load i64, i64* %_2150
  %_2240 = load i64, i64* %_2152
  %_2241 = icmp slt i64 %_2239, %_2240
  br i1 %_2241, label %_2243, label %_2244
_2243:
  %_2245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2153
  %_2246 = load i64, i64* %_2150
  %_2247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2245, i32 0, i32 1, i64 %_2246
  %_2248 = load i64, i64* %_2247
  %_2250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2146
  %_2251 = load i64, i64* %_2150
  %_2249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2250, i32 0, i32 1, i64 %_2251
  store i64 %_2248, i64* %_2249
  %_2252 = load i64, i64* %_2150
  %_2253 = add i64 %_2252, 1
  store i64 %_2253, i64* %_2150
  br label %_2242
_2244:
  ret void
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
