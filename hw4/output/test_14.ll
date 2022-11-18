; generated from: oatprograms/rod_cutting.oat
target triple = "x86_64-unknown-linux"
define i1 @arr_eq({ i64, [0 x i64] }* %arr1, { i64, [0 x i64] }* %arr2, i64 %n) {
  %_2366 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr1, { i64, [0 x i64] }** %_2366
  %_2367 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr2, { i64, [0 x i64] }** %_2367
  %_2368 = alloca i64
  store i64 %n, i64* %_2368
  %_2369 = alloca i1
  %_2370 = alloca i64
  store i1 1, i1* %_2369
  store i64 0, i64* %_2370
  br label %_2374
_2374:
  %_2371 = load i64, i64* %_2370
  %_2372 = load i64, i64* %_2368
  %_2373 = icmp slt i64 %_2371, %_2372
  br i1 %_2373, label %_2375, label %_2376
_2375:
  %_2377 = load i1, i1* %_2369
  %_2378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2366
  %_2379 = load i64, i64* %_2370
  %_2380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2378, i32 0, i32 1, i64 %_2379
  %_2381 = load i64, i64* %_2380
  %_2382 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2367
  %_2383 = load i64, i64* %_2370
  %_2384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2382, i32 0, i32 1, i64 %_2383
  %_2385 = load i64, i64* %_2384
  %_2386 = icmp eq i64 %_2381, %_2385
  %_2387 = and i1 %_2377, %_2386
  store i1 %_2387, i1* %_2369
  %_2388 = load i64, i64* %_2370
  %_2389 = add i64 %_2388, 1
  store i64 %_2389, i64* %_2370
  br label %_2374
_2376:
  %_2390 = load i1, i1* %_2369
  ret i1 %_2390
}

define void @clear_arr({ i64, [0 x i64] }* %arr, i64 %length) {
  %_2352 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_2352
  %_2353 = alloca i64
  store i64 %length, i64* %_2353
  %_2354 = alloca i64
  store i64 0, i64* %_2354
  br label %_2358
_2358:
  %_2355 = load i64, i64* %_2354
  %_2356 = load i64, i64* %_2353
  %_2357 = icmp slt i64 %_2355, %_2356
  br i1 %_2357, label %_2359, label %_2360
_2359:
  %_2362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2352
  %_2363 = load i64, i64* %_2354
  %_2361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2362, i32 0, i32 1, i64 %_2363
  store i64 0, i64* %_2361
  %_2364 = load i64, i64* %_2354
  %_2365 = add i64 %_2364, 1
  store i64 %_2365, i64* %_2354
  br label %_2358
_2360:
  ret void
}

define i64 @optimal_cuts({ i64, [0 x i64] }* %prices, i64 %length, { i64, [0 x i64] }* %choices) {
  %_2260 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %prices, { i64, [0 x i64] }** %_2260
  %_2261 = alloca i64
  store i64 %length, i64* %_2261
  %_2262 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %choices, { i64, [0 x i64] }** %_2262
  %_2263 = alloca { i64, [0 x i64] }*
  %_2270 = alloca { i64, [0 x i64] }*
  %_2279 = alloca i64
  %_2286 = alloca i64
  %_2287 = alloca i64
  %_2294 = alloca i64
  %_2325 = alloca i64
  %_2332 = alloca i64
  %_2264 = load i64, i64* %_2261
  %_2265 = add i64 %_2264, 1
  %_raw_array2266 = call i64* @oat_alloc_array(i64 %_2265)
  %_array2267 = bitcast i64* %_raw_array2266 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2267, { i64, [0 x i64] }** %_2263
  %_2269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2263
  %_2268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2269, i32 0, i32 1, i32 0
  store i64 0, i64* %_2268
  %_2271 = load i64, i64* %_2261
  %_2272 = add i64 %_2271, 1
  %_raw_array2273 = call i64* @oat_alloc_array(i64 %_2272)
  %_array2274 = bitcast i64* %_raw_array2273 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2274, { i64, [0 x i64] }** %_2270
  %_2276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2270
  %_2277 = load i64, i64* %_2261
  %_2278 = add i64 %_2277, 1
  call void @clear_arr({ i64, [0 x i64] }* %_2276, i64 %_2278)
  store i64 1, i64* %_2279
  br label %_2283
_2283:
  %_2280 = load i64, i64* %_2279
  %_2281 = load i64, i64* %_2261
  %_2282 = icmp sle i64 %_2280, %_2281
  br i1 %_2282, label %_2284, label %_2285
_2284:
  store i64 0, i64* %_2286
  store i64 1, i64* %_2287
  br label %_2291
_2291:
  %_2288 = load i64, i64* %_2287
  %_2289 = load i64, i64* %_2279
  %_2290 = icmp sle i64 %_2288, %_2289
  br i1 %_2290, label %_2292, label %_2293
_2292:
  %_2295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2260
  %_2296 = load i64, i64* %_2287
  %_2297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2295, i32 0, i32 1, i64 %_2296
  %_2298 = load i64, i64* %_2297
  %_2299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2263
  %_2300 = load i64, i64* %_2279
  %_2301 = load i64, i64* %_2287
  %_2302 = sub i64 %_2300, %_2301
  %_2303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2299, i32 0, i32 1, i64 %_2302
  %_2304 = load i64, i64* %_2303
  %_2305 = add i64 %_2298, %_2304
  store i64 %_2305, i64* %_2294
  %_2306 = load i64, i64* %_2294
  %_2307 = load i64, i64* %_2286
  %_2308 = icmp sgt i64 %_2306, %_2307
  br i1 %_2308, label %_2309, label %_2310
_2309:
  %_2312 = load i64, i64* %_2294
  store i64 %_2312, i64* %_2286
  %_2313 = load i64, i64* %_2287
  %_2315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2270
  %_2316 = load i64, i64* %_2279
  %_2314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2315, i32 0, i32 1, i64 %_2316
  store i64 %_2313, i64* %_2314
  br label %_2311
_2310:
  br label %_2311
_2311:
  %_2317 = load i64, i64* %_2287
  %_2318 = add i64 %_2317, 1
  store i64 %_2318, i64* %_2287
  br label %_2291
_2293:
  %_2319 = load i64, i64* %_2286
  %_2321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2263
  %_2322 = load i64, i64* %_2279
  %_2320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2321, i32 0, i32 1, i64 %_2322
  store i64 %_2319, i64* %_2320
  %_2323 = load i64, i64* %_2279
  %_2324 = add i64 %_2323, 1
  store i64 %_2324, i64* %_2279
  br label %_2283
_2285:
  %_2326 = load i64, i64* %_2261
  store i64 %_2326, i64* %_2325
  br label %_2329
_2329:
  %_2327 = load i64, i64* %_2325
  %_2328 = icmp sgt i64 %_2327, 0
  br i1 %_2328, label %_2330, label %_2331
_2330:
  %_2333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2270
  %_2334 = load i64, i64* %_2325
  %_2335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2333, i32 0, i32 1, i64 %_2334
  %_2336 = load i64, i64* %_2335
  store i64 %_2336, i64* %_2332
  %_2337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2262
  %_2338 = load i64, i64* %_2332
  %_2339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2337, i32 0, i32 1, i64 %_2338
  %_2340 = load i64, i64* %_2339
  %_2341 = add i64 %_2340, 1
  %_2343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2262
  %_2344 = load i64, i64* %_2332
  %_2342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2343, i32 0, i32 1, i64 %_2344
  store i64 %_2341, i64* %_2342
  %_2345 = load i64, i64* %_2325
  %_2346 = load i64, i64* %_2332
  %_2347 = sub i64 %_2345, %_2346
  store i64 %_2347, i64* %_2325
  br label %_2329
_2331:
  %_2348 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2263
  %_2349 = load i64, i64* %_2261
  %_2350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2348, i32 0, i32 1, i64 %_2349
  %_2351 = load i64, i64* %_2350
  ret i64 %_2351
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2201 = alloca i64
  store i64 %argc, i64* %_2201
  %_2202 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2202
  %_2203 = alloca { i64, [0 x i64] }*
  %_2217 = alloca i64
  %_2218 = alloca { i64, [0 x i64] }*
  %_2227 = alloca i64
  %_2232 = alloca i64
  %_2233 = alloca { i64, [0 x i64] }*
  %_raw_array2204 = call i64* @oat_alloc_array(i64 11)
  %_array2205 = bitcast i64* %_raw_array2204 to { i64, [0 x i64] }*
  %_2216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 10
  store i64 30, i64* %_2216
  %_2215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 9
  store i64 24, i64* %_2215
  %_2214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 8
  store i64 20, i64* %_2214
  %_2213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 7
  store i64 17, i64* %_2213
  %_2212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 6
  store i64 17, i64* %_2212
  %_2211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 5
  store i64 15, i64* %_2211
  %_2210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 4
  store i64 13, i64* %_2210
  %_2209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 3
  store i64 11, i64* %_2209
  %_2208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 2
  store i64 5, i64* %_2208
  %_2207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 1
  store i64 1, i64* %_2207
  %_2206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2205, i32 0, i32 1, i32 0
  store i64 0, i64* %_2206
  store { i64, [0 x i64] }* %_array2205, { i64, [0 x i64] }** %_2203
  store i64 10, i64* %_2217
  %_2219 = load i64, i64* %_2217
  %_2220 = add i64 %_2219, 1
  %_raw_array2221 = call i64* @oat_alloc_array(i64 %_2220)
  %_array2222 = bitcast i64* %_raw_array2221 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2222, { i64, [0 x i64] }** %_2218
  %_2224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2218
  %_2225 = load i64, i64* %_2217
  %_2226 = add i64 %_2225, 1
  call void @clear_arr({ i64, [0 x i64] }* %_2224, i64 %_2226)
  %_2229 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2203
  %_2230 = load i64, i64* %_2217
  %_2231 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2218
  %_2228 = call i64 @optimal_cuts({ i64, [0 x i64] }* %_2229, i64 %_2230, { i64, [0 x i64] }* %_2231)
  store i64 %_2228, i64* %_2227
  store i64 35, i64* %_2232
  %_raw_array2234 = call i64* @oat_alloc_array(i64 11)
  %_array2235 = bitcast i64* %_raw_array2234 to { i64, [0 x i64] }*
  %_2246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 10
  store i64 0, i64* %_2246
  %_2245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 9
  store i64 0, i64* %_2245
  %_2244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 8
  store i64 0, i64* %_2244
  %_2243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 7
  store i64 0, i64* %_2243
  %_2242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 6
  store i64 0, i64* %_2242
  %_2241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 5
  store i64 0, i64* %_2241
  %_2240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 4
  store i64 1, i64* %_2240
  %_2239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 3
  store i64 2, i64* %_2239
  %_2238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 2
  store i64 0, i64* %_2238
  %_2237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 1
  store i64 0, i64* %_2237
  %_2236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2235, i32 0, i32 1, i32 0
  store i64 0, i64* %_2236
  store { i64, [0 x i64] }* %_array2235, { i64, [0 x i64] }** %_2233
  %_2247 = load i64, i64* %_2232
  %_2248 = load i64, i64* %_2227
  %_2249 = icmp eq i64 %_2247, %_2248
  %_2251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2233
  %_2252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2218
  %_2253 = load i64, i64* %_2217
  %_2254 = add i64 %_2253, 1
  %_2250 = call i1 @arr_eq({ i64, [0 x i64] }* %_2251, { i64, [0 x i64] }* %_2252, i64 %_2254)
  %_2255 = and i1 %_2249, %_2250
  br i1 %_2255, label %_2256, label %_2257
_2256:
  %_2259 = load i64, i64* %_2227
  ret i64 %_2259
_2257:
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
