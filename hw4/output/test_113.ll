; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_5565 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_5565
  %_5566 = alloca i64
  store i64 %s, i64* %_5566
  %_5567 = alloca i64
  store i64 %b, i64* %_5567
  %_5568 = alloca i64
  %_5570 = alloca i64
  %_5575 = alloca i64
  %_5569 = load i64, i64* %_5566
  store i64 %_5569, i64* %_5568
  %_5571 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5565
  %_5572 = load i64, i64* %_5566
  %_5573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5571, i32 0, i32 1, i64 %_5572
  %_5574 = load i64, i64* %_5573
  store i64 %_5574, i64* %_5570
  %_5576 = load i64, i64* %_5566
  store i64 %_5576, i64* %_5575
  br label %_5580
_5580:
  %_5577 = load i64, i64* %_5568
  %_5578 = load i64, i64* %_5567
  %_5579 = icmp slt i64 %_5577, %_5578
  br i1 %_5579, label %_5581, label %_5582
_5581:
  %_5583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5565
  %_5584 = load i64, i64* %_5568
  %_5585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5583, i32 0, i32 1, i64 %_5584
  %_5586 = load i64, i64* %_5585
  %_5587 = load i64, i64* %_5570
  %_5588 = icmp slt i64 %_5586, %_5587
  br i1 %_5588, label %_5589, label %_5590
_5589:
  %_5592 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5565
  %_5593 = load i64, i64* %_5568
  %_5594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5592, i32 0, i32 1, i64 %_5593
  %_5595 = load i64, i64* %_5594
  store i64 %_5595, i64* %_5570
  %_5596 = load i64, i64* %_5568
  store i64 %_5596, i64* %_5575
  br label %_5591
_5590:
  br label %_5591
_5591:
  %_5597 = load i64, i64* %_5568
  %_5598 = add i64 %_5597, 1
  store i64 %_5598, i64* %_5568
  br label %_5580
_5582:
  %_5599 = load i64, i64* %_5575
  ret i64 %_5599
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_5533 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_5533
  %_5534 = alloca i64
  store i64 %s, i64* %_5534
  %_5535 = alloca i64
  %_5536 = alloca i64
  %_5537 = alloca i64
  store i64 0, i64* %_5535
  store i64 0, i64* %_5536
  store i64 0, i64* %_5537
  br label %_5541
_5541:
  %_5538 = load i64, i64* %_5537
  %_5539 = load i64, i64* %_5534
  %_5540 = icmp slt i64 %_5538, %_5539
  br i1 %_5540, label %_5542, label %_5543
_5542:
  %_5545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5533
  %_5546 = load i64, i64* %_5537
  %_5547 = load i64, i64* %_5534
  %_5544 = call i64 @getminindex({ i64, [0 x i64] }* %_5545, i64 %_5546, i64 %_5547)
  store i64 %_5544, i64* %_5536
  %_5548 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5533
  %_5549 = load i64, i64* %_5537
  %_5550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5548, i32 0, i32 1, i64 %_5549
  %_5551 = load i64, i64* %_5550
  store i64 %_5551, i64* %_5535
  %_5552 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5533
  %_5553 = load i64, i64* %_5536
  %_5554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5552, i32 0, i32 1, i64 %_5553
  %_5555 = load i64, i64* %_5554
  %_5557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5533
  %_5558 = load i64, i64* %_5537
  %_5556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5557, i32 0, i32 1, i64 %_5558
  store i64 %_5555, i64* %_5556
  %_5559 = load i64, i64* %_5535
  %_5561 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5533
  %_5562 = load i64, i64* %_5536
  %_5560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5561, i32 0, i32 1, i64 %_5562
  store i64 %_5559, i64* %_5560
  %_5563 = load i64, i64* %_5537
  %_5564 = add i64 %_5563, 1
  store i64 %_5564, i64* %_5537
  br label %_5541
_5543:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5505 = alloca i64
  store i64 %argc, i64* %_5505
  %_5506 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5506
  %_5507 = alloca { i64, [0 x i64] }*
  %_5520 = alloca i64
  %_raw_array5508 = call i64* @oat_alloc_array(i64 8)
  %_array5509 = bitcast i64* %_raw_array5508 to { i64, [0 x i64] }*
  %_5517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5509, i32 0, i32 1, i32 7
  store i64 0, i64* %_5517
  %_5516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5509, i32 0, i32 1, i32 6
  store i64 2, i64* %_5516
  %_5515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5509, i32 0, i32 1, i32 5
  store i64 99, i64* %_5515
  %_5514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5509, i32 0, i32 1, i32 4
  store i64 30, i64* %_5514
  %_5513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5509, i32 0, i32 1, i32 3
  store i64 65, i64* %_5513
  %_5512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5509, i32 0, i32 1, i32 2
  store i64 1, i64* %_5512
  %_5511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5509, i32 0, i32 1, i32 1
  store i64 200, i64* %_5511
  %_5510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5509, i32 0, i32 1, i32 0
  store i64 5, i64* %_5510
  store { i64, [0 x i64] }* %_array5509, { i64, [0 x i64] }** %_5507
  %_5519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5507
  call void @selectionsort({ i64, [0 x i64] }* %_5519, i64 8)
  store i64 0, i64* %_5520
  br label %_5523
_5523:
  %_5521 = load i64, i64* %_5520
  %_5522 = icmp slt i64 %_5521, 8
  br i1 %_5522, label %_5524, label %_5525
_5524:
  %_5527 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5507
  %_5528 = load i64, i64* %_5520
  %_5529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5527, i32 0, i32 1, i64 %_5528
  %_5530 = load i64, i64* %_5529
  call void @print_int(i64 %_5530)
  %_5531 = load i64, i64* %_5520
  %_5532 = add i64 %_5531, 1
  store i64 %_5532, i64* %_5520
  br label %_5523
_5525:
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
