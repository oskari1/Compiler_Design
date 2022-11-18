; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_3207 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_3254 = alloca i64
  store i64 %numerator, i64* %_3254
  %_3255 = alloca i64
  store i64 %denominator, i64* %_3255
  %_3266 = alloca i64
  %_3267 = alloca i64
  %_3256 = load i64, i64* %_3255
  %_3257 = icmp slt i64 %_3256, 0
  br i1 %_3257, label %_3258, label %_3259
_3258:
  %_3262 = load i64, i64* %_3254
  %_3263 = load i64, i64* %_3255
  %_3264 = sub i64 0, %_3263
  %_3261 = call i64 @euclid_division(i64 %_3262, i64 %_3264)
  %_3265 = sub i64 0, %_3261
  ret i64 %_3265
_3259:
  br label %_3260
_3260:
  store i64 0, i64* %_3266
  %_3268 = load i64, i64* %_3254
  store i64 %_3268, i64* %_3267
  %_3269 = load i64, i64* %_3254
  %_3270 = icmp slt i64 %_3269, 0
  br i1 %_3270, label %_3271, label %_3272
_3271:
  %_3274 = load i64, i64* %_3254
  %_3275 = sub i64 0, %_3274
  store i64 %_3275, i64* %_3267
  br label %_3279
_3279:
  %_3276 = load i64, i64* %_3267
  %_3277 = load i64, i64* %_3255
  %_3278 = icmp sge i64 %_3276, %_3277
  br i1 %_3278, label %_3280, label %_3281
_3280:
  %_3282 = load i64, i64* %_3266
  %_3283 = add i64 %_3282, 1
  store i64 %_3283, i64* %_3266
  %_3284 = load i64, i64* %_3267
  %_3285 = load i64, i64* %_3255
  %_3286 = sub i64 %_3284, %_3285
  store i64 %_3286, i64* %_3267
  br label %_3279
_3281:
  %_3287 = load i64, i64* %_3267
  %_3288 = icmp eq i64 %_3287, 0
  br i1 %_3288, label %_3289, label %_3290
_3289:
  %_3292 = load i64, i64* %_3266
  %_3293 = sub i64 0, %_3292
  ret i64 %_3293
_3290:
  %_3294 = load i64, i64* %_3266
  %_3295 = sub i64 0, %_3294
  %_3296 = sub i64 %_3295, 1
  ret i64 %_3296
_3272:
  br label %_3273
_3273:
  br label %_3300
_3300:
  %_3297 = load i64, i64* %_3267
  %_3298 = load i64, i64* %_3255
  %_3299 = icmp sge i64 %_3297, %_3298
  br i1 %_3299, label %_3301, label %_3302
_3301:
  %_3303 = load i64, i64* %_3266
  %_3304 = add i64 %_3303, 1
  store i64 %_3304, i64* %_3266
  %_3305 = load i64, i64* %_3267
  %_3306 = load i64, i64* %_3255
  %_3307 = sub i64 %_3305, %_3306
  store i64 %_3307, i64* %_3267
  br label %_3300
_3302:
  %_3308 = load i64, i64* %_3266
  ret i64 %_3308
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_3209 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_3209
  %_3210 = alloca i64
  store i64 %key, i64* %_3210
  %_3211 = alloca i64
  store i64 %min, i64* %_3211
  %_3212 = alloca i64
  store i64 %max, i64* %_3212
  %_3219 = alloca i64
  %_3213 = load i64, i64* %_3212
  %_3214 = load i64, i64* %_3211
  %_3215 = icmp slt i64 %_3213, %_3214
  br i1 %_3215, label %_3216, label %_3217
_3216:
  ret i1 0
_3217:
  br label %_3218
_3218:
  %_3221 = load i64, i64* %_3212
  %_3222 = load i64, i64* %_3211
  %_3223 = add i64 %_3221, %_3222
  %_3220 = call i64 @euclid_division(i64 %_3223, i64 2)
  store i64 %_3220, i64* %_3219
  %_3224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3209
  %_3225 = load i64, i64* %_3219
  %_3226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3224, i32 0, i32 1, i64 %_3225
  %_3227 = load i64, i64* %_3226
  %_3228 = load i64, i64* %_3210
  %_3229 = icmp sgt i64 %_3227, %_3228
  br i1 %_3229, label %_3230, label %_3231
_3230:
  %_3234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3209
  %_3235 = load i64, i64* %_3210
  %_3236 = load i64, i64* %_3211
  %_3237 = load i64, i64* %_3219
  %_3238 = sub i64 %_3237, 1
  %_3233 = call i1 @binary_search({ i64, [0 x i64] }* %_3234, i64 %_3235, i64 %_3236, i64 %_3238)
  ret i1 %_3233
_3231:
  br label %_3232
_3232:
  %_3239 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3209
  %_3240 = load i64, i64* %_3219
  %_3241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3239, i32 0, i32 1, i64 %_3240
  %_3242 = load i64, i64* %_3241
  %_3243 = load i64, i64* %_3210
  %_3244 = icmp slt i64 %_3242, %_3243
  br i1 %_3244, label %_3245, label %_3246
_3245:
  %_3249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3209
  %_3250 = load i64, i64* %_3210
  %_3251 = load i64, i64* %_3219
  %_3252 = add i64 %_3251, 1
  %_3253 = load i64, i64* %_3212
  %_3248 = call i1 @binary_search({ i64, [0 x i64] }* %_3249, i64 %_3250, i64 %_3252, i64 %_3253)
  ret i1 %_3248
_3246:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3170 = alloca i64
  store i64 %argc, i64* %_3170
  %_3171 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3171
  %_3172 = alloca { i64, [0 x i64] }*
  %_3175 = alloca i64
  %_3189 = alloca i1
  %_3192 = alloca i1
  %_raw_array3173 = call i64* @oat_alloc_array(i64 100)
  %_array3174 = bitcast i64* %_raw_array3173 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3174, { i64, [0 x i64] }** %_3172
  store i64 0, i64* %_3175
  br label %_3178
_3178:
  %_3176 = load i64, i64* %_3175
  %_3177 = icmp slt i64 %_3176, 100
  br i1 %_3177, label %_3179, label %_3180
_3179:
  %_3181 = load i64, i64* %_3175
  %_3182 = mul i64 2, %_3181
  %_3183 = add i64 %_3182, 1
  %_3185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3172
  %_3186 = load i64, i64* %_3175
  %_3184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3185, i32 0, i32 1, i64 %_3186
  store i64 %_3183, i64* %_3184
  %_3187 = load i64, i64* %_3175
  %_3188 = add i64 %_3187, 1
  store i64 %_3188, i64* %_3175
  br label %_3178
_3180:
  %_3191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3172
  %_3190 = call i1 @binary_search({ i64, [0 x i64] }* %_3191, i64 80, i64 0, i64 99)
  store i1 %_3190, i1* %_3189
  %_3194 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3172
  %_3193 = call i1 @binary_search({ i64, [0 x i64] }* %_3194, i64 81, i64 0, i64 99)
  store i1 %_3193, i1* %_3192
  %_3195 = load i1, i1* %_3189
  %_3196 = load i1, i1* %_3192
  %_3197 = and i1 %_3195, %_3196
  %_3198 = icmp eq i1 %_3197, 0
  %_3199 = load i1, i1* %_3189
  %_3200 = load i1, i1* %_3192
  %_3201 = or i1 %_3199, %_3200
  %_3202 = and i1 %_3198, %_3201
  br i1 %_3202, label %_3203, label %_3204
_3203:
  %_3208 = getelementptr [9 x i8], [9 x i8]* @_3207, i32 0, i32 0
  call void @print_string(i8* %_3208)
  br label %_3205
_3204:
  br label %_3205
_3205:
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
