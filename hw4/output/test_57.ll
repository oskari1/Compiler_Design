; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3075 = alloca i64
  store i64 %argc, i64* %_3075
  %_3076 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3076
  %_3077 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3101 = alloca i64
  %_3102 = alloca i64
  %_3108 = alloca i64
  %_raw_array3078 = call i64* @oat_alloc_array(i64 3)
  %_array3079 = bitcast i64* %_raw_array3078 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3094 = call i64* @oat_alloc_array(i64 4)
  %_array3095 = bitcast i64* %_raw_array3094 to { i64, [0 x i64] }*
  %_3099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 3
  store i64 11, i64* %_3099
  %_3098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 2
  store i64 10, i64* %_3098
  %_3097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 1
  store i64 9, i64* %_3097
  %_3096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 0
  store i64 8, i64* %_3096
  %_3100 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3079, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3095, { i64, [0 x i64] }** %_3100
  %_raw_array3087 = call i64* @oat_alloc_array(i64 4)
  %_array3088 = bitcast i64* %_raw_array3087 to { i64, [0 x i64] }*
  %_3092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3088, i32 0, i32 1, i32 3
  store i64 7, i64* %_3092
  %_3091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3088, i32 0, i32 1, i32 2
  store i64 6, i64* %_3091
  %_3090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3088, i32 0, i32 1, i32 1
  store i64 5, i64* %_3090
  %_3089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3088, i32 0, i32 1, i32 0
  store i64 4, i64* %_3089
  %_3093 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3079, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3088, { i64, [0 x i64] }** %_3093
  %_raw_array3080 = call i64* @oat_alloc_array(i64 4)
  %_array3081 = bitcast i64* %_raw_array3080 to { i64, [0 x i64] }*
  %_3085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3081, i32 0, i32 1, i32 3
  store i64 3, i64* %_3085
  %_3084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3081, i32 0, i32 1, i32 2
  store i64 2, i64* %_3084
  %_3083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3081, i32 0, i32 1, i32 1
  store i64 1, i64* %_3083
  %_3082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3081, i32 0, i32 1, i32 0
  store i64 0, i64* %_3082
  %_3086 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3079, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3081, { i64, [0 x i64] }** %_3086
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3079, { i64, [0 x { i64, [0 x i64] }*] }** %_3077
  store i64 0, i64* %_3101
  store i64 0, i64* %_3102
  br label %_3105
_3105:
  %_3103 = load i64, i64* %_3102
  %_3104 = icmp slt i64 %_3103, 3
  br i1 %_3104, label %_3106, label %_3107
_3106:
  store i64 0, i64* %_3108
  br label %_3111
_3111:
  %_3109 = load i64, i64* %_3108
  %_3110 = icmp slt i64 %_3109, 4
  br i1 %_3110, label %_3112, label %_3113
_3112:
  %_3114 = load i64, i64* %_3101
  %_3115 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3077
  %_3116 = load i64, i64* %_3102
  %_3117 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3115, i32 0, i32 1, i64 %_3116
  %_3118 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3117
  %_3119 = load i64, i64* %_3108
  %_3120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3118, i32 0, i32 1, i64 %_3119
  %_3121 = load i64, i64* %_3120
  %_3122 = add i64 %_3114, %_3121
  store i64 %_3122, i64* %_3101
  %_3123 = load i64, i64* %_3108
  %_3124 = add i64 %_3123, 1
  store i64 %_3124, i64* %_3108
  br label %_3111
_3113:
  %_3125 = load i64, i64* %_3102
  %_3126 = add i64 %_3125, 1
  store i64 %_3126, i64* %_3102
  br label %_3105
_3107:
  %_3127 = load i64, i64* %_3101
  ret i64 %_3127
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
