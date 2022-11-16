; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_3332 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_3369 = alloca i64
  store i64 %x, i64* %_3369
  %_3370 = alloca i64
  store i64 %y, i64* %_3370
  %_3371 = load i64, i64* %_3369
  %_3372 = load i64, i64* %_3370
  %_3373 = and i64 %_3371, %_3372
  %_3374 = xor i64 -1, %_3373
  %_3375 = load i64, i64* %_3369
  %_3376 = load i64, i64* %_3370
  %_3377 = or i64 %_3375, %_3376
  %_3378 = and i64 %_3374, %_3377
  ret i64 %_3378
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_3337 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_3337
  %_3338 = alloca i64
  %_3342 = alloca i64
  %_3339 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3337
  %_3340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3339, i32 0, i32 1, i32 0
  %_3341 = load i64, i64* %_3340
  store i64 %_3341, i64* %_3338
  %_3343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3337
  %_3344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3343, i32 0, i32 1, i32 1
  %_3345 = load i64, i64* %_3344
  store i64 %_3345, i64* %_3342
  %_3346 = load i64, i64* %_3342
  %_3348 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3337
  %_3347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3348, i32 0, i32 1, i32 0
  store i64 %_3346, i64* %_3347
  %_3350 = load i64, i64* %_3338
  %_3351 = load i64, i64* %_3338
  %_3352 = shl i64 %_3351, 23
  %_3349 = call i64 @xor(i64 %_3350, i64 %_3352)
  store i64 %_3349, i64* %_3338
  %_3354 = load i64, i64* %_3338
  %_3355 = load i64, i64* %_3338
  %_3356 = lshr i64 %_3355, 17
  %_3353 = call i64 @xor(i64 %_3354, i64 %_3356)
  store i64 %_3353, i64* %_3338
  %_3358 = load i64, i64* %_3338
  %_3360 = load i64, i64* %_3342
  %_3361 = load i64, i64* %_3342
  %_3362 = lshr i64 %_3361, 26
  %_3359 = call i64 @xor(i64 %_3360, i64 %_3362)
  %_3357 = call i64 @xor(i64 %_3358, i64 %_3359)
  store i64 %_3357, i64* %_3338
  %_3363 = load i64, i64* %_3338
  %_3365 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3337
  %_3364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3365, i32 0, i32 1, i32 1
  store i64 %_3363, i64* %_3364
  %_3366 = load i64, i64* %_3338
  %_3367 = load i64, i64* %_3342
  %_3368 = add i64 %_3366, %_3367
  ret i64 %_3368
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3309 = alloca i64
  store i64 %argc, i64* %_3309
  %_3310 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3310
  %_3311 = alloca { i64, [0 x i64] }*
  %_3314 = alloca i64
  %_raw_array3312 = call i64* @oat_alloc_array(i64 2)
  %_array3313 = bitcast i64* %_raw_array3312 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3313, { i64, [0 x i64] }** %_3311
  store i64 0, i64* %_3314
  br label %_3317
_3317:
  %_3315 = load i64, i64* %_3314
  %_3316 = icmp slt i64 %_3315, 2
  br i1 %_3316, label %_3318, label %_3319
_3318:
  %_3320 = load i64, i64* %_3314
  %_3321 = add i64 %_3320, 1
  %_3322 = mul i64 100, %_3321
  %_3324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3311
  %_3325 = load i64, i64* %_3314
  %_3323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3324, i32 0, i32 1, i64 %_3325
  store i64 %_3322, i64* %_3323
  %_3326 = load i64, i64* %_3314
  %_3327 = add i64 %_3326, 1
  store i64 %_3327, i64* %_3314
  br label %_3317
_3319:
  %_3330 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3311
  %_3329 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_3330)
  call void @print_int(i64 %_3329)
  %_3333 = getelementptr [2 x i8], [2 x i8]* @_3332, i32 0, i32 0
  call void @print_string(i8* %_3333)
  %_3336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3311
  %_3335 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_3336)
  call void @print_int(i64 %_3335)
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
