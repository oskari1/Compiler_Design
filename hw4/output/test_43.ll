; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_2911 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_2911
  %_2912 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_2912
  %_2913 = alloca i1
  store i1 %b, i1* %_2913
  %_2914 = load i1, i1* %_2913
  br i1 %_2914, label %_2915, label %_2916
_2915:
  %_2918 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2911
  ret { i64, [0 x i64] }* %_2918
_2916:
  %_2919 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2912
  ret { i64, [0 x i64] }* %_2919
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2871 = alloca i64
  store i64 %argc, i64* %_2871
  %_2872 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2872
  %_2873 = alloca { i64, [0 x i64] }*
  %_2876 = alloca i64
  %_2888 = alloca { i64, [0 x i64] }*
  %_2891 = alloca i64
  %_raw_array2874 = call i64* @oat_alloc_array(i64 3)
  %_array2875 = bitcast i64* %_raw_array2874 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2875, { i64, [0 x i64] }** %_2873
  store i64 0, i64* %_2876
  br label %_2879
_2879:
  %_2877 = load i64, i64* %_2876
  %_2878 = icmp slt i64 %_2877, 3
  br i1 %_2878, label %_2880, label %_2881
_2880:
  %_2882 = load i64, i64* %_2876
  %_2884 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2873
  %_2885 = load i64, i64* %_2876
  %_2883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2884, i32 0, i32 1, i64 %_2885
  store i64 %_2882, i64* %_2883
  %_2886 = load i64, i64* %_2876
  %_2887 = add i64 %_2886, 1
  store i64 %_2887, i64* %_2876
  br label %_2879
_2881:
  %_raw_array2889 = call i64* @oat_alloc_array(i64 3)
  %_array2890 = bitcast i64* %_raw_array2889 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2890, { i64, [0 x i64] }** %_2888
  store i64 0, i64* %_2891
  br label %_2894
_2894:
  %_2892 = load i64, i64* %_2891
  %_2893 = icmp slt i64 %_2892, 3
  br i1 %_2893, label %_2895, label %_2896
_2895:
  %_2897 = load i64, i64* %_2891
  %_2898 = add i64 %_2897, 3
  %_2900 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2888
  %_2901 = load i64, i64* %_2891
  %_2899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2900, i32 0, i32 1, i64 %_2901
  store i64 %_2898, i64* %_2899
  %_2902 = load i64, i64* %_2891
  %_2903 = add i64 %_2902, 1
  store i64 %_2903, i64* %_2891
  br label %_2894
_2896:
  %_2906 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2873
  %_2907 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2888
  %_2905 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_2906, { i64, [0 x i64] }* %_2907, i1 1)
  %_2904 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2905, i32 0, i32 1, i32 0
  store i64 17, i64* %_2904
  %_2908 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2873
  %_2909 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2908, i32 0, i32 1, i32 0
  %_2910 = load i64, i64* %_2909
  ret i64 %_2910
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
