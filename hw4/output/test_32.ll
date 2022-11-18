; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2771 = alloca i64
  store i64 %argc, i64* %_2771
  %_2772 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2772
  %_2773 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_2792 = alloca i64
  %_2793 = alloca i64
  %_raw_array2774 = call i64* @oat_alloc_array(i64 4)
  %_array2775 = bitcast i64* %_raw_array2774 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array2788 = call i64* @oat_alloc_array(i64 1)
  %_array2789 = bitcast i64* %_raw_array2788 to { i64, [0 x i64] }*
  %_2790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2789, i32 0, i32 1, i32 0
  store i64 4, i64* %_2790
  %_2791 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2775, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array2789, { i64, [0 x i64] }** %_2791
  %_raw_array2784 = call i64* @oat_alloc_array(i64 1)
  %_array2785 = bitcast i64* %_raw_array2784 to { i64, [0 x i64] }*
  %_2786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2785, i32 0, i32 1, i32 0
  store i64 3, i64* %_2786
  %_2787 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2775, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array2785, { i64, [0 x i64] }** %_2787
  %_raw_array2780 = call i64* @oat_alloc_array(i64 1)
  %_array2781 = bitcast i64* %_raw_array2780 to { i64, [0 x i64] }*
  %_2782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2781, i32 0, i32 1, i32 0
  store i64 2, i64* %_2782
  %_2783 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2775, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array2781, { i64, [0 x i64] }** %_2783
  %_raw_array2776 = call i64* @oat_alloc_array(i64 1)
  %_array2777 = bitcast i64* %_raw_array2776 to { i64, [0 x i64] }*
  %_2778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2777, i32 0, i32 1, i32 0
  store i64 1, i64* %_2778
  %_2779 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2775, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array2777, { i64, [0 x i64] }** %_2779
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2775, { i64, [0 x { i64, [0 x i64] }*] }** %_2773
  store i64 0, i64* %_2792
  store i64 0, i64* %_2793
  br label %_2796
_2796:
  %_2794 = load i64, i64* %_2793
  %_2795 = icmp slt i64 %_2794, 4
  br i1 %_2795, label %_2797, label %_2798
_2797:
  %_2799 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2773
  %_2800 = load i64, i64* %_2793
  %_2801 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2799, i32 0, i32 1, i64 %_2800
  %_2802 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2801
  %_2803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2802, i32 0, i32 1, i32 0
  %_2804 = load i64, i64* %_2803
  %_2805 = load i64, i64* %_2792
  %_2806 = sub i64 %_2804, %_2805
  store i64 %_2806, i64* %_2792
  %_2807 = load i64, i64* %_2793
  %_2808 = add i64 %_2807, 1
  store i64 %_2808, i64* %_2793
  br label %_2796
_2798:
  %_2809 = xor i64 -1, 5
  %_2810 = and i64 5, %_2809
  %_2811 = or i64 %_2810, 0
  %_2812 = icmp ne i64 %_2811, 0
  br i1 %_2812, label %_2813, label %_2814
_2813:
  %_2816 = load i64, i64* %_2792
  ret i64 %_2816
_2814:
  %_2817 = load i64, i64* %_2792
  %_2818 = sub i64 0, %_2817
  ret i64 %_2818
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
