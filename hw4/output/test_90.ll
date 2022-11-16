; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_2915 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2915
  %_2916 = alloca i64
  store i64 %s, i64* %_2916
  %_2917 = alloca i64
  store i64 %b, i64* %_2917
  %_2918 = alloca i64
  %_2920 = alloca i64
  %_2925 = alloca i64
  %_2919 = load i64, i64* %_2916
  store i64 %_2919, i64* %_2918
  %_2921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2915
  %_2922 = load i64, i64* %_2916
  %_2923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2921, i32 0, i32 1, i64 %_2922
  %_2924 = load i64, i64* %_2923
  store i64 %_2924, i64* %_2920
  %_2926 = load i64, i64* %_2916
  store i64 %_2926, i64* %_2925
  br label %_2930
_2930:
  %_2927 = load i64, i64* %_2918
  %_2928 = load i64, i64* %_2917
  %_2929 = icmp slt i64 %_2927, %_2928
  br i1 %_2929, label %_2931, label %_2932
_2931:
  %_2933 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2915
  %_2934 = load i64, i64* %_2918
  %_2935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2933, i32 0, i32 1, i64 %_2934
  %_2936 = load i64, i64* %_2935
  %_2937 = load i64, i64* %_2920
  %_2938 = icmp slt i64 %_2936, %_2937
  br i1 %_2938, label %_2939, label %_2940
_2939:
  %_2942 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2915
  %_2943 = load i64, i64* %_2918
  %_2944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2942, i32 0, i32 1, i64 %_2943
  %_2945 = load i64, i64* %_2944
  store i64 %_2945, i64* %_2920
  %_2946 = load i64, i64* %_2918
  store i64 %_2946, i64* %_2925
  br label %_2941
_2940:
  br label %_2941
_2941:
  %_2947 = load i64, i64* %_2918
  %_2948 = add i64 %_2947, 1
  store i64 %_2948, i64* %_2918
  br label %_2930
_2932:
  %_2949 = load i64, i64* %_2925
  ret i64 %_2949
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_2883 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_2883
  %_2884 = alloca i64
  store i64 %s, i64* %_2884
  %_2885 = alloca i64
  %_2886 = alloca i64
  %_2887 = alloca i64
  store i64 0, i64* %_2885
  store i64 0, i64* %_2886
  store i64 0, i64* %_2887
  br label %_2891
_2891:
  %_2888 = load i64, i64* %_2887
  %_2889 = load i64, i64* %_2884
  %_2890 = icmp slt i64 %_2888, %_2889
  br i1 %_2890, label %_2892, label %_2893
_2892:
  %_2895 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2883
  %_2896 = load i64, i64* %_2887
  %_2897 = load i64, i64* %_2884
  %_2894 = call i64 @getminindex({ i64, [0 x i64] }* %_2895, i64 %_2896, i64 %_2897)
  store i64 %_2894, i64* %_2886
  %_2898 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2883
  %_2899 = load i64, i64* %_2887
  %_2900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2898, i32 0, i32 1, i64 %_2899
  %_2901 = load i64, i64* %_2900
  store i64 %_2901, i64* %_2885
  %_2902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2883
  %_2903 = load i64, i64* %_2886
  %_2904 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2902, i32 0, i32 1, i64 %_2903
  %_2905 = load i64, i64* %_2904
  %_2907 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2883
  %_2908 = load i64, i64* %_2887
  %_2906 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2907, i32 0, i32 1, i64 %_2908
  store i64 %_2905, i64* %_2906
  %_2909 = load i64, i64* %_2885
  %_2911 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2883
  %_2912 = load i64, i64* %_2886
  %_2910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2911, i32 0, i32 1, i64 %_2912
  store i64 %_2909, i64* %_2910
  %_2913 = load i64, i64* %_2887
  %_2914 = add i64 %_2913, 1
  store i64 %_2914, i64* %_2887
  br label %_2891
_2893:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2855 = alloca i64
  store i64 %argc, i64* %_2855
  %_2856 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2856
  %_2857 = alloca { i64, [0 x i64] }*
  %_2870 = alloca i64
  %_raw_array2858 = call i64* @oat_alloc_array(i64 8)
  %_array2859 = bitcast i64* %_raw_array2858 to { i64, [0 x i64] }*
  %_2867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2859, i32 0, i32 1, i32 7
  store i64 0, i64* %_2867
  %_2866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2859, i32 0, i32 1, i32 6
  store i64 2, i64* %_2866
  %_2865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2859, i32 0, i32 1, i32 5
  store i64 99, i64* %_2865
  %_2864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2859, i32 0, i32 1, i32 4
  store i64 30, i64* %_2864
  %_2863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2859, i32 0, i32 1, i32 3
  store i64 65, i64* %_2863
  %_2862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2859, i32 0, i32 1, i32 2
  store i64 1, i64* %_2862
  %_2861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2859, i32 0, i32 1, i32 1
  store i64 200, i64* %_2861
  %_2860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2859, i32 0, i32 1, i32 0
  store i64 5, i64* %_2860
  store { i64, [0 x i64] }* %_array2859, { i64, [0 x i64] }** %_2857
  %_2869 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2857
  call void @selectionsort({ i64, [0 x i64] }* %_2869, i64 8)
  store i64 0, i64* %_2870
  br label %_2873
_2873:
  %_2871 = load i64, i64* %_2870
  %_2872 = icmp slt i64 %_2871, 8
  br i1 %_2872, label %_2874, label %_2875
_2874:
  %_2877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2857
  %_2878 = load i64, i64* %_2870
  %_2879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2877, i32 0, i32 1, i64 %_2878
  %_2880 = load i64, i64* %_2879
  call void @print_int(i64 %_2880)
  %_2881 = load i64, i64* %_2870
  %_2882 = add i64 %_2881, 1
  store i64 %_2882, i64* %_2870
  br label %_2873
_2875:
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
