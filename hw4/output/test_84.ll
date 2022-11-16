; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_2252 = alloca i8*
  store i8* %str, i8** %_2252
  %_2253 = alloca i64
  store i64 %start, i64* %_2253
  %_2254 = alloca i64
  store i64 %len, i64* %_2254
  %_2255 = alloca { i64, [0 x i64] }*
  %_2258 = alloca { i64, [0 x i64] }*
  %_2262 = alloca i64
  %_2257 = load i8*, i8** %_2252
  %_2256 = call { i64, [0 x i64] }* @array_of_string(i8* %_2257)
  store { i64, [0 x i64] }* %_2256, { i64, [0 x i64] }** %_2255
  %_2259 = load i64, i64* %_2254
  %_raw_array2260 = call i64* @oat_alloc_array(i64 %_2259)
  %_array2261 = bitcast i64* %_raw_array2260 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2261, { i64, [0 x i64] }** %_2258
  store i64 0, i64* %_2262
  br label %_2266
_2266:
  %_2263 = load i64, i64* %_2262
  %_2264 = load i64, i64* %_2254
  %_2265 = icmp slt i64 %_2263, %_2264
  br i1 %_2265, label %_2267, label %_2268
_2267:
  %_2269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2255
  %_2270 = load i64, i64* %_2262
  %_2271 = load i64, i64* %_2253
  %_2272 = add i64 %_2270, %_2271
  %_2273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2269, i32 0, i32 1, i64 %_2272
  %_2274 = load i64, i64* %_2273
  %_2276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2258
  %_2277 = load i64, i64* %_2262
  %_2275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2276, i32 0, i32 1, i64 %_2277
  store i64 %_2274, i64* %_2275
  %_2278 = load i64, i64* %_2262
  %_2279 = add i64 %_2278, 1
  store i64 %_2279, i64* %_2262
  br label %_2266
_2268:
  %_2281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2258
  %_2280 = call i8* @string_of_array({ i64, [0 x i64] }* %_2281)
  ret i8* %_2280
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2245 = alloca i64
  store i64 %argc, i64* %_2245
  %_2246 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2246
  %_2249 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_2246
  %_2250 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_2249, i32 0, i32 1, i32 1
  %_2251 = load i8*, i8** %_2250
  %_2248 = call i8* @sub(i8* %_2251, i64 3, i64 5)
  call void @print_string(i8* %_2248)
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
