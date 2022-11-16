; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_2412 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2412
  %_2413 = alloca i64
  store i64 %l, i64* %_2413
  %_2414 = alloca i64
  store i64 %r, i64* %_2414
  %_2415 = alloca i64
  store i64 0, i64* %_2415
  %_2416 = load i64, i64* %_2413
  %_2417 = load i64, i64* %_2414
  %_2418 = icmp slt i64 %_2416, %_2417
  br i1 %_2418, label %_2419, label %_2420
_2419:
  %_2423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2412
  %_2424 = load i64, i64* %_2413
  %_2425 = load i64, i64* %_2414
  %_2422 = call i64 @partition({ i64, [0 x i64] }* %_2423, i64 %_2424, i64 %_2425)
  store i64 %_2422, i64* %_2415
  %_2427 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2412
  %_2428 = load i64, i64* %_2413
  %_2429 = load i64, i64* %_2415
  %_2430 = sub i64 %_2429, 1
  call void @quick_sort({ i64, [0 x i64] }* %_2427, i64 %_2428, i64 %_2430)
  %_2432 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2412
  %_2433 = load i64, i64* %_2415
  %_2434 = add i64 %_2433, 1
  %_2435 = load i64, i64* %_2414
  call void @quick_sort({ i64, [0 x i64] }* %_2432, i64 %_2434, i64 %_2435)
  br label %_2421
_2420:
  br label %_2421
_2421:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_2320 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2320
  %_2321 = alloca i64
  store i64 %l, i64* %_2321
  %_2322 = alloca i64
  store i64 %r, i64* %_2322
  %_2323 = alloca i64
  %_2328 = alloca i64
  %_2330 = alloca i64
  %_2333 = alloca i64
  %_2334 = alloca i64
  %_2324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2325 = load i64, i64* %_2321
  %_2326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2324, i32 0, i32 1, i64 %_2325
  %_2327 = load i64, i64* %_2326
  store i64 %_2327, i64* %_2323
  %_2329 = load i64, i64* %_2321
  store i64 %_2329, i64* %_2328
  %_2331 = load i64, i64* %_2322
  %_2332 = add i64 %_2331, 1
  store i64 %_2332, i64* %_2330
  store i64 0, i64* %_2333
  store i64 0, i64* %_2334
  br label %_2337
_2337:
  %_2335 = load i64, i64* %_2334
  %_2336 = icmp eq i64 %_2335, 0
  br i1 %_2336, label %_2338, label %_2339
_2338:
  %_2340 = load i64, i64* %_2328
  %_2341 = add i64 %_2340, 1
  store i64 %_2341, i64* %_2328
  br label %_2352
_2352:
  %_2342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2343 = load i64, i64* %_2328
  %_2344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2342, i32 0, i32 1, i64 %_2343
  %_2345 = load i64, i64* %_2344
  %_2346 = load i64, i64* %_2323
  %_2347 = icmp sle i64 %_2345, %_2346
  %_2348 = load i64, i64* %_2328
  %_2349 = load i64, i64* %_2322
  %_2350 = icmp sle i64 %_2348, %_2349
  %_2351 = and i1 %_2347, %_2350
  br i1 %_2351, label %_2353, label %_2354
_2353:
  %_2355 = load i64, i64* %_2328
  %_2356 = add i64 %_2355, 1
  store i64 %_2356, i64* %_2328
  br label %_2352
_2354:
  %_2357 = load i64, i64* %_2330
  %_2358 = sub i64 %_2357, 1
  store i64 %_2358, i64* %_2330
  br label %_2365
_2365:
  %_2359 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2360 = load i64, i64* %_2330
  %_2361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2359, i32 0, i32 1, i64 %_2360
  %_2362 = load i64, i64* %_2361
  %_2363 = load i64, i64* %_2323
  %_2364 = icmp sgt i64 %_2362, %_2363
  br i1 %_2364, label %_2366, label %_2367
_2366:
  %_2368 = load i64, i64* %_2330
  %_2369 = sub i64 %_2368, 1
  store i64 %_2369, i64* %_2330
  br label %_2365
_2367:
  %_2370 = load i64, i64* %_2328
  %_2371 = load i64, i64* %_2330
  %_2372 = icmp sge i64 %_2370, %_2371
  br i1 %_2372, label %_2373, label %_2374
_2373:
  store i64 1, i64* %_2334
  br label %_2375
_2374:
  br label %_2375
_2375:
  %_2376 = load i64, i64* %_2334
  %_2377 = icmp eq i64 %_2376, 0
  br i1 %_2377, label %_2378, label %_2379
_2378:
  %_2381 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2382 = load i64, i64* %_2328
  %_2383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2381, i32 0, i32 1, i64 %_2382
  %_2384 = load i64, i64* %_2383
  store i64 %_2384, i64* %_2333
  %_2385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2386 = load i64, i64* %_2330
  %_2387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2385, i32 0, i32 1, i64 %_2386
  %_2388 = load i64, i64* %_2387
  %_2390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2391 = load i64, i64* %_2328
  %_2389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2390, i32 0, i32 1, i64 %_2391
  store i64 %_2388, i64* %_2389
  %_2392 = load i64, i64* %_2333
  %_2394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2395 = load i64, i64* %_2330
  %_2393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2394, i32 0, i32 1, i64 %_2395
  store i64 %_2392, i64* %_2393
  br label %_2380
_2379:
  br label %_2380
_2380:
  br label %_2337
_2339:
  %_2396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2397 = load i64, i64* %_2321
  %_2398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2396, i32 0, i32 1, i64 %_2397
  %_2399 = load i64, i64* %_2398
  store i64 %_2399, i64* %_2333
  %_2400 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2401 = load i64, i64* %_2330
  %_2402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2400, i32 0, i32 1, i64 %_2401
  %_2403 = load i64, i64* %_2402
  %_2405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2406 = load i64, i64* %_2321
  %_2404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2405, i32 0, i32 1, i64 %_2406
  store i64 %_2403, i64* %_2404
  %_2407 = load i64, i64* %_2333
  %_2409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2320
  %_2410 = load i64, i64* %_2330
  %_2408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2409, i32 0, i32 1, i64 %_2410
  store i64 %_2407, i64* %_2408
  %_2411 = load i64, i64* %_2330
  ret i64 %_2411
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2298 = alloca i64
  store i64 %argc, i64* %_2298
  %_2299 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2299
  %_2300 = alloca { i64, [0 x i64] }*
  %_raw_array2301 = call i64* @oat_alloc_array(i64 9)
  %_array2302 = bitcast i64* %_raw_array2301 to { i64, [0 x i64] }*
  %_2311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 8
  store i64 109, i64* %_2311
  %_2310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 7
  store i64 111, i64* %_2310
  %_2309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 6
  store i64 104, i64* %_2309
  %_2308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 5
  store i64 115, i64* %_2308
  %_2307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 4
  store i64 123, i64* %_2307
  %_2306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 3
  store i64 102, i64* %_2306
  %_2305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 2
  store i64 121, i64* %_2305
  %_2304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 1
  store i64 112, i64* %_2304
  %_2303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2302, i32 0, i32 1, i32 0
  store i64 107, i64* %_2303
  store { i64, [0 x i64] }* %_array2302, { i64, [0 x i64] }** %_2300
  %_2314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2300
  %_2313 = call i8* @string_of_array({ i64, [0 x i64] }* %_2314)
  call void @print_string(i8* %_2313)
  %_2316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2300
  call void @quick_sort({ i64, [0 x i64] }* %_2316, i64 0, i64 8)
  %_2319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2300
  %_2318 = call i8* @string_of_array({ i64, [0 x i64] }* %_2319)
  call void @print_string(i8* %_2318)
  ret i64 255
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
