; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_2948 = alloca i64
  store i64 %n, i64* %_2948
  %_2949 = alloca { i64, [0 x i1] }*
  %_2953 = alloca i64
  %_2969 = alloca i64
  %_2983 = alloca i64
  %_3000 = alloca i64
  %_3001 = alloca i64
  %_2950 = load i64, i64* %_2948
  %_raw_array2951 = call i64* @oat_alloc_array(i64 %_2950)
  %_array2952 = bitcast i64* %_raw_array2951 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array2952, { i64, [0 x i1] }** %_2949
  store i64 0, i64* %_2953
  br label %_2957
_2957:
  %_2954 = load i64, i64* %_2953
  %_2955 = load i64, i64* %_2948
  %_2956 = icmp slt i64 %_2954, %_2955
  br i1 %_2956, label %_2958, label %_2959
_2958:
  %_2961 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2949
  %_2962 = load i64, i64* %_2953
  %_2960 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_2961, i32 0, i32 1, i64 %_2962
  store i1 1, i1* %_2960
  %_2963 = load i64, i64* %_2953
  %_2964 = add i64 %_2963, 1
  store i64 %_2964, i64* %_2953
  br label %_2957
_2959:
  %_2966 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2949
  %_2965 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_2966, i32 0, i32 1, i32 0
  store i1 0, i1* %_2965
  %_2968 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2949
  %_2967 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_2968, i32 0, i32 1, i32 1
  store i1 0, i1* %_2967
  store i64 0, i64* %_2969
  br label %_2973
_2973:
  %_2970 = load i64, i64* %_2969
  %_2971 = load i64, i64* %_2948
  %_2972 = icmp slt i64 %_2970, %_2971
  br i1 %_2972, label %_2974, label %_2975
_2974:
  %_2976 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2949
  %_2977 = load i64, i64* %_2969
  %_2978 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_2976, i32 0, i32 1, i64 %_2977
  %_2979 = load i1, i1* %_2978
  br i1 %_2979, label %_2980, label %_2981
_2980:
  %_2984 = load i64, i64* %_2969
  %_2985 = mul i64 %_2984, 2
  store i64 %_2985, i64* %_2983
  br label %_2989
_2989:
  %_2986 = load i64, i64* %_2983
  %_2987 = load i64, i64* %_2948
  %_2988 = icmp slt i64 %_2986, %_2987
  br i1 %_2988, label %_2990, label %_2991
_2990:
  %_2993 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2949
  %_2994 = load i64, i64* %_2983
  %_2992 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_2993, i32 0, i32 1, i64 %_2994
  store i1 0, i1* %_2992
  %_2995 = load i64, i64* %_2983
  %_2996 = load i64, i64* %_2969
  %_2997 = add i64 %_2995, %_2996
  store i64 %_2997, i64* %_2983
  br label %_2989
_2991:
  br label %_2982
_2981:
  br label %_2982
_2982:
  %_2998 = load i64, i64* %_2969
  %_2999 = add i64 %_2998, 1
  store i64 %_2999, i64* %_2969
  br label %_2973
_2975:
  store i64 0, i64* %_3000
  store i64 0, i64* %_3001
  br label %_3005
_3005:
  %_3002 = load i64, i64* %_3001
  %_3003 = load i64, i64* %_2948
  %_3004 = icmp slt i64 %_3002, %_3003
  br i1 %_3004, label %_3006, label %_3007
_3006:
  %_3008 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_2949
  %_3009 = load i64, i64* %_3001
  %_3010 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3008, i32 0, i32 1, i64 %_3009
  %_3011 = load i1, i1* %_3010
  br i1 %_3011, label %_3012, label %_3013
_3012:
  %_3015 = load i64, i64* %_3000
  %_3016 = add i64 %_3015, 1
  store i64 %_3016, i64* %_3000
  br label %_3014
_3013:
  br label %_3014
_3014:
  %_3017 = load i64, i64* %_3001
  %_3018 = add i64 %_3017, 1
  store i64 %_3018, i64* %_3001
  br label %_3005
_3007:
  %_3019 = load i64, i64* %_3000
  ret i64 %_3019
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2943 = alloca i64
  store i64 %argc, i64* %_2943
  %_2944 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2944
  %_2945 = alloca i64
  store i64 100, i64* %_2945
  %_2947 = load i64, i64* %_2945
  %_2946 = call i64 @sieve(i64 %_2947)
  ret i64 %_2946
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
