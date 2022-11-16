; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_3294 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_3294
  %_3295 = alloca i64
  store i64 %i, i64* %_3295
  %_3296 = alloca i64
  store i64 %len, i64* %_3296
  %_3297 = alloca i64
  %_3300 = alloca i64
  %_3303 = alloca i64
  %_3304 = alloca i64
  %_3298 = load i64, i64* %_3295
  %_3299 = mul i64 %_3298, 2
  store i64 %_3299, i64* %_3297
  %_3301 = load i64, i64* %_3295
  %_3302 = add i64 %_3301, 1
  store i64 %_3302, i64* %_3300
  store i64 0, i64* %_3303
  %_3305 = load i64, i64* %_3295
  store i64 %_3305, i64* %_3304
  %_3306 = load i64, i64* %_3297
  %_3307 = load i64, i64* %_3296
  %_3308 = icmp slt i64 %_3306, %_3307
  br i1 %_3308, label %_3309, label %_3310
_3309:
  %_3312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3294
  %_3313 = load i64, i64* %_3297
  %_3314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3312, i32 0, i32 1, i64 %_3313
  %_3315 = load i64, i64* %_3314
  %_3316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3294
  %_3317 = load i64, i64* %_3304
  %_3318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3316, i32 0, i32 1, i64 %_3317
  %_3319 = load i64, i64* %_3318
  %_3320 = icmp sgt i64 %_3315, %_3319
  br i1 %_3320, label %_3321, label %_3322
_3321:
  %_3324 = load i64, i64* %_3297
  store i64 %_3324, i64* %_3304
  br label %_3323
_3322:
  br label %_3323
_3323:
  br label %_3311
_3310:
  br label %_3311
_3311:
  %_3325 = load i64, i64* %_3300
  %_3326 = load i64, i64* %_3296
  %_3327 = icmp slt i64 %_3325, %_3326
  br i1 %_3327, label %_3328, label %_3329
_3328:
  %_3331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3294
  %_3332 = load i64, i64* %_3300
  %_3333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3331, i32 0, i32 1, i64 %_3332
  %_3334 = load i64, i64* %_3333
  %_3335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3294
  %_3336 = load i64, i64* %_3304
  %_3337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3335, i32 0, i32 1, i64 %_3336
  %_3338 = load i64, i64* %_3337
  %_3339 = icmp sgt i64 %_3334, %_3338
  br i1 %_3339, label %_3340, label %_3341
_3340:
  %_3343 = load i64, i64* %_3300
  store i64 %_3343, i64* %_3304
  br label %_3342
_3341:
  br label %_3342
_3342:
  br label %_3330
_3329:
  br label %_3330
_3330:
  %_3344 = load i64, i64* %_3304
  %_3345 = load i64, i64* %_3295
  %_3346 = icmp ne i64 %_3344, %_3345
  br i1 %_3346, label %_3347, label %_3348
_3347:
  %_3350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3294
  %_3351 = load i64, i64* %_3295
  %_3352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3350, i32 0, i32 1, i64 %_3351
  %_3353 = load i64, i64* %_3352
  store i64 %_3353, i64* %_3303
  %_3354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3294
  %_3355 = load i64, i64* %_3304
  %_3356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3354, i32 0, i32 1, i64 %_3355
  %_3357 = load i64, i64* %_3356
  %_3359 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3294
  %_3360 = load i64, i64* %_3295
  %_3358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3359, i32 0, i32 1, i64 %_3360
  store i64 %_3357, i64* %_3358
  %_3361 = load i64, i64* %_3303
  %_3363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3294
  %_3364 = load i64, i64* %_3304
  %_3362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3363, i32 0, i32 1, i64 %_3364
  store i64 %_3361, i64* %_3362
  %_3366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3294
  %_3367 = load i64, i64* %_3304
  %_3368 = load i64, i64* %_3296
  call void @min_heapify({ i64, [0 x i64] }* %_3366, i64 %_3367, i64 %_3368)
  br label %_3349
_3348:
  br label %_3349
_3349:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_3279 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_3279
  %_3280 = alloca i64
  store i64 %len, i64* %_3280
  %_3281 = alloca i64
  %_3282 = load i64, i64* %_3280
  store i64 %_3282, i64* %_3281
  br label %_3285
_3285:
  %_3283 = load i64, i64* %_3281
  %_3284 = icmp sge i64 %_3283, 1
  br i1 %_3284, label %_3286, label %_3287
_3286:
  %_3289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3279
  %_3290 = load i64, i64* %_3281
  %_3291 = load i64, i64* %_3280
  call void @min_heapify({ i64, [0 x i64] }* %_3289, i64 %_3290, i64 %_3291)
  %_3292 = load i64, i64* %_3281
  %_3293 = sub i64 %_3292, 1
  store i64 %_3293, i64* %_3281
  br label %_3285
_3287:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3247 = alloca i64
  store i64 %argc, i64* %_3247
  %_3248 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3248
  %_3249 = alloca { i64, [0 x i64] }*
  %_3252 = alloca { i64, [0 x i64] }*
  %_3257 = alloca i64
  %_3258 = alloca i64
  %_raw_array3250 = call i64* @oat_alloc_array(i64 11)
  %_array3251 = bitcast i64* %_raw_array3250 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3251, { i64, [0 x i64] }** %_3249
  %_raw_array3253 = call i64* @oat_alloc_array(i64 11)
  %_array3254 = bitcast i64* %_raw_array3253 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3254, { i64, [0 x i64] }** %_3252
  %_3256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3249
  call void @make_min_heap({ i64, [0 x i64] }* %_3256, i64 10)
  store i64 0, i64* %_3257
  store i64 0, i64* %_3258
  br label %_3261
_3261:
  %_3259 = load i64, i64* %_3258
  %_3260 = icmp slt i64 %_3259, 11
  br i1 %_3260, label %_3262, label %_3263
_3262:
  %_3264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3249
  %_3265 = load i64, i64* %_3258
  %_3266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3264, i32 0, i32 1, i64 %_3265
  %_3267 = load i64, i64* %_3266
  %_3268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3252
  %_3269 = load i64, i64* %_3258
  %_3270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3268, i32 0, i32 1, i64 %_3269
  %_3271 = load i64, i64* %_3270
  %_3272 = icmp ne i64 %_3267, %_3271
  br i1 %_3272, label %_3273, label %_3274
_3273:
  store i64 1, i64* %_3257
  br label %_3275
_3274:
  br label %_3275
_3275:
  %_3276 = load i64, i64* %_3258
  %_3277 = add i64 %_3276, 1
  store i64 %_3277, i64* %_3258
  br label %_3261
_3263:
  %_3278 = load i64, i64* %_3257
  ret i64 %_3278
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
