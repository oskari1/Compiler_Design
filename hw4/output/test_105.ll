; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_4563 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_4563
  %_4564 = alloca i64
  store i64 %len, i64* %_4564
  %_4565 = alloca i64
  store i64 %insertee, i64* %_4565
  %_4566 = alloca { i64, [0 x i64] }*
  %_4571 = alloca i64
  %_4585 = alloca i1
  %_4597 = alloca i64
  %_4567 = load i64, i64* %_4564
  %_4568 = add i64 %_4567, 1
  %_raw_array4569 = call i64* @oat_alloc_array(i64 %_4568)
  %_array4570 = bitcast i64* %_raw_array4569 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4570, { i64, [0 x i64] }** %_4566
  store i64 0, i64* %_4571
  br label %_4576
_4576:
  %_4572 = load i64, i64* %_4571
  %_4573 = load i64, i64* %_4564
  %_4574 = add i64 %_4573, 1
  %_4575 = icmp slt i64 %_4572, %_4574
  br i1 %_4575, label %_4577, label %_4578
_4577:
  %_4579 = sub i64 0, 1
  %_4581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4566
  %_4582 = load i64, i64* %_4571
  %_4580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4581, i32 0, i32 1, i64 %_4582
  store i64 %_4579, i64* %_4580
  %_4583 = load i64, i64* %_4571
  %_4584 = add i64 %_4583, 1
  store i64 %_4584, i64* %_4571
  br label %_4576
_4578:
  store i1 1, i1* %_4585
  %_4586 = load i64, i64* %_4565
  %_4587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4563
  %_4588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4587, i32 0, i32 1, i32 0
  %_4589 = load i64, i64* %_4588
  %_4590 = icmp slt i64 %_4586, %_4589
  br i1 %_4590, label %_4591, label %_4592
_4591:
  store i1 0, i1* %_4585
  %_4594 = load i64, i64* %_4565
  %_4596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4566
  %_4595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4596, i32 0, i32 1, i32 0
  store i64 %_4594, i64* %_4595
  br label %_4593
_4592:
  br label %_4593
_4593:
  store i64 0, i64* %_4597
  br label %_4601
_4601:
  %_4598 = load i64, i64* %_4597
  %_4599 = load i64, i64* %_4564
  %_4600 = icmp slt i64 %_4598, %_4599
  br i1 %_4600, label %_4602, label %_4603
_4602:
  %_4604 = load i1, i1* %_4585
  br i1 %_4604, label %_4605, label %_4606
_4605:
  %_4608 = load i64, i64* %_4565
  %_4609 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4563
  %_4610 = load i64, i64* %_4597
  %_4611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4609, i32 0, i32 1, i64 %_4610
  %_4612 = load i64, i64* %_4611
  %_4613 = icmp sgt i64 %_4608, %_4612
  br i1 %_4613, label %_4614, label %_4615
_4614:
  store i1 0, i1* %_4585
  %_4617 = load i64, i64* %_4565
  %_4619 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4566
  %_4620 = load i64, i64* %_4597
  %_4621 = add i64 %_4620, 1
  %_4618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4619, i32 0, i32 1, i64 %_4621
  store i64 %_4617, i64* %_4618
  %_4622 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4563
  %_4623 = load i64, i64* %_4597
  %_4624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4622, i32 0, i32 1, i64 %_4623
  %_4625 = load i64, i64* %_4624
  %_4627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4566
  %_4628 = load i64, i64* %_4597
  %_4626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4627, i32 0, i32 1, i64 %_4628
  store i64 %_4625, i64* %_4626
  br label %_4616
_4615:
  %_4629 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4563
  %_4630 = load i64, i64* %_4597
  %_4631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4629, i32 0, i32 1, i64 %_4630
  %_4632 = load i64, i64* %_4631
  %_4634 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4566
  %_4635 = load i64, i64* %_4597
  %_4633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4634, i32 0, i32 1, i64 %_4635
  store i64 %_4632, i64* %_4633
  br label %_4616
_4616:
  br label %_4607
_4606:
  %_4636 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4563
  %_4637 = load i64, i64* %_4597
  %_4638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4636, i32 0, i32 1, i64 %_4637
  %_4639 = load i64, i64* %_4638
  %_4641 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4566
  %_4642 = load i64, i64* %_4597
  %_4643 = add i64 %_4642, 1
  %_4640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4641, i32 0, i32 1, i64 %_4643
  store i64 %_4639, i64* %_4640
  br label %_4607
_4607:
  %_4644 = load i64, i64* %_4597
  %_4645 = add i64 %_4644, 1
  store i64 %_4645, i64* %_4597
  br label %_4601
_4603:
  %_4646 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4566
  ret { i64, [0 x i64] }* %_4646
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_4535 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_4535
  %_4536 = alloca i64
  store i64 %len, i64* %_4536
  %_4537 = alloca { i64, [0 x i64] }*
  %_4546 = alloca i64
  %_raw_array4538 = call i64* @oat_alloc_array(i64 1)
  %_array4539 = bitcast i64* %_raw_array4538 to { i64, [0 x i64] }*
  %_4540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4539, i32 0, i32 1, i32 0
  store i64 0, i64* %_4540
  store { i64, [0 x i64] }* %_array4539, { i64, [0 x i64] }** %_4537
  %_4541 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4535
  %_4542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4541, i32 0, i32 1, i32 0
  %_4543 = load i64, i64* %_4542
  %_4545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4537
  %_4544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4545, i32 0, i32 1, i32 0
  store i64 %_4543, i64* %_4544
  store i64 1, i64* %_4546
  br label %_4550
_4550:
  %_4547 = load i64, i64* %_4546
  %_4548 = load i64, i64* %_4536
  %_4549 = icmp slt i64 %_4547, %_4548
  br i1 %_4549, label %_4551, label %_4552
_4551:
  %_4554 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4537
  %_4555 = load i64, i64* %_4546
  %_4556 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4535
  %_4557 = load i64, i64* %_4546
  %_4558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4556, i32 0, i32 1, i64 %_4557
  %_4559 = load i64, i64* %_4558
  %_4553 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_4554, i64 %_4555, i64 %_4559)
  store { i64, [0 x i64] }* %_4553, { i64, [0 x i64] }** %_4537
  %_4560 = load i64, i64* %_4546
  %_4561 = add i64 %_4560, 1
  store i64 %_4561, i64* %_4546
  br label %_4550
_4552:
  %_4562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4537
  ret { i64, [0 x i64] }* %_4562
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4518 = alloca i64
  store i64 %argc, i64* %_4518
  %_4519 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4519
  %_4520 = alloca { i64, [0 x i64] }*
  %_4529 = alloca { i64, [0 x i64] }*
  %_raw_array4521 = call i64* @oat_alloc_array(i64 6)
  %_array4522 = bitcast i64* %_raw_array4521 to { i64, [0 x i64] }*
  %_4528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4522, i32 0, i32 1, i32 5
  store i64 6, i64* %_4528
  %_4527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4522, i32 0, i32 1, i32 4
  store i64 2, i64* %_4527
  %_4526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4522, i32 0, i32 1, i32 3
  store i64 3, i64* %_4526
  %_4525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4522, i32 0, i32 1, i32 2
  store i64 32, i64* %_4525
  %_4524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4522, i32 0, i32 1, i32 1
  store i64 42, i64* %_4524
  %_4523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4522, i32 0, i32 1, i32 0
  store i64 13, i64* %_4523
  store { i64, [0 x i64] }* %_array4522, { i64, [0 x i64] }** %_4520
  %_4531 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4520
  %_4530 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_4531, i64 6)
  store { i64, [0 x i64] }* %_4530, { i64, [0 x i64] }** %_4529
  %_4532 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4529
  %_4533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4532, i32 0, i32 1, i32 5
  %_4534 = load i64, i64* %_4533
  ret i64 %_4534
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
