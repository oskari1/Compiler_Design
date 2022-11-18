; generated from: oatprograms/union_find.oat
target triple = "x86_64-unknown-linux"
@_2549 = global [2 x i8] c" \00"

define { i64, [0 x i64] }* @create_ufind(i64 %len) {
  %_2608 = alloca i64
  store i64 %len, i64* %_2608
  %_2609 = alloca { i64, [0 x i64] }*
  %_2613 = alloca i64
  %_2610 = load i64, i64* %_2608
  %_raw_array2611 = call i64* @oat_alloc_array(i64 %_2610)
  %_array2612 = bitcast i64* %_raw_array2611 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2612, { i64, [0 x i64] }** %_2609
  store i64 0, i64* %_2613
  br label %_2617
_2617:
  %_2614 = load i64, i64* %_2613
  %_2615 = load i64, i64* %_2608
  %_2616 = icmp slt i64 %_2614, %_2615
  br i1 %_2616, label %_2618, label %_2619
_2618:
  %_2620 = load i64, i64* %_2613
  %_2622 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2609
  %_2623 = load i64, i64* %_2613
  %_2621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2622, i32 0, i32 1, i64 %_2623
  store i64 %_2620, i64* %_2621
  %_2624 = load i64, i64* %_2613
  %_2625 = add i64 %_2624, 1
  store i64 %_2625, i64* %_2613
  br label %_2617
_2619:
  %_2626 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2609
  ret { i64, [0 x i64] }* %_2626
}

define void @union({ i64, [0 x i64] }* %comps, i64 %u, i64 %v) {
  %_2587 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %comps, { i64, [0 x i64] }** %_2587
  %_2588 = alloca i64
  store i64 %u, i64* %_2588
  %_2589 = alloca i64
  store i64 %v, i64* %_2589
  %_2590 = alloca i64
  %_2594 = alloca i64
  %_2592 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2587
  %_2593 = load i64, i64* %_2588
  %_2591 = call i64 @find({ i64, [0 x i64] }* %_2592, i64 %_2593)
  store i64 %_2591, i64* %_2590
  %_2596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2587
  %_2597 = load i64, i64* %_2589
  %_2595 = call i64 @find({ i64, [0 x i64] }* %_2596, i64 %_2597)
  store i64 %_2595, i64* %_2594
  %_2598 = load i64, i64* %_2590
  %_2599 = load i64, i64* %_2594
  %_2600 = icmp eq i64 %_2598, %_2599
  br i1 %_2600, label %_2601, label %_2602
_2601:
  ret void
_2602:
  br label %_2603
_2603:
  %_2604 = load i64, i64* %_2594
  %_2606 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2587
  %_2607 = load i64, i64* %_2590
  %_2605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2606, i32 0, i32 1, i64 %_2607
  store i64 %_2604, i64* %_2605
  ret void
}

define i64 @find({ i64, [0 x i64] }* %comps, i64 %u) {
  %_2553 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %comps, { i64, [0 x i64] }** %_2553
  %_2554 = alloca i64
  store i64 %u, i64* %_2554
  %_2555 = alloca i64
  %_2576 = alloca i64
  %_2556 = load i64, i64* %_2554
  store i64 %_2556, i64* %_2555
  br label %_2563
_2563:
  %_2557 = load i64, i64* %_2555
  %_2558 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2553
  %_2559 = load i64, i64* %_2555
  %_2560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2558, i32 0, i32 1, i64 %_2559
  %_2561 = load i64, i64* %_2560
  %_2562 = icmp ne i64 %_2557, %_2561
  br i1 %_2562, label %_2564, label %_2565
_2564:
  %_2566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2553
  %_2567 = load i64, i64* %_2555
  %_2568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2566, i32 0, i32 1, i64 %_2567
  %_2569 = load i64, i64* %_2568
  store i64 %_2569, i64* %_2555
  br label %_2563
_2565:
  br label %_2573
_2573:
  %_2570 = load i64, i64* %_2554
  %_2571 = load i64, i64* %_2555
  %_2572 = icmp ne i64 %_2570, %_2571
  br i1 %_2572, label %_2574, label %_2575
_2574:
  %_2577 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2553
  %_2578 = load i64, i64* %_2554
  %_2579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2577, i32 0, i32 1, i64 %_2578
  %_2580 = load i64, i64* %_2579
  store i64 %_2580, i64* %_2576
  %_2581 = load i64, i64* %_2555
  %_2583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2553
  %_2584 = load i64, i64* %_2554
  %_2582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2583, i32 0, i32 1, i64 %_2584
  store i64 %_2581, i64* %_2582
  %_2585 = load i64, i64* %_2576
  store i64 %_2585, i64* %_2554
  br label %_2573
_2575:
  %_2586 = load i64, i64* %_2555
  ret i64 %_2586
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2526 = alloca i64
  store i64 %argc, i64* %_2526
  %_2527 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2527
  %_2528 = alloca { i64, [0 x i64] }*
  %_2538 = alloca i64
  %_2529 = call { i64, [0 x i64] }* @create_ufind(i64 8)
  store { i64, [0 x i64] }* %_2529, { i64, [0 x i64] }** %_2528
  %_2531 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2528
  call void @union({ i64, [0 x i64] }* %_2531, i64 0, i64 7)
  %_2533 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2528
  call void @union({ i64, [0 x i64] }* %_2533, i64 1, i64 6)
  %_2535 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2528
  call void @union({ i64, [0 x i64] }* %_2535, i64 2, i64 5)
  %_2537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2528
  call void @union({ i64, [0 x i64] }* %_2537, i64 5, i64 0)
  store i64 0, i64* %_2538
  br label %_2541
_2541:
  %_2539 = load i64, i64* %_2538
  %_2540 = icmp slt i64 %_2539, 8
  br i1 %_2540, label %_2542, label %_2543
_2542:
  %_2546 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2528
  %_2547 = load i64, i64* %_2538
  %_2545 = call i64 @find({ i64, [0 x i64] }* %_2546, i64 %_2547)
  call void @print_int(i64 %_2545)
  %_2550 = getelementptr [2 x i8], [2 x i8]* @_2549, i32 0, i32 0
  call void @print_string(i8* %_2550)
  %_2551 = load i64, i64* %_2538
  %_2552 = add i64 %_2551, 1
  store i64 %_2552, i64* %_2538
  br label %_2541
_2543:
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
