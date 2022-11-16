; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_2771 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_2818 = alloca i64
  store i64 %numerator, i64* %_2818
  %_2819 = alloca i64
  store i64 %denominator, i64* %_2819
  %_2830 = alloca i64
  %_2831 = alloca i64
  %_2820 = load i64, i64* %_2819
  %_2821 = icmp slt i64 %_2820, 0
  br i1 %_2821, label %_2822, label %_2823
_2822:
  %_2826 = load i64, i64* %_2818
  %_2827 = load i64, i64* %_2819
  %_2828 = sub i64 0, %_2827
  %_2825 = call i64 @euclid_division(i64 %_2826, i64 %_2828)
  %_2829 = sub i64 0, %_2825
  ret i64 %_2829
_2823:
  br label %_2824
_2824:
  store i64 0, i64* %_2830
  %_2832 = load i64, i64* %_2818
  store i64 %_2832, i64* %_2831
  %_2833 = load i64, i64* %_2818
  %_2834 = icmp slt i64 %_2833, 0
  br i1 %_2834, label %_2835, label %_2836
_2835:
  %_2838 = load i64, i64* %_2818
  %_2839 = sub i64 0, %_2838
  store i64 %_2839, i64* %_2831
  br label %_2843
_2843:
  %_2840 = load i64, i64* %_2831
  %_2841 = load i64, i64* %_2819
  %_2842 = icmp sge i64 %_2840, %_2841
  br i1 %_2842, label %_2844, label %_2845
_2844:
  %_2846 = load i64, i64* %_2830
  %_2847 = add i64 %_2846, 1
  store i64 %_2847, i64* %_2830
  %_2848 = load i64, i64* %_2831
  %_2849 = load i64, i64* %_2819
  %_2850 = sub i64 %_2848, %_2849
  store i64 %_2850, i64* %_2831
  br label %_2843
_2845:
  %_2851 = load i64, i64* %_2831
  %_2852 = icmp eq i64 %_2851, 0
  br i1 %_2852, label %_2853, label %_2854
_2853:
  %_2856 = load i64, i64* %_2830
  %_2857 = sub i64 0, %_2856
  ret i64 %_2857
_2854:
  %_2858 = load i64, i64* %_2830
  %_2859 = sub i64 0, %_2858
  %_2860 = sub i64 %_2859, 1
  ret i64 %_2860
_2855:
  br label %_2837
_2836:
  br label %_2837
_2837:
  br label %_2864
_2864:
  %_2861 = load i64, i64* %_2831
  %_2862 = load i64, i64* %_2819
  %_2863 = icmp sge i64 %_2861, %_2862
  br i1 %_2863, label %_2865, label %_2866
_2865:
  %_2867 = load i64, i64* %_2830
  %_2868 = add i64 %_2867, 1
  store i64 %_2868, i64* %_2830
  %_2869 = load i64, i64* %_2831
  %_2870 = load i64, i64* %_2819
  %_2871 = sub i64 %_2869, %_2870
  store i64 %_2871, i64* %_2831
  br label %_2864
_2866:
  %_2872 = load i64, i64* %_2830
  ret i64 %_2872
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_2773 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_2773
  %_2774 = alloca i64
  store i64 %key, i64* %_2774
  %_2775 = alloca i64
  store i64 %min, i64* %_2775
  %_2776 = alloca i64
  store i64 %max, i64* %_2776
  %_2783 = alloca i64
  %_2777 = load i64, i64* %_2776
  %_2778 = load i64, i64* %_2775
  %_2779 = icmp slt i64 %_2777, %_2778
  br i1 %_2779, label %_2780, label %_2781
_2780:
  ret i1 0
_2781:
  br label %_2782
_2782:
  %_2785 = load i64, i64* %_2776
  %_2786 = load i64, i64* %_2775
  %_2787 = add i64 %_2785, %_2786
  %_2784 = call i64 @euclid_division(i64 %_2787, i64 2)
  store i64 %_2784, i64* %_2783
  %_2788 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2773
  %_2789 = load i64, i64* %_2783
  %_2790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2788, i32 0, i32 1, i64 %_2789
  %_2791 = load i64, i64* %_2790
  %_2792 = load i64, i64* %_2774
  %_2793 = icmp sgt i64 %_2791, %_2792
  br i1 %_2793, label %_2794, label %_2795
_2794:
  %_2798 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2773
  %_2799 = load i64, i64* %_2774
  %_2800 = load i64, i64* %_2775
  %_2801 = load i64, i64* %_2783
  %_2802 = sub i64 %_2801, 1
  %_2797 = call i1 @binary_search({ i64, [0 x i64] }* %_2798, i64 %_2799, i64 %_2800, i64 %_2802)
  ret i1 %_2797
_2795:
  br label %_2796
_2796:
  %_2803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2773
  %_2804 = load i64, i64* %_2783
  %_2805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2803, i32 0, i32 1, i64 %_2804
  %_2806 = load i64, i64* %_2805
  %_2807 = load i64, i64* %_2774
  %_2808 = icmp slt i64 %_2806, %_2807
  br i1 %_2808, label %_2809, label %_2810
_2809:
  %_2813 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2773
  %_2814 = load i64, i64* %_2774
  %_2815 = load i64, i64* %_2783
  %_2816 = add i64 %_2815, 1
  %_2817 = load i64, i64* %_2776
  %_2812 = call i1 @binary_search({ i64, [0 x i64] }* %_2813, i64 %_2814, i64 %_2816, i64 %_2817)
  ret i1 %_2812
_2810:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2734 = alloca i64
  store i64 %argc, i64* %_2734
  %_2735 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2735
  %_2736 = alloca { i64, [0 x i64] }*
  %_2739 = alloca i64
  %_2753 = alloca i1
  %_2756 = alloca i1
  %_raw_array2737 = call i64* @oat_alloc_array(i64 100)
  %_array2738 = bitcast i64* %_raw_array2737 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2738, { i64, [0 x i64] }** %_2736
  store i64 0, i64* %_2739
  br label %_2742
_2742:
  %_2740 = load i64, i64* %_2739
  %_2741 = icmp slt i64 %_2740, 100
  br i1 %_2741, label %_2743, label %_2744
_2743:
  %_2745 = load i64, i64* %_2739
  %_2746 = mul i64 2, %_2745
  %_2747 = add i64 %_2746, 1
  %_2749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2736
  %_2750 = load i64, i64* %_2739
  %_2748 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2749, i32 0, i32 1, i64 %_2750
  store i64 %_2747, i64* %_2748
  %_2751 = load i64, i64* %_2739
  %_2752 = add i64 %_2751, 1
  store i64 %_2752, i64* %_2739
  br label %_2742
_2744:
  %_2755 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2736
  %_2754 = call i1 @binary_search({ i64, [0 x i64] }* %_2755, i64 80, i64 0, i64 99)
  store i1 %_2754, i1* %_2753
  %_2758 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2736
  %_2757 = call i1 @binary_search({ i64, [0 x i64] }* %_2758, i64 81, i64 0, i64 99)
  store i1 %_2757, i1* %_2756
  %_2759 = load i1, i1* %_2753
  %_2760 = load i1, i1* %_2756
  %_2761 = and i1 %_2759, %_2760
  %_2762 = and i1 1, %_2761
  %_2763 = load i1, i1* %_2753
  %_2764 = load i1, i1* %_2756
  %_2765 = or i1 %_2763, %_2764
  %_2766 = and i1 %_2762, %_2765
  br i1 %_2766, label %_2767, label %_2768
_2767:
  %_2772 = getelementptr [9 x i8], [9 x i8]* @_2771, i32 0, i32 0
  call void @print_string(i8* %_2772)
  br label %_2769
_2768:
  br label %_2769
_2769:
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
