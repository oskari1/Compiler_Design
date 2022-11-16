; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_2461 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_2469 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_2469
  %_2470 = alloca i64
  store i64 %array_size, i64* %_2470
  %_2471 = alloca i64
  %_2472 = alloca i64
  %_2480 = alloca i64
  store i64 0, i64* %_2471
  %_2473 = load i64, i64* %_2470
  %_2474 = sub i64 %_2473, 1
  store i64 %_2474, i64* %_2472
  br label %_2477
_2477:
  %_2475 = load i64, i64* %_2472
  %_2476 = icmp sgt i64 %_2475, 0
  br i1 %_2476, label %_2478, label %_2479
_2478:
  store i64 1, i64* %_2480
  br label %_2484
_2484:
  %_2481 = load i64, i64* %_2480
  %_2482 = load i64, i64* %_2472
  %_2483 = icmp sle i64 %_2481, %_2482
  br i1 %_2483, label %_2485, label %_2486
_2485:
  %_2487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2469
  %_2488 = load i64, i64* %_2480
  %_2489 = sub i64 %_2488, 1
  %_2490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2487, i32 0, i32 1, i64 %_2489
  %_2491 = load i64, i64* %_2490
  %_2492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2469
  %_2493 = load i64, i64* %_2472
  %_2494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2492, i32 0, i32 1, i64 %_2493
  %_2495 = load i64, i64* %_2494
  %_2496 = icmp sgt i64 %_2491, %_2495
  br i1 %_2496, label %_2497, label %_2498
_2497:
  %_2500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2469
  %_2501 = load i64, i64* %_2480
  %_2502 = sub i64 %_2501, 1
  %_2503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2500, i32 0, i32 1, i64 %_2502
  %_2504 = load i64, i64* %_2503
  store i64 %_2504, i64* %_2471
  %_2505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2469
  %_2506 = load i64, i64* %_2472
  %_2507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2505, i32 0, i32 1, i64 %_2506
  %_2508 = load i64, i64* %_2507
  %_2510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2469
  %_2511 = load i64, i64* %_2480
  %_2512 = sub i64 %_2511, 1
  %_2509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2510, i32 0, i32 1, i64 %_2512
  store i64 %_2508, i64* %_2509
  %_2513 = load i64, i64* %_2471
  %_2515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2469
  %_2516 = load i64, i64* %_2472
  %_2514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2515, i32 0, i32 1, i64 %_2516
  store i64 %_2513, i64* %_2514
  br label %_2499
_2498:
  br label %_2499
_2499:
  %_2517 = load i64, i64* %_2480
  %_2518 = add i64 %_2517, 1
  store i64 %_2518, i64* %_2480
  br label %_2484
_2486:
  %_2519 = load i64, i64* %_2472
  %_2520 = sub i64 %_2519, 1
  store i64 %_2520, i64* %_2472
  br label %_2477
_2479:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2436 = alloca i64
  store i64 %argc, i64* %_2436
  %_2437 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2437
  %_2438 = alloca { i64, [0 x i64] }*
  %_raw_array2439 = call i64* @oat_alloc_array(i64 8)
  %_array2440 = bitcast i64* %_raw_array2439 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2440, { i64, [0 x i64] }** %_2438
  %_2442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  %_2441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2442, i32 0, i32 1, i32 0
  store i64 121, i64* %_2441
  %_2444 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  %_2443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2444, i32 0, i32 1, i32 1
  store i64 125, i64* %_2443
  %_2446 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  %_2445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2446, i32 0, i32 1, i32 2
  store i64 120, i64* %_2445
  %_2448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  %_2447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2448, i32 0, i32 1, i32 3
  store i64 111, i64* %_2447
  %_2450 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  %_2449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2450, i32 0, i32 1, i32 4
  store i64 116, i64* %_2449
  %_2452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  %_2451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2452, i32 0, i32 1, i32 5
  store i64 110, i64* %_2451
  %_2454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  %_2453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2454, i32 0, i32 1, i32 6
  store i64 117, i64* %_2453
  %_2456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  %_2455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2456, i32 0, i32 1, i32 7
  store i64 119, i64* %_2455
  %_2459 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  %_2458 = call i8* @string_of_array({ i64, [0 x i64] }* %_2459)
  call void @print_string(i8* %_2458)
  %_2462 = getelementptr [2 x i8], [2 x i8]* @_2461, i32 0, i32 0
  call void @print_string(i8* %_2462)
  %_2464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  call void @bubble_sort({ i64, [0 x i64] }* %_2464, i64 8)
  %_2467 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2438
  %_2466 = call i8* @string_of_array({ i64, [0 x i64] }* %_2467)
  call void @print_string(i8* %_2466)
  %_2468 = sub i64 0, 1
  ret i64 %_2468
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
