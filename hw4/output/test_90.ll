; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_2512 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2512
  %_2513 = alloca i64
  store i64 %s, i64* %_2513
  %_2514 = alloca i64
  store i64 %b, i64* %_2514
  %_2515 = alloca i64
  %_2517 = alloca i64
  %_2522 = alloca i64
  %_2516 = load i64, i64* %_2513
  store i64 %_2516, i64* %_2515
  %_2518 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2512
  %_2519 = load i64, i64* %_2513
  %_2520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2518, i32 0, i32 1, i64 %_2519
  %_2521 = load i64, i64* %_2520
  store i64 %_2521, i64* %_2517
  %_2523 = load i64, i64* %_2513
  store i64 %_2523, i64* %_2522
  br label %_2527
_2527:
  %_2524 = load i64, i64* %_2515
  %_2525 = load i64, i64* %_2514
  %_2526 = icmp slt i64 %_2524, %_2525
  br i1 %_2526, label %_2528, label %_2529
_2528:
  %_2530 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2512
  %_2531 = load i64, i64* %_2515
  %_2532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2530, i32 0, i32 1, i64 %_2531
  %_2533 = load i64, i64* %_2532
  %_2534 = load i64, i64* %_2517
  %_2535 = icmp slt i64 %_2533, %_2534
  br i1 %_2535, label %_2536, label %_2537
_2536:
  %_2539 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2512
  %_2540 = load i64, i64* %_2515
  %_2541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2539, i32 0, i32 1, i64 %_2540
  %_2542 = load i64, i64* %_2541
  store i64 %_2542, i64* %_2517
  %_2543 = load i64, i64* %_2515
  store i64 %_2543, i64* %_2522
  br label %_2538
_2537:
  br label %_2538
_2538:
  %_2544 = load i64, i64* %_2515
  %_2545 = add i64 %_2544, 1
  store i64 %_2545, i64* %_2515
  br label %_2527
_2529:
  %_2546 = load i64, i64* %_2522
  ret i64 %_2546
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_2480 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2480
  %_2481 = alloca i64
  store i64 %s, i64* %_2481
  %_2482 = alloca i64
  %_2483 = alloca i64
  %_2484 = alloca i64
  store i64 0, i64* %_2482
  store i64 0, i64* %_2483
  store i64 0, i64* %_2484
  br label %_2488
_2488:
  %_2485 = load i64, i64* %_2484
  %_2486 = load i64, i64* %_2481
  %_2487 = icmp slt i64 %_2485, %_2486
  br i1 %_2487, label %_2489, label %_2490
_2489:
  %_2492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2480
  %_2493 = load i64, i64* %_2484
  %_2494 = load i64, i64* %_2481
  %_2491 = call i64 @getminindex({ i64, [0 x i64] }* %_2492, i64 %_2493, i64 %_2494)
  store i64 %_2491, i64* %_2483
  %_2495 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2480
  %_2496 = load i64, i64* %_2484
  %_2497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2495, i32 0, i32 1, i64 %_2496
  %_2498 = load i64, i64* %_2497
  store i64 %_2498, i64* %_2482
  %_2499 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2480
  %_2500 = load i64, i64* %_2483
  %_2501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2499, i32 0, i32 1, i64 %_2500
  %_2502 = load i64, i64* %_2501
  %_2504 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2480
  %_2505 = load i64, i64* %_2484
  %_2503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2504, i32 0, i32 1, i64 %_2505
  store i64 %_2502, i64* %_2503
  %_2506 = load i64, i64* %_2482
  %_2508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2480
  %_2509 = load i64, i64* %_2483
  %_2507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2508, i32 0, i32 1, i64 %_2509
  store i64 %_2506, i64* %_2507
  %_2510 = load i64, i64* %_2484
  %_2511 = add i64 %_2510, 1
  store i64 %_2511, i64* %_2484
  br label %_2488
_2490:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2460 = alloca i64
  store i64 %argc, i64* %_2460
  %_2461 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2461
  %_2462 = alloca { i64, [0 x i64] }*
  %_2467 = alloca i64
  %_raw_array2463 = call i64* @oat_alloc_array(i64 8)
  %_array2464 = bitcast i64* %_raw_array2463 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2464, { i64, [0 x i64] }** %_2462
  %_2466 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2462
  call void @selectionsort({ i64, [0 x i64] }* %_2466, i64 8)
  store i64 0, i64* %_2467
  br label %_2470
_2470:
  %_2468 = load i64, i64* %_2467
  %_2469 = icmp slt i64 %_2468, 8
  br i1 %_2469, label %_2471, label %_2472
_2471:
  %_2474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2462
  %_2475 = load i64, i64* %_2467
  %_2476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2474, i32 0, i32 1, i64 %_2475
  %_2477 = load i64, i64* %_2476
  call void @print_int(i64 %_2477)
  %_2478 = load i64, i64* %_2467
  %_2479 = add i64 %_2478, 1
  store i64 %_2479, i64* %_2467
  br label %_2470
_2472:
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
