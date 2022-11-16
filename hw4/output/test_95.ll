; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_3475 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3601 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_3601
  %_3602 = alloca i64
  store i64 %len, i64* %_3602
  %_3603 = alloca i64
  %_3607 = alloca i64
  %_3604 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3601
  %_3605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3604, i32 0, i32 1, i32 0
  %_3606 = load i64, i64* %_3605
  store i64 %_3606, i64* %_3603
  store i64 0, i64* %_3607
  br label %_3611
_3611:
  %_3608 = load i64, i64* %_3607
  %_3609 = load i64, i64* %_3602
  %_3610 = icmp slt i64 %_3608, %_3609
  br i1 %_3610, label %_3612, label %_3613
_3612:
  %_3614 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3601
  %_3615 = load i64, i64* %_3607
  %_3616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3614, i32 0, i32 1, i64 %_3615
  %_3617 = load i64, i64* %_3616
  %_3618 = load i64, i64* %_3603
  %_3619 = icmp slt i64 %_3617, %_3618
  br i1 %_3619, label %_3620, label %_3621
_3620:
  %_3623 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3601
  %_3624 = load i64, i64* %_3607
  %_3625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3623, i32 0, i32 1, i64 %_3624
  %_3626 = load i64, i64* %_3625
  store i64 %_3626, i64* %_3603
  br label %_3622
_3621:
  br label %_3622
_3622:
  %_3627 = load i64, i64* %_3607
  %_3628 = add i64 %_3627, 1
  store i64 %_3628, i64* %_3607
  br label %_3611
_3613:
  %_3629 = load i64, i64* %_3603
  ret i64 %_3629
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3572 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_3572
  %_3573 = alloca i64
  store i64 %len, i64* %_3573
  %_3574 = alloca i64
  %_3578 = alloca i64
  %_3575 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3572
  %_3576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3575, i32 0, i32 1, i32 0
  %_3577 = load i64, i64* %_3576
  store i64 %_3577, i64* %_3574
  store i64 0, i64* %_3578
  br label %_3582
_3582:
  %_3579 = load i64, i64* %_3578
  %_3580 = load i64, i64* %_3573
  %_3581 = icmp slt i64 %_3579, %_3580
  br i1 %_3581, label %_3583, label %_3584
_3583:
  %_3585 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3572
  %_3586 = load i64, i64* %_3578
  %_3587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3585, i32 0, i32 1, i64 %_3586
  %_3588 = load i64, i64* %_3587
  %_3589 = load i64, i64* %_3574
  %_3590 = icmp sgt i64 %_3588, %_3589
  br i1 %_3590, label %_3591, label %_3592
_3591:
  %_3594 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3572
  %_3595 = load i64, i64* %_3578
  %_3596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3594, i32 0, i32 1, i64 %_3595
  %_3597 = load i64, i64* %_3596
  store i64 %_3597, i64* %_3574
  br label %_3593
_3592:
  br label %_3593
_3593:
  %_3598 = load i64, i64* %_3578
  %_3599 = add i64 %_3598, 1
  store i64 %_3599, i64* %_3578
  br label %_3582
_3584:
  %_3600 = load i64, i64* %_3574
  ret i64 %_3600
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_3484 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_3484
  %_3485 = alloca i64
  store i64 %len, i64* %_3485
  %_3486 = alloca i64
  %_3490 = alloca i64
  %_3494 = alloca { i64, [0 x i64] }*
  %_3501 = alloca i64
  %_3528 = alloca i64
  %_3530 = alloca i64
  %_3531 = alloca { i64, [0 x i64] }*
  %_3488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3484
  %_3489 = load i64, i64* %_3485
  %_3487 = call i64 @min({ i64, [0 x i64] }* %_3488, i64 %_3489)
  store i64 %_3487, i64* %_3486
  %_3492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3484
  %_3493 = load i64, i64* %_3485
  %_3491 = call i64 @max({ i64, [0 x i64] }* %_3492, i64 %_3493)
  store i64 %_3491, i64* %_3490
  %_3495 = load i64, i64* %_3490
  %_3496 = load i64, i64* %_3486
  %_3497 = sub i64 %_3495, %_3496
  %_3498 = add i64 %_3497, 1
  %_raw_array3499 = call i64* @oat_alloc_array(i64 %_3498)
  %_array3500 = bitcast i64* %_raw_array3499 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3500, { i64, [0 x i64] }** %_3494
  store i64 0, i64* %_3501
  br label %_3505
_3505:
  %_3502 = load i64, i64* %_3501
  %_3503 = load i64, i64* %_3485
  %_3504 = icmp slt i64 %_3502, %_3503
  br i1 %_3504, label %_3506, label %_3507
_3506:
  %_3508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3494
  %_3509 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3484
  %_3510 = load i64, i64* %_3501
  %_3511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3509, i32 0, i32 1, i64 %_3510
  %_3512 = load i64, i64* %_3511
  %_3513 = load i64, i64* %_3486
  %_3514 = sub i64 %_3512, %_3513
  %_3515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3508, i32 0, i32 1, i64 %_3514
  %_3516 = load i64, i64* %_3515
  %_3517 = add i64 %_3516, 1
  %_3519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3494
  %_3520 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3484
  %_3521 = load i64, i64* %_3501
  %_3522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3520, i32 0, i32 1, i64 %_3521
  %_3523 = load i64, i64* %_3522
  %_3524 = load i64, i64* %_3486
  %_3525 = sub i64 %_3523, %_3524
  %_3518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3519, i32 0, i32 1, i64 %_3525
  store i64 %_3517, i64* %_3518
  %_3526 = load i64, i64* %_3501
  %_3527 = add i64 %_3526, 1
  store i64 %_3527, i64* %_3501
  br label %_3505
_3507:
  %_3529 = load i64, i64* %_3486
  store i64 %_3529, i64* %_3528
  store i64 0, i64* %_3530
  %_3532 = load i64, i64* %_3485
  %_raw_array3533 = call i64* @oat_alloc_array(i64 %_3532)
  %_array3534 = bitcast i64* %_raw_array3533 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3534, { i64, [0 x i64] }** %_3531
  br label %_3538
_3538:
  %_3535 = load i64, i64* %_3528
  %_3536 = load i64, i64* %_3490
  %_3537 = icmp sle i64 %_3535, %_3536
  br i1 %_3537, label %_3539, label %_3540
_3539:
  %_3541 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3494
  %_3542 = load i64, i64* %_3528
  %_3543 = load i64, i64* %_3486
  %_3544 = sub i64 %_3542, %_3543
  %_3545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3541, i32 0, i32 1, i64 %_3544
  %_3546 = load i64, i64* %_3545
  %_3547 = icmp sgt i64 %_3546, 0
  br i1 %_3547, label %_3548, label %_3549
_3548:
  %_3551 = load i64, i64* %_3528
  %_3553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3531
  %_3554 = load i64, i64* %_3530
  %_3552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3553, i32 0, i32 1, i64 %_3554
  store i64 %_3551, i64* %_3552
  %_3555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3494
  %_3556 = load i64, i64* %_3528
  %_3557 = load i64, i64* %_3486
  %_3558 = sub i64 %_3556, %_3557
  %_3559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3555, i32 0, i32 1, i64 %_3558
  %_3560 = load i64, i64* %_3559
  %_3561 = sub i64 %_3560, 1
  %_3563 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3494
  %_3564 = load i64, i64* %_3528
  %_3565 = load i64, i64* %_3486
  %_3566 = sub i64 %_3564, %_3565
  %_3562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3563, i32 0, i32 1, i64 %_3566
  store i64 %_3561, i64* %_3562
  %_3567 = load i64, i64* %_3530
  %_3568 = add i64 %_3567, 1
  store i64 %_3568, i64* %_3530
  br label %_3550
_3549:
  %_3569 = load i64, i64* %_3528
  %_3570 = add i64 %_3569, 1
  store i64 %_3570, i64* %_3528
  br label %_3550
_3550:
  br label %_3538
_3540:
  %_3571 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3531
  ret { i64, [0 x i64] }* %_3571
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3456 = alloca i64
  store i64 %argc, i64* %_3456
  %_3457 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3457
  %_3458 = alloca { i64, [0 x i64] }*
  %_3470 = alloca i64
  %_3477 = alloca { i64, [0 x i64] }*
  %_raw_array3459 = call i64* @oat_alloc_array(i64 9)
  %_array3460 = bitcast i64* %_raw_array3459 to { i64, [0 x i64] }*
  %_3469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3460, i32 0, i32 1, i32 8
  store i64 67, i64* %_3469
  %_3468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3460, i32 0, i32 1, i32 7
  store i64 89, i64* %_3468
  %_3467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3460, i32 0, i32 1, i32 6
  store i64 69, i64* %_3467
  %_3466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3460, i32 0, i32 1, i32 5
  store i64 65, i64* %_3466
  %_3465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3460, i32 0, i32 1, i32 4
  store i64 65, i64* %_3465
  %_3464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3460, i32 0, i32 1, i32 3
  store i64 90, i64* %_3464
  %_3463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3460, i32 0, i32 1, i32 2
  store i64 72, i64* %_3463
  %_3462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3460, i32 0, i32 1, i32 1
  store i64 70, i64* %_3462
  %_3461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3460, i32 0, i32 1, i32 0
  store i64 65, i64* %_3461
  store { i64, [0 x i64] }* %_array3460, { i64, [0 x i64] }** %_3458
  store i64 9, i64* %_3470
  %_3473 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3458
  %_3472 = call i8* @string_of_array({ i64, [0 x i64] }* %_3473)
  call void @print_string(i8* %_3472)
  %_3476 = getelementptr [2 x i8], [2 x i8]* @_3475, i32 0, i32 0
  call void @print_string(i8* %_3476)
  %_3479 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3458
  %_3480 = load i64, i64* %_3470
  %_3478 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_3479, i64 %_3480)
  store { i64, [0 x i64] }* %_3478, { i64, [0 x i64] }** %_3477
  %_3483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3477
  %_3482 = call i8* @string_of_array({ i64, [0 x i64] }* %_3483)
  call void @print_string(i8* %_3482)
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
