; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_2571 = global [2 x i8] c" \00"
@_2576 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2697 = alloca i64
  store i64 %argc, i64* %_2697
  %_2698 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2698
  %_2699 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_2706 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_2715 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array2700 = call i64* @oat_alloc_array(i64 2)
  %_array2701 = bitcast i64* %_raw_array2700 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array2704 = call i64* @oat_alloc_array(i64 3)
  %_array2705 = bitcast i64* %_raw_array2704 to { i64, [0 x i64] }*
  %_raw_array2702 = call i64* @oat_alloc_array(i64 3)
  %_array2703 = bitcast i64* %_raw_array2702 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2701, { i64, [0 x { i64, [0 x i64] }*] }** %_2699
  %_raw_array2707 = call i64* @oat_alloc_array(i64 3)
  %_array2708 = bitcast i64* %_raw_array2707 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array2713 = call i64* @oat_alloc_array(i64 4)
  %_array2714 = bitcast i64* %_raw_array2713 to { i64, [0 x i64] }*
  %_raw_array2711 = call i64* @oat_alloc_array(i64 4)
  %_array2712 = bitcast i64* %_raw_array2711 to { i64, [0 x i64] }*
  %_raw_array2709 = call i64* @oat_alloc_array(i64 4)
  %_array2710 = bitcast i64* %_raw_array2709 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2708, { i64, [0 x { i64, [0 x i64] }*] }** %_2706
  %_raw_array2716 = call i64* @oat_alloc_array(i64 2)
  %_array2717 = bitcast i64* %_raw_array2716 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array2720 = call i64* @oat_alloc_array(i64 4)
  %_array2721 = bitcast i64* %_raw_array2720 to { i64, [0 x i64] }*
  %_raw_array2718 = call i64* @oat_alloc_array(i64 4)
  %_array2719 = bitcast i64* %_raw_array2718 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2717, { i64, [0 x { i64, [0 x i64] }*] }** %_2715
  %_2723 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2699
  %_2724 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2706
  %_2725 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2715
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_2723, { i64, [0 x { i64, [0 x i64] }*] }* %_2724, { i64, [0 x { i64, [0 x i64] }*] }* %_2725)
  %_2727 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2715
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_2727, i64 2)
  %_2729 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2699
  %_2730 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2706
  %_2731 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2715
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_2729, { i64, [0 x { i64, [0 x i64] }*] }* %_2730, { i64, [0 x { i64, [0 x i64] }*] }* %_2731)
  %_2733 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2715
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_2733, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_2641 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_2641
  %_2642 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_2642
  %_2643 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_2643
  %_2644 = alloca i64
  %_2650 = alloca i64
  %_2656 = alloca i64
  store i64 0, i64* %_2644
  br label %_2647
_2647:
  %_2645 = load i64, i64* %_2644
  %_2646 = icmp slt i64 %_2645, 2
  br i1 %_2646, label %_2648, label %_2649
_2648:
  store i64 0, i64* %_2650
  br label %_2653
_2653:
  %_2651 = load i64, i64* %_2650
  %_2652 = icmp slt i64 %_2651, 4
  br i1 %_2652, label %_2654, label %_2655
_2654:
  store i64 0, i64* %_2656
  br label %_2659
_2659:
  %_2657 = load i64, i64* %_2656
  %_2658 = icmp slt i64 %_2657, 3
  br i1 %_2658, label %_2660, label %_2661
_2660:
  %_2662 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2643
  %_2663 = load i64, i64* %_2644
  %_2664 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2662, i32 0, i32 1, i64 %_2663
  %_2665 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2664
  %_2666 = load i64, i64* %_2650
  %_2667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2665, i32 0, i32 1, i64 %_2666
  %_2668 = load i64, i64* %_2667
  %_2669 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2641
  %_2670 = load i64, i64* %_2644
  %_2671 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2669, i32 0, i32 1, i64 %_2670
  %_2672 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2671
  %_2673 = load i64, i64* %_2656
  %_2674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2672, i32 0, i32 1, i64 %_2673
  %_2675 = load i64, i64* %_2674
  %_2676 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2642
  %_2677 = load i64, i64* %_2656
  %_2678 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2676, i32 0, i32 1, i64 %_2677
  %_2679 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2678
  %_2680 = load i64, i64* %_2650
  %_2681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2679, i32 0, i32 1, i64 %_2680
  %_2682 = load i64, i64* %_2681
  %_2683 = mul i64 %_2675, %_2682
  %_2684 = add i64 %_2668, %_2683
  %_2686 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2643
  %_2687 = load i64, i64* %_2644
  %_2688 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2686, i32 0, i32 1, i64 %_2687
  %_2689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2688
  %_2690 = load i64, i64* %_2650
  %_2685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2689, i32 0, i32 1, i64 %_2690
  store i64 %_2684, i64* %_2685
  %_2691 = load i64, i64* %_2656
  %_2692 = add i64 %_2691, 1
  store i64 %_2692, i64* %_2656
  br label %_2659
_2661:
  %_2693 = load i64, i64* %_2650
  %_2694 = add i64 %_2693, 1
  store i64 %_2694, i64* %_2650
  br label %_2653
_2655:
  %_2695 = load i64, i64* %_2644
  %_2696 = add i64 %_2695, 1
  store i64 %_2696, i64* %_2644
  br label %_2647
_2649:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_2611 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_2611
  %_2612 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_2612
  %_2613 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_2613
  %_2614 = alloca i64
  %_2620 = alloca i64
  store i64 0, i64* %_2614
  br label %_2617
_2617:
  %_2615 = load i64, i64* %_2614
  %_2616 = icmp slt i64 %_2615, 2
  br i1 %_2616, label %_2618, label %_2619
_2618:
  store i64 0, i64* %_2620
  br label %_2623
_2623:
  %_2621 = load i64, i64* %_2620
  %_2622 = icmp slt i64 %_2621, 4
  br i1 %_2622, label %_2624, label %_2625
_2624:
  %_2627 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2611
  %_2628 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2612
  %_2629 = load i64, i64* %_2614
  %_2630 = load i64, i64* %_2620
  %_2626 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_2627, { i64, [0 x { i64, [0 x i64] }*] }* %_2628, i64 %_2629, i64 %_2630)
  %_2632 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2613
  %_2633 = load i64, i64* %_2614
  %_2634 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2632, i32 0, i32 1, i64 %_2633
  %_2635 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2634
  %_2636 = load i64, i64* %_2620
  %_2631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2635, i32 0, i32 1, i64 %_2636
  store i64 %_2626, i64* %_2631
  %_2637 = load i64, i64* %_2620
  %_2638 = add i64 %_2637, 1
  store i64 %_2638, i64* %_2620
  br label %_2623
_2625:
  %_2639 = load i64, i64* %_2614
  %_2640 = add i64 %_2639, 1
  store i64 %_2640, i64* %_2614
  br label %_2617
_2619:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_2580 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_2580
  %_2581 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_2581
  %_2582 = alloca i64
  store i64 %row, i64* %_2582
  %_2583 = alloca i64
  store i64 %col, i64* %_2583
  %_2584 = alloca i64
  %_2585 = alloca i64
  store i64 0, i64* %_2584
  store i64 0, i64* %_2585
  br label %_2588
_2588:
  %_2586 = load i64, i64* %_2585
  %_2587 = icmp slt i64 %_2586, 3
  br i1 %_2587, label %_2589, label %_2590
_2589:
  %_2591 = load i64, i64* %_2584
  %_2592 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2580
  %_2593 = load i64, i64* %_2582
  %_2594 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2592, i32 0, i32 1, i64 %_2593
  %_2595 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2594
  %_2596 = load i64, i64* %_2585
  %_2597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2595, i32 0, i32 1, i64 %_2596
  %_2598 = load i64, i64* %_2597
  %_2599 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2581
  %_2600 = load i64, i64* %_2585
  %_2601 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2599, i32 0, i32 1, i64 %_2600
  %_2602 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2601
  %_2603 = load i64, i64* %_2583
  %_2604 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2602, i32 0, i32 1, i64 %_2603
  %_2605 = load i64, i64* %_2604
  %_2606 = mul i64 %_2598, %_2605
  %_2607 = add i64 %_2591, %_2606
  store i64 %_2607, i64* %_2584
  %_2608 = load i64, i64* %_2585
  %_2609 = add i64 %_2608, 1
  store i64 %_2609, i64* %_2585
  br label %_2588
_2590:
  %_2610 = load i64, i64* %_2584
  ret i64 %_2610
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_2547 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_2547
  %_2548 = alloca i64
  store i64 %n, i64* %_2548
  %_2549 = alloca i64
  %_2556 = alloca i64
  store i64 0, i64* %_2549
  br label %_2553
_2553:
  %_2550 = load i64, i64* %_2549
  %_2551 = load i64, i64* %_2548
  %_2552 = icmp slt i64 %_2550, %_2551
  br i1 %_2552, label %_2554, label %_2555
_2554:
  store i64 0, i64* %_2556
  br label %_2559
_2559:
  %_2557 = load i64, i64* %_2556
  %_2558 = icmp slt i64 %_2557, 4
  br i1 %_2558, label %_2560, label %_2561
_2560:
  %_2563 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2547
  %_2564 = load i64, i64* %_2549
  %_2565 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2563, i32 0, i32 1, i64 %_2564
  %_2566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2565
  %_2567 = load i64, i64* %_2556
  %_2568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2566, i32 0, i32 1, i64 %_2567
  %_2569 = load i64, i64* %_2568
  call void @print_int(i64 %_2569)
  %_2572 = getelementptr [2 x i8], [2 x i8]* @_2571, i32 0, i32 0
  call void @print_string(i8* %_2572)
  %_2573 = load i64, i64* %_2556
  %_2574 = add i64 %_2573, 1
  store i64 %_2574, i64* %_2556
  br label %_2559
_2561:
  %_2577 = getelementptr [2 x i8], [2 x i8]* @_2576, i32 0, i32 0
  call void @print_string(i8* %_2577)
  %_2578 = load i64, i64* %_2549
  %_2579 = add i64 %_2578, 1
  store i64 %_2579, i64* %_2549
  br label %_2553
_2555:
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
