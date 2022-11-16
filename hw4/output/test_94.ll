; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_3384 = alloca i64
  store i64 %n, i64* %_3384
  %_3385 = alloca { i64, [0 x i1] }*
  %_3389 = alloca i64
  %_3405 = alloca i64
  %_3419 = alloca i64
  %_3436 = alloca i64
  %_3437 = alloca i64
  %_3386 = load i64, i64* %_3384
  %_raw_array3387 = call i64* @oat_alloc_array(i64 %_3386)
  %_array3388 = bitcast i64* %_raw_array3387 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3388, { i64, [0 x i1] }** %_3385
  store i64 0, i64* %_3389
  br label %_3393
_3393:
  %_3390 = load i64, i64* %_3389
  %_3391 = load i64, i64* %_3384
  %_3392 = icmp slt i64 %_3390, %_3391
  br i1 %_3392, label %_3394, label %_3395
_3394:
  %_3397 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3385
  %_3398 = load i64, i64* %_3389
  %_3396 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3397, i32 0, i32 1, i64 %_3398
  store i1 1, i1* %_3396
  %_3399 = load i64, i64* %_3389
  %_3400 = add i64 %_3399, 1
  store i64 %_3400, i64* %_3389
  br label %_3393
_3395:
  %_3402 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3385
  %_3401 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3402, i32 0, i32 1, i32 0
  store i1 0, i1* %_3401
  %_3404 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3385
  %_3403 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3404, i32 0, i32 1, i32 1
  store i1 0, i1* %_3403
  store i64 0, i64* %_3405
  br label %_3409
_3409:
  %_3406 = load i64, i64* %_3405
  %_3407 = load i64, i64* %_3384
  %_3408 = icmp slt i64 %_3406, %_3407
  br i1 %_3408, label %_3410, label %_3411
_3410:
  %_3412 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3385
  %_3413 = load i64, i64* %_3405
  %_3414 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3412, i32 0, i32 1, i64 %_3413
  %_3415 = load i1, i1* %_3414
  br i1 %_3415, label %_3416, label %_3417
_3416:
  %_3420 = load i64, i64* %_3405
  %_3421 = mul i64 %_3420, 2
  store i64 %_3421, i64* %_3419
  br label %_3425
_3425:
  %_3422 = load i64, i64* %_3419
  %_3423 = load i64, i64* %_3384
  %_3424 = icmp slt i64 %_3422, %_3423
  br i1 %_3424, label %_3426, label %_3427
_3426:
  %_3429 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3385
  %_3430 = load i64, i64* %_3419
  %_3428 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3429, i32 0, i32 1, i64 %_3430
  store i1 0, i1* %_3428
  %_3431 = load i64, i64* %_3419
  %_3432 = load i64, i64* %_3405
  %_3433 = add i64 %_3431, %_3432
  store i64 %_3433, i64* %_3419
  br label %_3425
_3427:
  br label %_3418
_3417:
  br label %_3418
_3418:
  %_3434 = load i64, i64* %_3405
  %_3435 = add i64 %_3434, 1
  store i64 %_3435, i64* %_3405
  br label %_3409
_3411:
  store i64 0, i64* %_3436
  store i64 0, i64* %_3437
  br label %_3441
_3441:
  %_3438 = load i64, i64* %_3437
  %_3439 = load i64, i64* %_3384
  %_3440 = icmp slt i64 %_3438, %_3439
  br i1 %_3440, label %_3442, label %_3443
_3442:
  %_3444 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3385
  %_3445 = load i64, i64* %_3437
  %_3446 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3444, i32 0, i32 1, i64 %_3445
  %_3447 = load i1, i1* %_3446
  br i1 %_3447, label %_3448, label %_3449
_3448:
  %_3451 = load i64, i64* %_3436
  %_3452 = add i64 %_3451, 1
  store i64 %_3452, i64* %_3436
  br label %_3450
_3449:
  br label %_3450
_3450:
  %_3453 = load i64, i64* %_3437
  %_3454 = add i64 %_3453, 1
  store i64 %_3454, i64* %_3437
  br label %_3441
_3443:
  %_3455 = load i64, i64* %_3436
  ret i64 %_3455
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3379 = alloca i64
  store i64 %argc, i64* %_3379
  %_3380 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3380
  %_3381 = alloca i64
  store i64 100, i64* %_3381
  %_3383 = load i64, i64* %_3381
  %_3382 = call i64 @sieve(i64 %_3383)
  ret i64 %_3382
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
