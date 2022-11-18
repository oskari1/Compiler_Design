; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3128 = alloca i64
  store i64 %argc, i64* %_3128
  %_3129 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3129
  %_3153 = alloca i64
  %_3154 = alloca i64
  %_3160 = alloca i64
  %_raw_array3130 = call i64* @oat_alloc_array(i64 3)
  %_array3131 = bitcast i64* %_raw_array3130 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3146 = call i64* @oat_alloc_array(i64 4)
  %_array3147 = bitcast i64* %_raw_array3146 to { i64, [0 x i64] }*
  %_3151 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3147, i32 0, i32 1, i32 3
  store i64 11, i64* %_3151
  %_3150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3147, i32 0, i32 1, i32 2
  store i64 10, i64* %_3150
  %_3149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3147, i32 0, i32 1, i32 1
  store i64 9, i64* %_3149
  %_3148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3147, i32 0, i32 1, i32 0
  store i64 8, i64* %_3148
  %_3152 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3131, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3147, { i64, [0 x i64] }** %_3152
  %_raw_array3139 = call i64* @oat_alloc_array(i64 4)
  %_array3140 = bitcast i64* %_raw_array3139 to { i64, [0 x i64] }*
  %_3144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3140, i32 0, i32 1, i32 3
  store i64 7, i64* %_3144
  %_3143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3140, i32 0, i32 1, i32 2
  store i64 6, i64* %_3143
  %_3142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3140, i32 0, i32 1, i32 1
  store i64 5, i64* %_3142
  %_3141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3140, i32 0, i32 1, i32 0
  store i64 4, i64* %_3141
  %_3145 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3131, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3140, { i64, [0 x i64] }** %_3145
  %_raw_array3132 = call i64* @oat_alloc_array(i64 4)
  %_array3133 = bitcast i64* %_raw_array3132 to { i64, [0 x i64] }*
  %_3137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3133, i32 0, i32 1, i32 3
  store i64 3, i64* %_3137
  %_3136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3133, i32 0, i32 1, i32 2
  store i64 2, i64* %_3136
  %_3135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3133, i32 0, i32 1, i32 1
  store i64 1, i64* %_3135
  %_3134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3133, i32 0, i32 1, i32 0
  store i64 0, i64* %_3134
  %_3138 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3131, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3133, { i64, [0 x i64] }** %_3138
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3131, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_3153
  store i64 0, i64* %_3154
  br label %_3157
_3157:
  %_3155 = load i64, i64* %_3154
  %_3156 = icmp slt i64 %_3155, 3
  br i1 %_3156, label %_3158, label %_3159
_3158:
  store i64 0, i64* %_3160
  br label %_3163
_3163:
  %_3161 = load i64, i64* %_3160
  %_3162 = icmp slt i64 %_3161, 4
  br i1 %_3162, label %_3164, label %_3165
_3164:
  %_3166 = load i64, i64* %_3153
  %_3167 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_3168 = load i64, i64* %_3154
  %_3169 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3167, i32 0, i32 1, i64 %_3168
  %_3170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3169
  %_3171 = load i64, i64* %_3160
  %_3172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3170, i32 0, i32 1, i64 %_3171
  %_3173 = load i64, i64* %_3172
  %_3174 = add i64 %_3166, %_3173
  store i64 %_3174, i64* %_3153
  %_3175 = load i64, i64* %_3160
  %_3176 = add i64 %_3175, 1
  store i64 %_3176, i64* %_3160
  br label %_3163
_3165:
  %_3177 = load i64, i64* %_3154
  %_3178 = add i64 %_3177, 1
  store i64 %_3178, i64* %_3154
  br label %_3157
_3159:
  %_3179 = load i64, i64* %_3153
  ret i64 %_3179
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
