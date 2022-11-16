; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_3376 = alloca i64
  store i64 %x, i64* %_3376
  %_3377 = alloca i64
  store i64 %y, i64* %_3377
  %_3378 = load i64, i64* %_3376
  %_3379 = load i64, i64* %_3377
  %_3380 = icmp eq i64 %_3378, %_3379
  br i1 %_3380, label %_3381, label %_3382
_3381:
  %_3384 = load i64, i64* %_3376
  ret i64 %_3384
_3382:
  br label %_3383
_3383:
  %_3385 = load i64, i64* %_3376
  %_3386 = icmp eq i64 %_3385, 0
  br i1 %_3386, label %_3387, label %_3388
_3387:
  %_3390 = load i64, i64* %_3377
  ret i64 %_3390
_3388:
  br label %_3389
_3389:
  %_3391 = load i64, i64* %_3377
  %_3392 = icmp eq i64 %_3391, 0
  br i1 %_3392, label %_3393, label %_3394
_3393:
  %_3396 = load i64, i64* %_3376
  ret i64 %_3396
_3394:
  br label %_3395
_3395:
  %_3397 = load i64, i64* %_3376
  %_3398 = xor i64 9223372036854775807, %_3397
  %_3399 = and i64 %_3398, 1
  %_3400 = icmp eq i64 %_3399, 1
  br i1 %_3400, label %_3401, label %_3402
_3401:
  %_3404 = load i64, i64* %_3377
  %_3405 = and i64 %_3404, 1
  %_3406 = icmp eq i64 %_3405, 1
  br i1 %_3406, label %_3407, label %_3408
_3407:
  %_3411 = load i64, i64* %_3376
  %_3412 = lshr i64 %_3411, 1
  %_3413 = load i64, i64* %_3377
  %_3410 = call i64 @binary_gcd(i64 %_3412, i64 %_3413)
  ret i64 %_3410
_3408:
  %_3415 = load i64, i64* %_3376
  %_3416 = lshr i64 %_3415, 1
  %_3417 = load i64, i64* %_3377
  %_3418 = lshr i64 %_3417, 1
  %_3414 = call i64 @binary_gcd(i64 %_3416, i64 %_3418)
  %_3419 = shl i64 %_3414, 1
  ret i64 %_3419
_3409:
  br label %_3403
_3402:
  br label %_3403
_3403:
  %_3420 = load i64, i64* %_3377
  %_3421 = xor i64 9223372036854775807, %_3420
  %_3422 = and i64 %_3421, 1
  %_3423 = icmp eq i64 %_3422, 1
  br i1 %_3423, label %_3424, label %_3425
_3424:
  %_3428 = load i64, i64* %_3376
  %_3429 = load i64, i64* %_3377
  %_3430 = lshr i64 %_3429, 1
  %_3427 = call i64 @binary_gcd(i64 %_3428, i64 %_3430)
  ret i64 %_3427
_3425:
  br label %_3426
_3426:
  %_3431 = load i64, i64* %_3376
  %_3432 = load i64, i64* %_3377
  %_3433 = icmp sgt i64 %_3431, %_3432
  br i1 %_3433, label %_3434, label %_3435
_3434:
  %_3438 = load i64, i64* %_3376
  %_3439 = load i64, i64* %_3377
  %_3440 = sub i64 %_3438, %_3439
  %_3441 = lshr i64 %_3440, 1
  %_3442 = load i64, i64* %_3377
  %_3437 = call i64 @binary_gcd(i64 %_3441, i64 %_3442)
  ret i64 %_3437
_3435:
  br label %_3436
_3436:
  %_3444 = load i64, i64* %_3377
  %_3445 = load i64, i64* %_3376
  %_3446 = sub i64 %_3444, %_3445
  %_3447 = lshr i64 %_3446, 1
  %_3448 = load i64, i64* %_3376
  %_3443 = call i64 @binary_gcd(i64 %_3447, i64 %_3448)
  ret i64 %_3443
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3369 = alloca i64
  store i64 %argc, i64* %_3369
  %_3370 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3370
  %_3371 = alloca i64
  %_3372 = alloca i64
  store i64 21, i64* %_3371
  store i64 15, i64* %_3372
  %_3374 = load i64, i64* %_3371
  %_3375 = load i64, i64* %_3372
  %_3373 = call i64 @binary_gcd(i64 %_3374, i64 %_3375)
  ret i64 %_3373
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
