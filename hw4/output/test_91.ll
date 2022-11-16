; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_2974 = global [2 x i8] c" \00"
@_2979 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3100 = alloca i64
  store i64 %argc, i64* %_3100
  %_3101 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3101
  %_3102 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3117 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3141 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3103 = call i64* @oat_alloc_array(i64 2)
  %_array3104 = bitcast i64* %_raw_array3103 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3111 = call i64* @oat_alloc_array(i64 3)
  %_array3112 = bitcast i64* %_raw_array3111 to { i64, [0 x i64] }*
  %_3115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3112, i32 0, i32 1, i32 2
  store i64 1, i64* %_3115
  %_3114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3112, i32 0, i32 1, i32 1
  store i64 0, i64* %_3114
  %_3113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3112, i32 0, i32 1, i32 0
  store i64 2, i64* %_3113
  %_3116 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3104, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3112, { i64, [0 x i64] }** %_3116
  %_raw_array3105 = call i64* @oat_alloc_array(i64 3)
  %_array3106 = bitcast i64* %_raw_array3105 to { i64, [0 x i64] }*
  %_3109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3106, i32 0, i32 1, i32 2
  store i64 4, i64* %_3109
  %_3108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3106, i32 0, i32 1, i32 1
  store i64 3, i64* %_3108
  %_3107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3106, i32 0, i32 1, i32 0
  store i64 1, i64* %_3107
  %_3110 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3104, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3106, { i64, [0 x i64] }** %_3110
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3104, { i64, [0 x { i64, [0 x i64] }*] }** %_3102
  %_raw_array3118 = call i64* @oat_alloc_array(i64 3)
  %_array3119 = bitcast i64* %_raw_array3118 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3134 = call i64* @oat_alloc_array(i64 4)
  %_array3135 = bitcast i64* %_raw_array3134 to { i64, [0 x i64] }*
  %_3139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3135, i32 0, i32 1, i32 3
  store i64 4, i64* %_3139
  %_3138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3135, i32 0, i32 1, i32 2
  store i64 1, i64* %_3138
  %_3137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3135, i32 0, i32 1, i32 1
  store i64 2, i64* %_3137
  %_3136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3135, i32 0, i32 1, i32 0
  store i64 3, i64* %_3136
  %_3140 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3119, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3135, { i64, [0 x i64] }** %_3140
  %_raw_array3127 = call i64* @oat_alloc_array(i64 4)
  %_array3128 = bitcast i64* %_raw_array3127 to { i64, [0 x i64] }*
  %_3132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 3
  store i64 2, i64* %_3132
  %_3131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 2
  store i64 2, i64* %_3131
  %_3130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 1
  store i64 2, i64* %_3130
  %_3129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 0
  store i64 2, i64* %_3129
  %_3133 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3119, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3128, { i64, [0 x i64] }** %_3133
  %_raw_array3120 = call i64* @oat_alloc_array(i64 4)
  %_array3121 = bitcast i64* %_raw_array3120 to { i64, [0 x i64] }*
  %_3125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3121, i32 0, i32 1, i32 3
  store i64 1, i64* %_3125
  %_3124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3121, i32 0, i32 1, i32 2
  store i64 3, i64* %_3124
  %_3123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3121, i32 0, i32 1, i32 1
  store i64 2, i64* %_3123
  %_3122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3121, i32 0, i32 1, i32 0
  store i64 1, i64* %_3122
  %_3126 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3119, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3121, { i64, [0 x i64] }** %_3126
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3119, { i64, [0 x { i64, [0 x i64] }*] }** %_3117
  %_raw_array3142 = call i64* @oat_alloc_array(i64 2)
  %_array3143 = bitcast i64* %_raw_array3142 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3151 = call i64* @oat_alloc_array(i64 4)
  %_array3152 = bitcast i64* %_raw_array3151 to { i64, [0 x i64] }*
  %_3156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3152, i32 0, i32 1, i32 3
  store i64 0, i64* %_3156
  %_3155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3152, i32 0, i32 1, i32 2
  store i64 0, i64* %_3155
  %_3154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3152, i32 0, i32 1, i32 1
  store i64 0, i64* %_3154
  %_3153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3152, i32 0, i32 1, i32 0
  store i64 0, i64* %_3153
  %_3157 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3143, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3152, { i64, [0 x i64] }** %_3157
  %_raw_array3144 = call i64* @oat_alloc_array(i64 4)
  %_array3145 = bitcast i64* %_raw_array3144 to { i64, [0 x i64] }*
  %_3149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3145, i32 0, i32 1, i32 3
  store i64 0, i64* %_3149
  %_3148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3145, i32 0, i32 1, i32 2
  store i64 0, i64* %_3148
  %_3147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3145, i32 0, i32 1, i32 1
  store i64 0, i64* %_3147
  %_3146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3145, i32 0, i32 1, i32 0
  store i64 0, i64* %_3146
  %_3150 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3143, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3145, { i64, [0 x i64] }** %_3150
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3143, { i64, [0 x { i64, [0 x i64] }*] }** %_3141
  %_3159 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3102
  %_3160 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3117
  %_3161 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3141
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_3159, { i64, [0 x { i64, [0 x i64] }*] }* %_3160, { i64, [0 x { i64, [0 x i64] }*] }* %_3161)
  %_3163 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3141
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_3163, i64 2)
  %_3165 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3102
  %_3166 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3117
  %_3167 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3141
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_3165, { i64, [0 x { i64, [0 x i64] }*] }* %_3166, { i64, [0 x { i64, [0 x i64] }*] }* %_3167)
  %_3169 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3141
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_3169, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_3044 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_3044
  %_3045 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_3045
  %_3046 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_3046
  %_3047 = alloca i64
  %_3053 = alloca i64
  %_3059 = alloca i64
  store i64 0, i64* %_3047
  br label %_3050
_3050:
  %_3048 = load i64, i64* %_3047
  %_3049 = icmp slt i64 %_3048, 2
  br i1 %_3049, label %_3051, label %_3052
_3051:
  store i64 0, i64* %_3053
  br label %_3056
_3056:
  %_3054 = load i64, i64* %_3053
  %_3055 = icmp slt i64 %_3054, 4
  br i1 %_3055, label %_3057, label %_3058
_3057:
  store i64 0, i64* %_3059
  br label %_3062
_3062:
  %_3060 = load i64, i64* %_3059
  %_3061 = icmp slt i64 %_3060, 3
  br i1 %_3061, label %_3063, label %_3064
_3063:
  %_3065 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3046
  %_3066 = load i64, i64* %_3047
  %_3067 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3065, i32 0, i32 1, i64 %_3066
  %_3068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3067
  %_3069 = load i64, i64* %_3053
  %_3070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3068, i32 0, i32 1, i64 %_3069
  %_3071 = load i64, i64* %_3070
  %_3072 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3044
  %_3073 = load i64, i64* %_3047
  %_3074 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3072, i32 0, i32 1, i64 %_3073
  %_3075 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3074
  %_3076 = load i64, i64* %_3059
  %_3077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3075, i32 0, i32 1, i64 %_3076
  %_3078 = load i64, i64* %_3077
  %_3079 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3045
  %_3080 = load i64, i64* %_3059
  %_3081 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3079, i32 0, i32 1, i64 %_3080
  %_3082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3081
  %_3083 = load i64, i64* %_3053
  %_3084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3082, i32 0, i32 1, i64 %_3083
  %_3085 = load i64, i64* %_3084
  %_3086 = mul i64 %_3078, %_3085
  %_3087 = add i64 %_3071, %_3086
  %_3089 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3046
  %_3090 = load i64, i64* %_3047
  %_3091 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3089, i32 0, i32 1, i64 %_3090
  %_3092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3091
  %_3093 = load i64, i64* %_3053
  %_3088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3092, i32 0, i32 1, i64 %_3093
  store i64 %_3087, i64* %_3088
  %_3094 = load i64, i64* %_3059
  %_3095 = add i64 %_3094, 1
  store i64 %_3095, i64* %_3059
  br label %_3062
_3064:
  %_3096 = load i64, i64* %_3053
  %_3097 = add i64 %_3096, 1
  store i64 %_3097, i64* %_3053
  br label %_3056
_3058:
  %_3098 = load i64, i64* %_3047
  %_3099 = add i64 %_3098, 1
  store i64 %_3099, i64* %_3047
  br label %_3050
_3052:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_3014 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_3014
  %_3015 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_3015
  %_3016 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_3016
  %_3017 = alloca i64
  %_3023 = alloca i64
  store i64 0, i64* %_3017
  br label %_3020
_3020:
  %_3018 = load i64, i64* %_3017
  %_3019 = icmp slt i64 %_3018, 2
  br i1 %_3019, label %_3021, label %_3022
_3021:
  store i64 0, i64* %_3023
  br label %_3026
_3026:
  %_3024 = load i64, i64* %_3023
  %_3025 = icmp slt i64 %_3024, 4
  br i1 %_3025, label %_3027, label %_3028
_3027:
  %_3030 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3014
  %_3031 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3015
  %_3032 = load i64, i64* %_3017
  %_3033 = load i64, i64* %_3023
  %_3029 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_3030, { i64, [0 x { i64, [0 x i64] }*] }* %_3031, i64 %_3032, i64 %_3033)
  %_3035 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3016
  %_3036 = load i64, i64* %_3017
  %_3037 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3035, i32 0, i32 1, i64 %_3036
  %_3038 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3037
  %_3039 = load i64, i64* %_3023
  %_3034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3038, i32 0, i32 1, i64 %_3039
  store i64 %_3029, i64* %_3034
  %_3040 = load i64, i64* %_3023
  %_3041 = add i64 %_3040, 1
  store i64 %_3041, i64* %_3023
  br label %_3026
_3028:
  %_3042 = load i64, i64* %_3017
  %_3043 = add i64 %_3042, 1
  store i64 %_3043, i64* %_3017
  br label %_3020
_3022:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_2983 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_2983
  %_2984 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_2984
  %_2985 = alloca i64
  store i64 %row, i64* %_2985
  %_2986 = alloca i64
  store i64 %col, i64* %_2986
  %_2987 = alloca i64
  %_2988 = alloca i64
  store i64 0, i64* %_2987
  store i64 0, i64* %_2988
  br label %_2991
_2991:
  %_2989 = load i64, i64* %_2988
  %_2990 = icmp slt i64 %_2989, 3
  br i1 %_2990, label %_2992, label %_2993
_2992:
  %_2994 = load i64, i64* %_2987
  %_2995 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2983
  %_2996 = load i64, i64* %_2985
  %_2997 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2995, i32 0, i32 1, i64 %_2996
  %_2998 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2997
  %_2999 = load i64, i64* %_2988
  %_3000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2998, i32 0, i32 1, i64 %_2999
  %_3001 = load i64, i64* %_3000
  %_3002 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2984
  %_3003 = load i64, i64* %_2988
  %_3004 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3002, i32 0, i32 1, i64 %_3003
  %_3005 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3004
  %_3006 = load i64, i64* %_2986
  %_3007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3005, i32 0, i32 1, i64 %_3006
  %_3008 = load i64, i64* %_3007
  %_3009 = mul i64 %_3001, %_3008
  %_3010 = add i64 %_2994, %_3009
  store i64 %_3010, i64* %_2987
  %_3011 = load i64, i64* %_2988
  %_3012 = add i64 %_3011, 1
  store i64 %_3012, i64* %_2988
  br label %_2991
_2993:
  %_3013 = load i64, i64* %_2987
  ret i64 %_3013
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_2950 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_2950
  %_2951 = alloca i64
  store i64 %n, i64* %_2951
  %_2952 = alloca i64
  %_2959 = alloca i64
  store i64 0, i64* %_2952
  br label %_2956
_2956:
  %_2953 = load i64, i64* %_2952
  %_2954 = load i64, i64* %_2951
  %_2955 = icmp slt i64 %_2953, %_2954
  br i1 %_2955, label %_2957, label %_2958
_2957:
  store i64 0, i64* %_2959
  br label %_2962
_2962:
  %_2960 = load i64, i64* %_2959
  %_2961 = icmp slt i64 %_2960, 4
  br i1 %_2961, label %_2963, label %_2964
_2963:
  %_2966 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_2950
  %_2967 = load i64, i64* %_2952
  %_2968 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_2966, i32 0, i32 1, i64 %_2967
  %_2969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2968
  %_2970 = load i64, i64* %_2959
  %_2971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2969, i32 0, i32 1, i64 %_2970
  %_2972 = load i64, i64* %_2971
  call void @print_int(i64 %_2972)
  %_2975 = getelementptr [2 x i8], [2 x i8]* @_2974, i32 0, i32 0
  call void @print_string(i8* %_2975)
  %_2976 = load i64, i64* %_2959
  %_2977 = add i64 %_2976, 1
  store i64 %_2977, i64* %_2959
  br label %_2962
_2964:
  %_2980 = getelementptr [2 x i8], [2 x i8]* @_2979, i32 0, i32 0
  call void @print_string(i8* %_2980)
  %_2981 = load i64, i64* %_2952
  %_2982 = add i64 %_2981, 1
  store i64 %_2982, i64* %_2952
  br label %_2956
_2958:
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
