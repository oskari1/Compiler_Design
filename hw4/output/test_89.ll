; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_2846 = global [2 x i8] c" \00"
@_2852 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2824 = alloca i64
  store i64 %argc, i64* %_2824
  %_2825 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2825
  %_2826 = alloca { i64, [0 x i64] }*
  %_2839 = alloca i64
  %_raw_array2827 = call i64* @oat_alloc_array(i64 10)
  %_array2828 = bitcast i64* %_raw_array2827 to { i64, [0 x i64] }*
  %_2838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2828, i32 0, i32 1, i32 9
  store i64 117, i64* %_2838
  %_2837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2828, i32 0, i32 1, i32 8
  store i64 118, i64* %_2837
  %_2836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2828, i32 0, i32 1, i32 7
  store i64 119, i64* %_2836
  %_2835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2828, i32 0, i32 1, i32 6
  store i64 120, i64* %_2835
  %_2834 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2828, i32 0, i32 1, i32 5
  store i64 121, i64* %_2834
  %_2833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2828, i32 0, i32 1, i32 4
  store i64 122, i64* %_2833
  %_2832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2828, i32 0, i32 1, i32 3
  store i64 123, i64* %_2832
  %_2831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2828, i32 0, i32 1, i32 2
  store i64 124, i64* %_2831
  %_2830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2828, i32 0, i32 1, i32 1
  store i64 125, i64* %_2830
  %_2829 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2828, i32 0, i32 1, i32 0
  store i64 126, i64* %_2829
  store { i64, [0 x i64] }* %_array2828, { i64, [0 x i64] }** %_2826
  store i64 0, i64* %_2839
  %_2842 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2826
  %_2841 = call i8* @string_of_array({ i64, [0 x i64] }* %_2842)
  call void @print_string(i8* %_2841)
  %_2844 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2826
  call void @oat_mergesort({ i64, [0 x i64] }* %_2844, i64 0, i64 9)
  %_2847 = getelementptr [2 x i8], [2 x i8]* @_2846, i32 0, i32 0
  call void @print_string(i8* %_2847)
  %_2850 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2826
  %_2849 = call i8* @string_of_array({ i64, [0 x i64] }* %_2850)
  call void @print_string(i8* %_2849)
  %_2853 = getelementptr [2 x i8], [2 x i8]* @_2852, i32 0, i32 0
  call void @print_string(i8* %_2853)
  %_2854 = load i64, i64* %_2839
  ret i64 %_2854
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_2796 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2796
  %_2797 = alloca i64
  store i64 %low, i64* %_2797
  %_2798 = alloca i64
  store i64 %high, i64* %_2798
  %_2799 = alloca i64
  store i64 0, i64* %_2799
  %_2800 = load i64, i64* %_2797
  %_2801 = load i64, i64* %_2798
  %_2802 = icmp slt i64 %_2800, %_2801
  br i1 %_2802, label %_2803, label %_2804
_2803:
  %_2806 = load i64, i64* %_2797
  %_2807 = load i64, i64* %_2798
  %_2808 = add i64 %_2806, %_2807
  %_2809 = lshr i64 %_2808, 1
  store i64 %_2809, i64* %_2799
  %_2811 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2796
  %_2812 = load i64, i64* %_2797
  %_2813 = load i64, i64* %_2799
  call void @oat_mergesort({ i64, [0 x i64] }* %_2811, i64 %_2812, i64 %_2813)
  %_2815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2796
  %_2816 = load i64, i64* %_2799
  %_2817 = add i64 %_2816, 1
  %_2818 = load i64, i64* %_2798
  call void @oat_mergesort({ i64, [0 x i64] }* %_2815, i64 %_2817, i64 %_2818)
  %_2820 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2796
  %_2821 = load i64, i64* %_2797
  %_2822 = load i64, i64* %_2798
  %_2823 = load i64, i64* %_2799
  call void @merge({ i64, [0 x i64] }* %_2820, i64 %_2821, i64 %_2822, i64 %_2823)
  br label %_2805
_2804:
  br label %_2805
_2805:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_2688 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2688
  %_2689 = alloca i64
  store i64 %low, i64* %_2689
  %_2690 = alloca i64
  store i64 %high, i64* %_2690
  %_2691 = alloca i64
  store i64 %mid, i64* %_2691
  %_2692 = alloca i64
  %_2693 = alloca i64
  %_2694 = alloca i64
  %_2695 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_2692
  store i64 0, i64* %_2693
  store i64 0, i64* %_2694
  %_raw_array2696 = call i64* @oat_alloc_array(i64 50)
  %_array2697 = bitcast i64* %_raw_array2696 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2697, { i64, [0 x i64] }** %_2695
  %_2698 = load i64, i64* %_2689
  store i64 %_2698, i64* %_2692
  %_2699 = load i64, i64* %_2691
  %_2700 = add i64 %_2699, 1
  store i64 %_2700, i64* %_2693
  %_2701 = load i64, i64* %_2689
  store i64 %_2701, i64* %_2694
  br label %_2709
_2709:
  %_2702 = load i64, i64* %_2692
  %_2703 = load i64, i64* %_2691
  %_2704 = icmp sle i64 %_2702, %_2703
  %_2705 = load i64, i64* %_2693
  %_2706 = load i64, i64* %_2690
  %_2707 = icmp sle i64 %_2705, %_2706
  %_2708 = and i1 %_2704, %_2707
  br i1 %_2708, label %_2710, label %_2711
_2710:
  %_2712 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2688
  %_2713 = load i64, i64* %_2692
  %_2714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2712, i32 0, i32 1, i64 %_2713
  %_2715 = load i64, i64* %_2714
  %_2716 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2688
  %_2717 = load i64, i64* %_2693
  %_2718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2716, i32 0, i32 1, i64 %_2717
  %_2719 = load i64, i64* %_2718
  %_2720 = icmp slt i64 %_2715, %_2719
  br i1 %_2720, label %_2721, label %_2722
_2721:
  %_2724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2688
  %_2725 = load i64, i64* %_2692
  %_2726 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2724, i32 0, i32 1, i64 %_2725
  %_2727 = load i64, i64* %_2726
  %_2729 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2695
  %_2730 = load i64, i64* %_2694
  %_2728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2729, i32 0, i32 1, i64 %_2730
  store i64 %_2727, i64* %_2728
  %_2731 = load i64, i64* %_2694
  %_2732 = add i64 %_2731, 1
  store i64 %_2732, i64* %_2694
  %_2733 = load i64, i64* %_2692
  %_2734 = add i64 %_2733, 1
  store i64 %_2734, i64* %_2692
  br label %_2723
_2722:
  %_2735 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2688
  %_2736 = load i64, i64* %_2693
  %_2737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2735, i32 0, i32 1, i64 %_2736
  %_2738 = load i64, i64* %_2737
  %_2740 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2695
  %_2741 = load i64, i64* %_2694
  %_2739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2740, i32 0, i32 1, i64 %_2741
  store i64 %_2738, i64* %_2739
  %_2742 = load i64, i64* %_2694
  %_2743 = add i64 %_2742, 1
  store i64 %_2743, i64* %_2694
  %_2744 = load i64, i64* %_2693
  %_2745 = add i64 %_2744, 1
  store i64 %_2745, i64* %_2693
  br label %_2723
_2723:
  br label %_2709
_2711:
  br label %_2749
_2749:
  %_2746 = load i64, i64* %_2692
  %_2747 = load i64, i64* %_2691
  %_2748 = icmp sle i64 %_2746, %_2747
  br i1 %_2748, label %_2750, label %_2751
_2750:
  %_2752 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2688
  %_2753 = load i64, i64* %_2692
  %_2754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2752, i32 0, i32 1, i64 %_2753
  %_2755 = load i64, i64* %_2754
  %_2757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2695
  %_2758 = load i64, i64* %_2694
  %_2756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2757, i32 0, i32 1, i64 %_2758
  store i64 %_2755, i64* %_2756
  %_2759 = load i64, i64* %_2694
  %_2760 = add i64 %_2759, 1
  store i64 %_2760, i64* %_2694
  %_2761 = load i64, i64* %_2692
  %_2762 = add i64 %_2761, 1
  store i64 %_2762, i64* %_2692
  br label %_2749
_2751:
  br label %_2766
_2766:
  %_2763 = load i64, i64* %_2693
  %_2764 = load i64, i64* %_2690
  %_2765 = icmp sle i64 %_2763, %_2764
  br i1 %_2765, label %_2767, label %_2768
_2767:
  %_2769 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2688
  %_2770 = load i64, i64* %_2693
  %_2771 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2769, i32 0, i32 1, i64 %_2770
  %_2772 = load i64, i64* %_2771
  %_2774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2695
  %_2775 = load i64, i64* %_2694
  %_2773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2774, i32 0, i32 1, i64 %_2775
  store i64 %_2772, i64* %_2773
  %_2776 = load i64, i64* %_2694
  %_2777 = add i64 %_2776, 1
  store i64 %_2777, i64* %_2694
  %_2778 = load i64, i64* %_2693
  %_2779 = add i64 %_2778, 1
  store i64 %_2779, i64* %_2693
  br label %_2766
_2768:
  %_2780 = load i64, i64* %_2689
  store i64 %_2780, i64* %_2692
  br label %_2784
_2784:
  %_2781 = load i64, i64* %_2692
  %_2782 = load i64, i64* %_2694
  %_2783 = icmp slt i64 %_2781, %_2782
  br i1 %_2783, label %_2785, label %_2786
_2785:
  %_2787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2695
  %_2788 = load i64, i64* %_2692
  %_2789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2787, i32 0, i32 1, i64 %_2788
  %_2790 = load i64, i64* %_2789
  %_2792 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2688
  %_2793 = load i64, i64* %_2692
  %_2791 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2792, i32 0, i32 1, i64 %_2793
  store i64 %_2790, i64* %_2791
  %_2794 = load i64, i64* %_2692
  %_2795 = add i64 %_2794, 1
  store i64 %_2795, i64* %_2692
  br label %_2784
_2786:
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
