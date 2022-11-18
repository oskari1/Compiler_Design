; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3287 = alloca i64
  store i64 %argc, i64* %_3287
  %_3288 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3288
  %_3289 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3301 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3313 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3325 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3337 = alloca { i64, [0 x i64] }*
  %_raw_array3290 = call i64* @oat_alloc_array(i64 3)
  %_array3291 = bitcast i64* %_raw_array3290 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3298 = call i64* @oat_alloc_array(i64 1)
  %_array3299 = bitcast i64* %_raw_array3298 to { i64, [0 x i64] }*
  %_3300 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3291, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3299, { i64, [0 x i64] }** %_3300
  %_raw_array3295 = call i64* @oat_alloc_array(i64 1)
  %_array3296 = bitcast i64* %_raw_array3295 to { i64, [0 x i64] }*
  %_3297 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3291, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3296, { i64, [0 x i64] }** %_3297
  %_raw_array3292 = call i64* @oat_alloc_array(i64 1)
  %_array3293 = bitcast i64* %_raw_array3292 to { i64, [0 x i64] }*
  %_3294 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3291, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3293, { i64, [0 x i64] }** %_3294
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3291, { i64, [0 x { i64, [0 x i64] }*] }** %_3289
  %_raw_array3302 = call i64* @oat_alloc_array(i64 3)
  %_array3303 = bitcast i64* %_raw_array3302 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3310 = call i64* @oat_alloc_array(i64 1)
  %_array3311 = bitcast i64* %_raw_array3310 to { i64, [0 x i64] }*
  %_3312 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3303, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3311, { i64, [0 x i64] }** %_3312
  %_raw_array3307 = call i64* @oat_alloc_array(i64 1)
  %_array3308 = bitcast i64* %_raw_array3307 to { i64, [0 x i64] }*
  %_3309 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3303, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3308, { i64, [0 x i64] }** %_3309
  %_raw_array3304 = call i64* @oat_alloc_array(i64 1)
  %_array3305 = bitcast i64* %_raw_array3304 to { i64, [0 x i64] }*
  %_3306 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3303, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3305, { i64, [0 x i64] }** %_3306
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3303, { i64, [0 x { i64, [0 x i64] }*] }** %_3301
  %_raw_array3314 = call i64* @oat_alloc_array(i64 3)
  %_array3315 = bitcast i64* %_raw_array3314 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3322 = call i64* @oat_alloc_array(i64 1)
  %_array3323 = bitcast i64* %_raw_array3322 to { i64, [0 x i64] }*
  %_3324 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3315, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3323, { i64, [0 x i64] }** %_3324
  %_raw_array3319 = call i64* @oat_alloc_array(i64 1)
  %_array3320 = bitcast i64* %_raw_array3319 to { i64, [0 x i64] }*
  %_3321 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3315, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3320, { i64, [0 x i64] }** %_3321
  %_raw_array3316 = call i64* @oat_alloc_array(i64 1)
  %_array3317 = bitcast i64* %_raw_array3316 to { i64, [0 x i64] }*
  %_3318 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3315, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3317, { i64, [0 x i64] }** %_3318
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3315, { i64, [0 x { i64, [0 x i64] }*] }** %_3313
  %_raw_array3326 = call i64* @oat_alloc_array(i64 3)
  %_array3327 = bitcast i64* %_raw_array3326 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3334 = call i64* @oat_alloc_array(i64 1)
  %_array3335 = bitcast i64* %_raw_array3334 to { i64, [0 x i64] }*
  %_3336 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3327, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3335, { i64, [0 x i64] }** %_3336
  %_raw_array3331 = call i64* @oat_alloc_array(i64 1)
  %_array3332 = bitcast i64* %_raw_array3331 to { i64, [0 x i64] }*
  %_3333 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3327, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3332, { i64, [0 x i64] }** %_3333
  %_raw_array3328 = call i64* @oat_alloc_array(i64 1)
  %_array3329 = bitcast i64* %_raw_array3328 to { i64, [0 x i64] }*
  %_3330 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3327, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3329, { i64, [0 x i64] }** %_3330
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3327, { i64, [0 x { i64, [0 x i64] }*] }** %_3325
  %_raw_array3338 = call i64* @oat_alloc_array(i64 3)
  %_array3339 = bitcast i64* %_raw_array3338 to { i64, [0 x i64] }*
  %_3342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3339, i32 0, i32 1, i32 2
  store i64 2, i64* %_3342
  %_3341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3339, i32 0, i32 1, i32 1
  store i64 1, i64* %_3341
  %_3340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3339, i32 0, i32 1, i32 0
  store i64 0, i64* %_3340
  store { i64, [0 x i64] }* %_array3339, { i64, [0 x i64] }** %_3337
  %_3343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3337
  %_3345 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3301
  %_3344 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3345, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_3343, { i64, [0 x i64] }** %_3344
  %_3347 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3301
  %_3348 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3347, i32 0, i32 1, i32 0
  %_3349 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3348
  %_3346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3349, i32 0, i32 1, i32 0
  store i64 2, i64* %_3346
  %_3350 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3301
  store { i64, [0 x { i64, [0 x i64] }*] }* %_3350, { i64, [0 x { i64, [0 x i64] }*] }** %_3289
  %_3351 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3289
  store { i64, [0 x { i64, [0 x i64] }*] }* %_3351, { i64, [0 x { i64, [0 x i64] }*] }** %_3313
  %_3352 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3325
  store { i64, [0 x { i64, [0 x i64] }*] }* %_3352, { i64, [0 x { i64, [0 x i64] }*] }** %_3289
  %_3353 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3313
  store { i64, [0 x { i64, [0 x i64] }*] }* %_3353, { i64, [0 x { i64, [0 x i64] }*] }** %_3301
  %_3354 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3301
  store { i64, [0 x { i64, [0 x i64] }*] }* %_3354, { i64, [0 x { i64, [0 x i64] }*] }** %_3325
  %_3355 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3325
  store { i64, [0 x { i64, [0 x i64] }*] }* %_3355, { i64, [0 x { i64, [0 x i64] }*] }** %_3313
  %_3356 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3313
  %_3357 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3356, i32 0, i32 1, i32 0
  %_3358 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3357
  %_3359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3358, i32 0, i32 1, i32 0
  %_3360 = load i64, i64* %_3359
  ret i64 %_3360
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
