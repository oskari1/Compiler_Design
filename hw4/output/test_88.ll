; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_2679 = global [2 x i8] c" \00"
@_2685 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2657 = alloca i64
  store i64 %argc, i64* %_2657
  %_2658 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2658
  %_2659 = alloca i64
  %_2660 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_2659
  %_raw_array2661 = call i64* @oat_alloc_array(i64 10)
  %_array2662 = bitcast i64* %_raw_array2661 to { i64, [0 x i64] }*
  %_2672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2662, i32 0, i32 1, i32 9
  store i64 117, i64* %_2672
  %_2671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2662, i32 0, i32 1, i32 8
  store i64 118, i64* %_2671
  %_2670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2662, i32 0, i32 1, i32 7
  store i64 119, i64* %_2670
  %_2669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2662, i32 0, i32 1, i32 6
  store i64 120, i64* %_2669
  %_2668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2662, i32 0, i32 1, i32 5
  store i64 121, i64* %_2668
  %_2667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2662, i32 0, i32 1, i32 4
  store i64 122, i64* %_2667
  %_2666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2662, i32 0, i32 1, i32 3
  store i64 123, i64* %_2666
  %_2665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2662, i32 0, i32 1, i32 2
  store i64 124, i64* %_2665
  %_2664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2662, i32 0, i32 1, i32 1
  store i64 125, i64* %_2664
  %_2663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2662, i32 0, i32 1, i32 0
  store i64 126, i64* %_2663
  store { i64, [0 x i64] }* %_array2662, { i64, [0 x i64] }** %_2660
  %_2675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2660
  %_2674 = call i8* @string_of_array({ i64, [0 x i64] }* %_2675)
  call void @print_string(i8* %_2674)
  %_2677 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2660
  call void @oat_mergesort({ i64, [0 x i64] }* %_2677, i64 0, i64 9)
  %_2680 = getelementptr [2 x i8], [2 x i8]* @_2679, i32 0, i32 0
  call void @print_string(i8* %_2680)
  %_2683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2660
  %_2682 = call i8* @string_of_array({ i64, [0 x i64] }* %_2683)
  call void @print_string(i8* %_2682)
  %_2686 = getelementptr [2 x i8], [2 x i8]* @_2685, i32 0, i32 0
  call void @print_string(i8* %_2686)
  %_2687 = load i64, i64* %_2659
  ret i64 %_2687
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_2629 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2629
  %_2630 = alloca i64
  store i64 %low, i64* %_2630
  %_2631 = alloca i64
  store i64 %high, i64* %_2631
  %_2632 = alloca i64
  store i64 0, i64* %_2632
  %_2633 = load i64, i64* %_2630
  %_2634 = load i64, i64* %_2631
  %_2635 = icmp slt i64 %_2633, %_2634
  br i1 %_2635, label %_2636, label %_2637
_2636:
  %_2639 = load i64, i64* %_2630
  %_2640 = load i64, i64* %_2631
  %_2641 = add i64 %_2639, %_2640
  %_2642 = lshr i64 %_2641, 1
  store i64 %_2642, i64* %_2632
  %_2644 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2629
  %_2645 = load i64, i64* %_2630
  %_2646 = load i64, i64* %_2632
  call void @oat_mergesort({ i64, [0 x i64] }* %_2644, i64 %_2645, i64 %_2646)
  %_2648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2629
  %_2649 = load i64, i64* %_2632
  %_2650 = add i64 %_2649, 1
  %_2651 = load i64, i64* %_2631
  call void @oat_mergesort({ i64, [0 x i64] }* %_2648, i64 %_2650, i64 %_2651)
  %_2653 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2629
  %_2654 = load i64, i64* %_2630
  %_2655 = load i64, i64* %_2631
  %_2656 = load i64, i64* %_2632
  call void @merge({ i64, [0 x i64] }* %_2653, i64 %_2654, i64 %_2655, i64 %_2656)
  br label %_2638
_2637:
  br label %_2638
_2638:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_2521 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2521
  %_2522 = alloca i64
  store i64 %low, i64* %_2522
  %_2523 = alloca i64
  store i64 %high, i64* %_2523
  %_2524 = alloca i64
  store i64 %mid, i64* %_2524
  %_2525 = alloca i64
  %_2526 = alloca i64
  %_2527 = alloca i64
  %_2528 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_2525
  store i64 0, i64* %_2526
  store i64 0, i64* %_2527
  %_raw_array2529 = call i64* @oat_alloc_array(i64 50)
  %_array2530 = bitcast i64* %_raw_array2529 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2530, { i64, [0 x i64] }** %_2528
  %_2531 = load i64, i64* %_2522
  store i64 %_2531, i64* %_2525
  %_2532 = load i64, i64* %_2524
  %_2533 = add i64 %_2532, 1
  store i64 %_2533, i64* %_2526
  %_2534 = load i64, i64* %_2522
  store i64 %_2534, i64* %_2527
  br label %_2542
_2542:
  %_2535 = load i64, i64* %_2525
  %_2536 = load i64, i64* %_2524
  %_2537 = icmp sle i64 %_2535, %_2536
  %_2538 = load i64, i64* %_2526
  %_2539 = load i64, i64* %_2523
  %_2540 = icmp sle i64 %_2538, %_2539
  %_2541 = and i1 %_2537, %_2540
  br i1 %_2541, label %_2543, label %_2544
_2543:
  %_2545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2521
  %_2546 = load i64, i64* %_2525
  %_2547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2545, i32 0, i32 1, i64 %_2546
  %_2548 = load i64, i64* %_2547
  %_2549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2521
  %_2550 = load i64, i64* %_2526
  %_2551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2549, i32 0, i32 1, i64 %_2550
  %_2552 = load i64, i64* %_2551
  %_2553 = icmp slt i64 %_2548, %_2552
  br i1 %_2553, label %_2554, label %_2555
_2554:
  %_2557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2521
  %_2558 = load i64, i64* %_2525
  %_2559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2557, i32 0, i32 1, i64 %_2558
  %_2560 = load i64, i64* %_2559
  %_2562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2528
  %_2563 = load i64, i64* %_2527
  %_2561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2562, i32 0, i32 1, i64 %_2563
  store i64 %_2560, i64* %_2561
  %_2564 = load i64, i64* %_2527
  %_2565 = add i64 %_2564, 1
  store i64 %_2565, i64* %_2527
  %_2566 = load i64, i64* %_2525
  %_2567 = add i64 %_2566, 1
  store i64 %_2567, i64* %_2525
  br label %_2556
_2555:
  %_2568 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2521
  %_2569 = load i64, i64* %_2526
  %_2570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2568, i32 0, i32 1, i64 %_2569
  %_2571 = load i64, i64* %_2570
  %_2573 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2528
  %_2574 = load i64, i64* %_2527
  %_2572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2573, i32 0, i32 1, i64 %_2574
  store i64 %_2571, i64* %_2572
  %_2575 = load i64, i64* %_2527
  %_2576 = add i64 %_2575, 1
  store i64 %_2576, i64* %_2527
  %_2577 = load i64, i64* %_2526
  %_2578 = add i64 %_2577, 1
  store i64 %_2578, i64* %_2526
  br label %_2556
_2556:
  br label %_2542
_2544:
  br label %_2582
_2582:
  %_2579 = load i64, i64* %_2525
  %_2580 = load i64, i64* %_2524
  %_2581 = icmp sle i64 %_2579, %_2580
  br i1 %_2581, label %_2583, label %_2584
_2583:
  %_2585 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2521
  %_2586 = load i64, i64* %_2525
  %_2587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2585, i32 0, i32 1, i64 %_2586
  %_2588 = load i64, i64* %_2587
  %_2590 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2528
  %_2591 = load i64, i64* %_2527
  %_2589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2590, i32 0, i32 1, i64 %_2591
  store i64 %_2588, i64* %_2589
  %_2592 = load i64, i64* %_2527
  %_2593 = add i64 %_2592, 1
  store i64 %_2593, i64* %_2527
  %_2594 = load i64, i64* %_2525
  %_2595 = add i64 %_2594, 1
  store i64 %_2595, i64* %_2525
  br label %_2582
_2584:
  br label %_2599
_2599:
  %_2596 = load i64, i64* %_2526
  %_2597 = load i64, i64* %_2523
  %_2598 = icmp sle i64 %_2596, %_2597
  br i1 %_2598, label %_2600, label %_2601
_2600:
  %_2602 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2521
  %_2603 = load i64, i64* %_2526
  %_2604 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2602, i32 0, i32 1, i64 %_2603
  %_2605 = load i64, i64* %_2604
  %_2607 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2528
  %_2608 = load i64, i64* %_2527
  %_2606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2607, i32 0, i32 1, i64 %_2608
  store i64 %_2605, i64* %_2606
  %_2609 = load i64, i64* %_2527
  %_2610 = add i64 %_2609, 1
  store i64 %_2610, i64* %_2527
  %_2611 = load i64, i64* %_2526
  %_2612 = add i64 %_2611, 1
  store i64 %_2612, i64* %_2526
  br label %_2599
_2601:
  %_2613 = load i64, i64* %_2522
  store i64 %_2613, i64* %_2525
  br label %_2617
_2617:
  %_2614 = load i64, i64* %_2525
  %_2615 = load i64, i64* %_2527
  %_2616 = icmp slt i64 %_2614, %_2615
  br i1 %_2616, label %_2618, label %_2619
_2618:
  %_2620 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2528
  %_2621 = load i64, i64* %_2525
  %_2622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2620, i32 0, i32 1, i64 %_2621
  %_2623 = load i64, i64* %_2622
  %_2625 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2521
  %_2626 = load i64, i64* %_2525
  %_2624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2625, i32 0, i32 1, i64 %_2626
  store i64 %_2623, i64* %_2624
  %_2627 = load i64, i64* %_2525
  %_2628 = add i64 %_2627, 1
  store i64 %_2628, i64* %_2525
  br label %_2617
_2619:
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
