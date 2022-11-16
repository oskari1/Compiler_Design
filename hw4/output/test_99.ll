; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_3559 to { i64, [0 x i1] }*)
@_3559 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_3544 = global [2 x i8] c"T\00"
@_3546 = global [2 x i8] c"F\00"
@_3517 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_3548 = alloca i1
  store i1 %x, i1* %_3548
  %_3549 = alloca i1
  store i1 %y, i1* %_3549
  %_3550 = load i1, i1* %_3548
  %_3551 = load i1, i1* %_3549
  %_3552 = and i1 1, %_3551
  %_3553 = and i1 %_3550, %_3552
  %_3554 = load i1, i1* %_3548
  %_3555 = and i1 1, %_3554
  %_3556 = load i1, i1* %_3549
  %_3557 = and i1 %_3555, %_3556
  %_3558 = or i1 %_3553, %_3557
  ret i1 %_3558
}

define i8* @string_of_bool(i1 %b) {
  %_3539 = alloca i1
  store i1 %b, i1* %_3539
  %_3540 = load i1, i1* %_3539
  br i1 %_3540, label %_3541, label %_3542
_3541:
  %_3545 = getelementptr [2 x i8], [2 x i8]* @_3544, i32 0, i32 0
  ret i8* %_3545
_3542:
  %_3547 = getelementptr [2 x i8], [2 x i8]* @_3546, i32 0, i32 0
  ret i8* %_3547
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_3522 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_3522
  %_3523 = alloca i64
  store i64 %len, i64* %_3523
  %_3524 = alloca i64
  store i64 0, i64* %_3524
  br label %_3528
_3528:
  %_3525 = load i64, i64* %_3524
  %_3526 = load i64, i64* %_3523
  %_3527 = icmp slt i64 %_3525, %_3526
  br i1 %_3527, label %_3529, label %_3530
_3529:
  %_3533 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3522
  %_3534 = load i64, i64* %_3524
  %_3535 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3533, i32 0, i32 1, i64 %_3534
  %_3536 = load i1, i1* %_3535
  %_3532 = call i8* @string_of_bool(i1 %_3536)
  call void @print_string(i8* %_3532)
  %_3537 = load i64, i64* %_3524
  %_3538 = add i64 %_3537, 1
  store i64 %_3538, i64* %_3524
  br label %_3528
_3530:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3449 = alloca i64
  store i64 %argc, i64* %_3449
  %_3450 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3450
  %_3451 = alloca { i64, [0 x i1] }*
  %_3455 = alloca i64
  %_3471 = alloca i64
  %_3478 = alloca i1
  %_3490 = alloca i64
  %_3452 = load i64, i64* @lfsr_length
  %_raw_array3453 = call i64* @oat_alloc_array(i64 %_3452)
  %_array3454 = bitcast i64* %_raw_array3453 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3454, { i64, [0 x i1] }** %_3451
  store i64 0, i64* %_3455
  br label %_3459
_3459:
  %_3456 = load i64, i64* %_3455
  %_3457 = load i64, i64* @lfsr_length
  %_3458 = icmp slt i64 %_3456, %_3457
  br i1 %_3458, label %_3460, label %_3461
_3460:
  %_3462 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_3463 = load i64, i64* %_3455
  %_3464 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3462, i32 0, i32 1, i64 %_3463
  %_3465 = load i1, i1* %_3464
  %_3467 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3451
  %_3468 = load i64, i64* %_3455
  %_3466 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3467, i32 0, i32 1, i64 %_3468
  store i1 %_3465, i1* %_3466
  %_3469 = load i64, i64* %_3455
  %_3470 = add i64 %_3469, 1
  store i64 %_3470, i64* %_3455
  br label %_3459
_3461:
  store i64 0, i64* %_3471
  br label %_3475
_3475:
  %_3472 = load i64, i64* %_3471
  %_3473 = load i64, i64* @lfsr_iterations
  %_3474 = icmp slt i64 %_3472, %_3473
  br i1 %_3474, label %_3476, label %_3477
_3476:
  %_3480 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3451
  %_3481 = load i64, i64* @lfsr_length
  %_3482 = sub i64 %_3481, 1
  %_3483 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3480, i32 0, i32 1, i64 %_3482
  %_3484 = load i1, i1* %_3483
  %_3485 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3451
  %_3486 = load i64, i64* @lfsr_length
  %_3487 = sub i64 %_3486, 2
  %_3488 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3485, i32 0, i32 1, i64 %_3487
  %_3489 = load i1, i1* %_3488
  %_3479 = call i1 @xor(i1 %_3484, i1 %_3489)
  store i1 %_3479, i1* %_3478
  %_3491 = load i64, i64* @lfsr_length
  %_3492 = sub i64 %_3491, 1
  store i64 %_3492, i64* %_3490
  br label %_3495
_3495:
  %_3493 = load i64, i64* %_3490
  %_3494 = icmp sgt i64 %_3493, 0
  br i1 %_3494, label %_3496, label %_3497
_3496:
  %_3498 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3451
  %_3499 = load i64, i64* %_3490
  %_3500 = sub i64 %_3499, 1
  %_3501 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3498, i32 0, i32 1, i64 %_3500
  %_3502 = load i1, i1* %_3501
  %_3504 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3451
  %_3505 = load i64, i64* %_3490
  %_3503 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3504, i32 0, i32 1, i64 %_3505
  store i1 %_3502, i1* %_3503
  %_3506 = load i64, i64* %_3490
  %_3507 = sub i64 %_3506, 1
  store i64 %_3507, i64* %_3490
  br label %_3495
_3497:
  %_3508 = load i1, i1* %_3478
  %_3510 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3451
  %_3509 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3510, i32 0, i32 1, i32 0
  store i1 %_3508, i1* %_3509
  %_3511 = load i64, i64* %_3471
  %_3512 = add i64 %_3511, 1
  store i64 %_3512, i64* %_3471
  br label %_3475
_3477:
  %_3514 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_3515 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_3514, i64 %_3515)
  %_3518 = getelementptr [2 x i8], [2 x i8]* @_3517, i32 0, i32 0
  call void @print_string(i8* %_3518)
  %_3520 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3451
  %_3521 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_3520, i64 %_3521)
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
