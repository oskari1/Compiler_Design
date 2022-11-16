; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_3582 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_3582
  %_3583 = alloca i64
  store i64 %len, i64* %_3583
  %_3584 = alloca i64
  %_3585 = alloca i64
  %_3608 = alloca i64
  store i64 1, i64* %_3584
  store i64 2, i64* %_3585
  br label %_3589
_3589:
  %_3586 = load i64, i64* %_3584
  %_3587 = load i64, i64* %_3583
  %_3588 = icmp slt i64 %_3586, %_3587
  br i1 %_3588, label %_3590, label %_3591
_3590:
  %_3592 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3582
  %_3593 = load i64, i64* %_3584
  %_3594 = sub i64 %_3593, 1
  %_3595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3592, i32 0, i32 1, i64 %_3594
  %_3596 = load i64, i64* %_3595
  %_3597 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3582
  %_3598 = load i64, i64* %_3584
  %_3599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3597, i32 0, i32 1, i64 %_3598
  %_3600 = load i64, i64* %_3599
  %_3601 = icmp sle i64 %_3596, %_3600
  br i1 %_3601, label %_3602, label %_3603
_3602:
  %_3605 = load i64, i64* %_3585
  store i64 %_3605, i64* %_3584
  %_3606 = load i64, i64* %_3585
  %_3607 = add i64 %_3606, 1
  store i64 %_3607, i64* %_3585
  br label %_3604
_3603:
  %_3609 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3582
  %_3610 = load i64, i64* %_3584
  %_3611 = sub i64 %_3610, 1
  %_3612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3609, i32 0, i32 1, i64 %_3611
  %_3613 = load i64, i64* %_3612
  store i64 %_3613, i64* %_3608
  %_3614 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3582
  %_3615 = load i64, i64* %_3584
  %_3616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3614, i32 0, i32 1, i64 %_3615
  %_3617 = load i64, i64* %_3616
  %_3619 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3582
  %_3620 = load i64, i64* %_3584
  %_3621 = sub i64 %_3620, 1
  %_3618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3619, i32 0, i32 1, i64 %_3621
  store i64 %_3617, i64* %_3618
  %_3622 = load i64, i64* %_3608
  %_3624 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3582
  %_3625 = load i64, i64* %_3584
  %_3623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3624, i32 0, i32 1, i64 %_3625
  store i64 %_3622, i64* %_3623
  %_3626 = load i64, i64* %_3584
  %_3627 = sub i64 %_3626, 1
  store i64 %_3627, i64* %_3584
  %_3628 = load i64, i64* %_3584
  %_3629 = icmp eq i64 %_3628, 0
  br i1 %_3629, label %_3630, label %_3631
_3630:
  %_3633 = load i64, i64* %_3585
  store i64 %_3633, i64* %_3584
  %_3634 = load i64, i64* %_3585
  %_3635 = add i64 %_3634, 1
  store i64 %_3635, i64* %_3585
  br label %_3632
_3631:
  br label %_3632
_3632:
  br label %_3604
_3604:
  br label %_3589
_3591:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3560 = alloca i64
  store i64 %argc, i64* %_3560
  %_3561 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3561
  %_3562 = alloca { i64, [0 x i64] }*
  %_3565 = alloca i64
  %_3569 = alloca i64
  %_raw_array3563 = call i64* @oat_alloc_array(i64 8)
  %_array3564 = bitcast i64* %_raw_array3563 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3564, { i64, [0 x i64] }** %_3562
  store i64 8, i64* %_3565
  %_3567 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3562
  %_3568 = load i64, i64* %_3565
  call void @gnomeSort({ i64, [0 x i64] }* %_3567, i64 %_3568)
  store i64 0, i64* %_3569
  br label %_3572
_3572:
  %_3570 = load i64, i64* %_3569
  %_3571 = icmp slt i64 %_3570, 8
  br i1 %_3571, label %_3573, label %_3574
_3573:
  %_3576 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3562
  %_3577 = load i64, i64* %_3569
  %_3578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3576, i32 0, i32 1, i64 %_3577
  %_3579 = load i64, i64* %_3578
  call void @print_int(i64 %_3579)
  %_3580 = load i64, i64* %_3569
  %_3581 = add i64 %_3580, 1
  store i64 %_3581, i64* %_3569
  br label %_3572
_3574:
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
