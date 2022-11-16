; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_3030 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3156 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_3156
  %_3157 = alloca i64
  store i64 %len, i64* %_3157
  %_3158 = alloca i64
  %_3162 = alloca i64
  %_3159 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3156
  %_3160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3159, i32 0, i32 1, i32 0
  %_3161 = load i64, i64* %_3160
  store i64 %_3161, i64* %_3158
  store i64 0, i64* %_3162
  br label %_3166
_3166:
  %_3163 = load i64, i64* %_3162
  %_3164 = load i64, i64* %_3157
  %_3165 = icmp slt i64 %_3163, %_3164
  br i1 %_3165, label %_3167, label %_3168
_3167:
  %_3169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3156
  %_3170 = load i64, i64* %_3162
  %_3171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3169, i32 0, i32 1, i64 %_3170
  %_3172 = load i64, i64* %_3171
  %_3173 = load i64, i64* %_3158
  %_3174 = icmp slt i64 %_3172, %_3173
  br i1 %_3174, label %_3175, label %_3176
_3175:
  %_3178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3156
  %_3179 = load i64, i64* %_3162
  %_3180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3178, i32 0, i32 1, i64 %_3179
  %_3181 = load i64, i64* %_3180
  store i64 %_3181, i64* %_3158
  br label %_3177
_3176:
  br label %_3177
_3177:
  %_3182 = load i64, i64* %_3162
  %_3183 = add i64 %_3182, 1
  store i64 %_3183, i64* %_3162
  br label %_3166
_3168:
  %_3184 = load i64, i64* %_3158
  ret i64 %_3184
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3127 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_3127
  %_3128 = alloca i64
  store i64 %len, i64* %_3128
  %_3129 = alloca i64
  %_3133 = alloca i64
  %_3130 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3127
  %_3131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3130, i32 0, i32 1, i32 0
  %_3132 = load i64, i64* %_3131
  store i64 %_3132, i64* %_3129
  store i64 0, i64* %_3133
  br label %_3137
_3137:
  %_3134 = load i64, i64* %_3133
  %_3135 = load i64, i64* %_3128
  %_3136 = icmp slt i64 %_3134, %_3135
  br i1 %_3136, label %_3138, label %_3139
_3138:
  %_3140 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3127
  %_3141 = load i64, i64* %_3133
  %_3142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3140, i32 0, i32 1, i64 %_3141
  %_3143 = load i64, i64* %_3142
  %_3144 = load i64, i64* %_3129
  %_3145 = icmp sgt i64 %_3143, %_3144
  br i1 %_3145, label %_3146, label %_3147
_3146:
  %_3149 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3127
  %_3150 = load i64, i64* %_3133
  %_3151 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3149, i32 0, i32 1, i64 %_3150
  %_3152 = load i64, i64* %_3151
  store i64 %_3152, i64* %_3129
  br label %_3148
_3147:
  br label %_3148
_3148:
  %_3153 = load i64, i64* %_3133
  %_3154 = add i64 %_3153, 1
  store i64 %_3154, i64* %_3133
  br label %_3137
_3139:
  %_3155 = load i64, i64* %_3129
  ret i64 %_3155
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3039 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_3039
  %_3040 = alloca i64
  store i64 %len, i64* %_3040
  %_3041 = alloca i64
  %_3045 = alloca i64
  %_3049 = alloca { i64, [0 x i64] }*
  %_3056 = alloca i64
  %_3083 = alloca i64
  %_3085 = alloca i64
  %_3086 = alloca { i64, [0 x i64] }*
  %_3043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3039
  %_3044 = load i64, i64* %_3040
  %_3042 = call i64 @min({ i64, [0 x i64] }* %_3043, i64 %_3044)
  store i64 %_3042, i64* %_3041
  %_3047 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3039
  %_3048 = load i64, i64* %_3040
  %_3046 = call i64 @max({ i64, [0 x i64] }* %_3047, i64 %_3048)
  store i64 %_3046, i64* %_3045
  %_3050 = load i64, i64* %_3045
  %_3051 = load i64, i64* %_3041
  %_3052 = sub i64 %_3050, %_3051
  %_3053 = add i64 %_3052, 1
  %_raw_array3054 = call i64* @oat_alloc_array(i64 %_3053)
  %_array3055 = bitcast i64* %_raw_array3054 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3055, { i64, [0 x i64] }** %_3049
  store i64 0, i64* %_3056
  br label %_3060
_3060:
  %_3057 = load i64, i64* %_3056
  %_3058 = load i64, i64* %_3040
  %_3059 = icmp slt i64 %_3057, %_3058
  br i1 %_3059, label %_3061, label %_3062
_3061:
  %_3063 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3049
  %_3064 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3039
  %_3065 = load i64, i64* %_3056
  %_3066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3064, i32 0, i32 1, i64 %_3065
  %_3067 = load i64, i64* %_3066
  %_3068 = load i64, i64* %_3041
  %_3069 = sub i64 %_3067, %_3068
  %_3070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3063, i32 0, i32 1, i64 %_3069
  %_3071 = load i64, i64* %_3070
  %_3072 = add i64 %_3071, 1
  %_3074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3049
  %_3075 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3039
  %_3076 = load i64, i64* %_3056
  %_3077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3075, i32 0, i32 1, i64 %_3076
  %_3078 = load i64, i64* %_3077
  %_3079 = load i64, i64* %_3041
  %_3080 = sub i64 %_3078, %_3079
  %_3073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3074, i32 0, i32 1, i64 %_3080
  store i64 %_3072, i64* %_3073
  %_3081 = load i64, i64* %_3056
  %_3082 = add i64 %_3081, 1
  store i64 %_3082, i64* %_3056
  br label %_3060
_3062:
  %_3084 = load i64, i64* %_3041
  store i64 %_3084, i64* %_3083
  store i64 0, i64* %_3085
  %_3087 = load i64, i64* %_3040
  %_raw_array3088 = call i64* @oat_alloc_array(i64 %_3087)
  %_array3089 = bitcast i64* %_raw_array3088 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3089, { i64, [0 x i64] }** %_3086
  br label %_3093
_3093:
  %_3090 = load i64, i64* %_3083
  %_3091 = load i64, i64* %_3045
  %_3092 = icmp sle i64 %_3090, %_3091
  br i1 %_3092, label %_3094, label %_3095
_3094:
  %_3096 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3049
  %_3097 = load i64, i64* %_3083
  %_3098 = load i64, i64* %_3041
  %_3099 = sub i64 %_3097, %_3098
  %_3100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3096, i32 0, i32 1, i64 %_3099
  %_3101 = load i64, i64* %_3100
  %_3102 = icmp sgt i64 %_3101, 0
  br i1 %_3102, label %_3103, label %_3104
_3103:
  %_3106 = load i64, i64* %_3083
  %_3108 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3086
  %_3109 = load i64, i64* %_3085
  %_3107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3108, i32 0, i32 1, i64 %_3109
  store i64 %_3106, i64* %_3107
  %_3110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3049
  %_3111 = load i64, i64* %_3083
  %_3112 = load i64, i64* %_3041
  %_3113 = sub i64 %_3111, %_3112
  %_3114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3110, i32 0, i32 1, i64 %_3113
  %_3115 = load i64, i64* %_3114
  %_3116 = sub i64 %_3115, 1
  %_3118 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3049
  %_3119 = load i64, i64* %_3083
  %_3120 = load i64, i64* %_3041
  %_3121 = sub i64 %_3119, %_3120
  %_3117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3118, i32 0, i32 1, i64 %_3121
  store i64 %_3116, i64* %_3117
  %_3122 = load i64, i64* %_3085
  %_3123 = add i64 %_3122, 1
  store i64 %_3123, i64* %_3085
  br label %_3105
_3104:
  %_3124 = load i64, i64* %_3083
  %_3125 = add i64 %_3124, 1
  store i64 %_3125, i64* %_3083
  br label %_3105
_3105:
  br label %_3093
_3095:
  %_3126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3086
  ret { i64, [0 x i64] }* %_3126
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3020 = alloca i64
  store i64 %argc, i64* %_3020
  %_3021 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3021
  %_3022 = alloca { i64, [0 x i64] }*
  %_3025 = alloca i64
  %_3032 = alloca { i64, [0 x i64] }*
  %_raw_array3023 = call i64* @oat_alloc_array(i64 9)
  %_array3024 = bitcast i64* %_raw_array3023 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3024, { i64, [0 x i64] }** %_3022
  store i64 9, i64* %_3025
  %_3028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3022
  %_3027 = call i8* @string_of_array({ i64, [0 x i64] }* %_3028)
  call void @print_string(i8* %_3027)
  %_3031 = getelementptr [2 x i8], [2 x i8]* @_3030, i32 0, i32 0
  call void @print_string(i8* %_3031)
  %_3034 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3022
  %_3035 = load i64, i64* %_3025
  %_3033 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_3034, i64 %_3035)
  store { i64, [0 x i64] }* %_3033, { i64, [0 x i64] }** %_3032
  %_3038 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3032
  %_3037 = call i8* @string_of_array({ i64, [0 x i64] }* %_3038)
  call void @print_string(i8* %_3037)
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
