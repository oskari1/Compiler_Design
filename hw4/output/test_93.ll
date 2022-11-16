; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_2896 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_2933 = alloca i64
  store i64 %x, i64* %_2933
  %_2934 = alloca i64
  store i64 %y, i64* %_2934
  %_2935 = load i64, i64* %_2933
  %_2936 = load i64, i64* %_2934
  %_2937 = and i64 %_2935, %_2936
  %_2938 = xor i64 9223372036854775807, %_2937
  %_2939 = load i64, i64* %_2933
  %_2940 = load i64, i64* %_2934
  %_2941 = or i64 %_2939, %_2940
  %_2942 = and i64 %_2938, %_2941
  ret i64 %_2942
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_2901 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_2901
  %_2902 = alloca i64
  %_2906 = alloca i64
  %_2903 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2901
  %_2904 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2903, i32 0, i32 1, i32 0
  %_2905 = load i64, i64* %_2904
  store i64 %_2905, i64* %_2902
  %_2907 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2901
  %_2908 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2907, i32 0, i32 1, i32 1
  %_2909 = load i64, i64* %_2908
  store i64 %_2909, i64* %_2906
  %_2910 = load i64, i64* %_2906
  %_2912 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2901
  %_2911 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2912, i32 0, i32 1, i32 0
  store i64 %_2910, i64* %_2911
  %_2914 = load i64, i64* %_2902
  %_2915 = load i64, i64* %_2902
  %_2916 = shl i64 %_2915, 23
  %_2913 = call i64 @xor(i64 %_2914, i64 %_2916)
  store i64 %_2913, i64* %_2902
  %_2918 = load i64, i64* %_2902
  %_2919 = load i64, i64* %_2902
  %_2920 = lshr i64 %_2919, 17
  %_2917 = call i64 @xor(i64 %_2918, i64 %_2920)
  store i64 %_2917, i64* %_2902
  %_2922 = load i64, i64* %_2902
  %_2924 = load i64, i64* %_2906
  %_2925 = load i64, i64* %_2906
  %_2926 = lshr i64 %_2925, 26
  %_2923 = call i64 @xor(i64 %_2924, i64 %_2926)
  %_2921 = call i64 @xor(i64 %_2922, i64 %_2923)
  store i64 %_2921, i64* %_2902
  %_2927 = load i64, i64* %_2902
  %_2929 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2901
  %_2928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2929, i32 0, i32 1, i32 1
  store i64 %_2927, i64* %_2928
  %_2930 = load i64, i64* %_2902
  %_2931 = load i64, i64* %_2906
  %_2932 = add i64 %_2930, %_2931
  ret i64 %_2932
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2873 = alloca i64
  store i64 %argc, i64* %_2873
  %_2874 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2874
  %_2875 = alloca { i64, [0 x i64] }*
  %_2878 = alloca i64
  %_raw_array2876 = call i64* @oat_alloc_array(i64 2)
  %_array2877 = bitcast i64* %_raw_array2876 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2877, { i64, [0 x i64] }** %_2875
  store i64 0, i64* %_2878
  br label %_2881
_2881:
  %_2879 = load i64, i64* %_2878
  %_2880 = icmp slt i64 %_2879, 2
  br i1 %_2880, label %_2882, label %_2883
_2882:
  %_2884 = load i64, i64* %_2878
  %_2885 = add i64 %_2884, 1
  %_2886 = mul i64 100, %_2885
  %_2888 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2875
  %_2889 = load i64, i64* %_2878
  %_2887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2888, i32 0, i32 1, i64 %_2889
  store i64 %_2886, i64* %_2887
  %_2890 = load i64, i64* %_2878
  %_2891 = add i64 %_2890, 1
  store i64 %_2891, i64* %_2878
  br label %_2881
_2883:
  %_2894 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2875
  %_2893 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_2894)
  call void @print_int(i64 %_2893)
  %_2897 = getelementptr [2 x i8], [2 x i8]* @_2896, i32 0, i32 0
  call void @print_string(i8* %_2897)
  %_2900 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2875
  %_2899 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_2900)
  call void @print_int(i64 %_2899)
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
