; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_2451 = global [2 x i8] c" \00"
@_2457 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2439 = alloca i64
  store i64 %argc, i64* %_2439
  %_2440 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2440
  %_2441 = alloca { i64, [0 x i64] }*
  %_2444 = alloca i64
  %_raw_array2442 = call i64* @oat_alloc_array(i64 10)
  %_array2443 = bitcast i64* %_raw_array2442 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2443, { i64, [0 x i64] }** %_2441
  store i64 0, i64* %_2444
  %_2447 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2441
  %_2446 = call i8* @string_of_array({ i64, [0 x i64] }* %_2447)
  call void @print_string(i8* %_2446)
  %_2449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2441
  call void @oat_mergesort({ i64, [0 x i64] }* %_2449, i64 0, i64 9)
  %_2452 = getelementptr [2 x i8], [2 x i8]* @_2451, i32 0, i32 0
  call void @print_string(i8* %_2452)
  %_2455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2441
  %_2454 = call i8* @string_of_array({ i64, [0 x i64] }* %_2455)
  call void @print_string(i8* %_2454)
  %_2458 = getelementptr [2 x i8], [2 x i8]* @_2457, i32 0, i32 0
  call void @print_string(i8* %_2458)
  %_2459 = load i64, i64* %_2444
  ret i64 %_2459
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_2411 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2411
  %_2412 = alloca i64
  store i64 %low, i64* %_2412
  %_2413 = alloca i64
  store i64 %high, i64* %_2413
  %_2414 = alloca i64
  store i64 0, i64* %_2414
  %_2415 = load i64, i64* %_2412
  %_2416 = load i64, i64* %_2413
  %_2417 = icmp slt i64 %_2415, %_2416
  br i1 %_2417, label %_2418, label %_2419
_2418:
  %_2421 = load i64, i64* %_2412
  %_2422 = load i64, i64* %_2413
  %_2423 = add i64 %_2421, %_2422
  %_2424 = lshr i64 %_2423, 1
  store i64 %_2424, i64* %_2414
  %_2426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2411
  %_2427 = load i64, i64* %_2412
  %_2428 = load i64, i64* %_2414
  call void @oat_mergesort({ i64, [0 x i64] }* %_2426, i64 %_2427, i64 %_2428)
  %_2430 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2411
  %_2431 = load i64, i64* %_2414
  %_2432 = add i64 %_2431, 1
  %_2433 = load i64, i64* %_2413
  call void @oat_mergesort({ i64, [0 x i64] }* %_2430, i64 %_2432, i64 %_2433)
  %_2435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2411
  %_2436 = load i64, i64* %_2412
  %_2437 = load i64, i64* %_2413
  %_2438 = load i64, i64* %_2414
  call void @merge({ i64, [0 x i64] }* %_2435, i64 %_2436, i64 %_2437, i64 %_2438)
  br label %_2420
_2419:
  br label %_2420
_2420:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_2303 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2303
  %_2304 = alloca i64
  store i64 %low, i64* %_2304
  %_2305 = alloca i64
  store i64 %high, i64* %_2305
  %_2306 = alloca i64
  store i64 %mid, i64* %_2306
  %_2307 = alloca i64
  %_2308 = alloca i64
  %_2309 = alloca i64
  %_2310 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_2307
  store i64 0, i64* %_2308
  store i64 0, i64* %_2309
  %_raw_array2311 = call i64* @oat_alloc_array(i64 50)
  %_array2312 = bitcast i64* %_raw_array2311 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2312, { i64, [0 x i64] }** %_2310
  %_2313 = load i64, i64* %_2304
  store i64 %_2313, i64* %_2307
  %_2314 = load i64, i64* %_2306
  %_2315 = add i64 %_2314, 1
  store i64 %_2315, i64* %_2308
  %_2316 = load i64, i64* %_2304
  store i64 %_2316, i64* %_2309
  br label %_2324
_2324:
  %_2317 = load i64, i64* %_2307
  %_2318 = load i64, i64* %_2306
  %_2319 = icmp sle i64 %_2317, %_2318
  %_2320 = load i64, i64* %_2308
  %_2321 = load i64, i64* %_2305
  %_2322 = icmp sle i64 %_2320, %_2321
  %_2323 = and i1 %_2319, %_2322
  br i1 %_2323, label %_2325, label %_2326
_2325:
  %_2327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2303
  %_2328 = load i64, i64* %_2307
  %_2329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2327, i32 0, i32 1, i64 %_2328
  %_2330 = load i64, i64* %_2329
  %_2331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2303
  %_2332 = load i64, i64* %_2308
  %_2333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2331, i32 0, i32 1, i64 %_2332
  %_2334 = load i64, i64* %_2333
  %_2335 = icmp slt i64 %_2330, %_2334
  br i1 %_2335, label %_2336, label %_2337
_2336:
  %_2339 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2303
  %_2340 = load i64, i64* %_2307
  %_2341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2339, i32 0, i32 1, i64 %_2340
  %_2342 = load i64, i64* %_2341
  %_2344 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2310
  %_2345 = load i64, i64* %_2309
  %_2343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2344, i32 0, i32 1, i64 %_2345
  store i64 %_2342, i64* %_2343
  %_2346 = load i64, i64* %_2309
  %_2347 = add i64 %_2346, 1
  store i64 %_2347, i64* %_2309
  %_2348 = load i64, i64* %_2307
  %_2349 = add i64 %_2348, 1
  store i64 %_2349, i64* %_2307
  br label %_2338
_2337:
  %_2350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2303
  %_2351 = load i64, i64* %_2308
  %_2352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2350, i32 0, i32 1, i64 %_2351
  %_2353 = load i64, i64* %_2352
  %_2355 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2310
  %_2356 = load i64, i64* %_2309
  %_2354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2355, i32 0, i32 1, i64 %_2356
  store i64 %_2353, i64* %_2354
  %_2357 = load i64, i64* %_2309
  %_2358 = add i64 %_2357, 1
  store i64 %_2358, i64* %_2309
  %_2359 = load i64, i64* %_2308
  %_2360 = add i64 %_2359, 1
  store i64 %_2360, i64* %_2308
  br label %_2338
_2338:
  br label %_2324
_2326:
  br label %_2364
_2364:
  %_2361 = load i64, i64* %_2307
  %_2362 = load i64, i64* %_2306
  %_2363 = icmp sle i64 %_2361, %_2362
  br i1 %_2363, label %_2365, label %_2366
_2365:
  %_2367 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2303
  %_2368 = load i64, i64* %_2307
  %_2369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2367, i32 0, i32 1, i64 %_2368
  %_2370 = load i64, i64* %_2369
  %_2372 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2310
  %_2373 = load i64, i64* %_2309
  %_2371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2372, i32 0, i32 1, i64 %_2373
  store i64 %_2370, i64* %_2371
  %_2374 = load i64, i64* %_2309
  %_2375 = add i64 %_2374, 1
  store i64 %_2375, i64* %_2309
  %_2376 = load i64, i64* %_2307
  %_2377 = add i64 %_2376, 1
  store i64 %_2377, i64* %_2307
  br label %_2364
_2366:
  br label %_2381
_2381:
  %_2378 = load i64, i64* %_2308
  %_2379 = load i64, i64* %_2305
  %_2380 = icmp sle i64 %_2378, %_2379
  br i1 %_2380, label %_2382, label %_2383
_2382:
  %_2384 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2303
  %_2385 = load i64, i64* %_2308
  %_2386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2384, i32 0, i32 1, i64 %_2385
  %_2387 = load i64, i64* %_2386
  %_2389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2310
  %_2390 = load i64, i64* %_2309
  %_2388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2389, i32 0, i32 1, i64 %_2390
  store i64 %_2387, i64* %_2388
  %_2391 = load i64, i64* %_2309
  %_2392 = add i64 %_2391, 1
  store i64 %_2392, i64* %_2309
  %_2393 = load i64, i64* %_2308
  %_2394 = add i64 %_2393, 1
  store i64 %_2394, i64* %_2308
  br label %_2381
_2383:
  %_2395 = load i64, i64* %_2304
  store i64 %_2395, i64* %_2307
  br label %_2399
_2399:
  %_2396 = load i64, i64* %_2307
  %_2397 = load i64, i64* %_2309
  %_2398 = icmp slt i64 %_2396, %_2397
  br i1 %_2398, label %_2400, label %_2401
_2400:
  %_2402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2310
  %_2403 = load i64, i64* %_2307
  %_2404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2402, i32 0, i32 1, i64 %_2403
  %_2405 = load i64, i64* %_2404
  %_2407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2303
  %_2408 = load i64, i64* %_2307
  %_2406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2407, i32 0, i32 1, i64 %_2408
  store i64 %_2405, i64* %_2406
  %_2409 = load i64, i64* %_2307
  %_2410 = add i64 %_2409, 1
  store i64 %_2410, i64* %_2307
  br label %_2399
_2401:
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
