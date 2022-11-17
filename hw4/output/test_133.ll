; generated from: ./dbernhard/mat_mult2.oat
target triple = "x86_64-unknown-linux"
@eye = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_5615 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_5615 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_5612 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_5613 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_5614 to { i64, [0 x i64] }*) ] }
@_5612 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 0, i64 0 ] }
@_5613 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 1, i64 0 ] }
@_5614 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 1 ] }
@_5421 = global [3 x i8] c"| \00"
@_5438 = global [2 x i8] c" \00"
@_5447 = global [4 x i8] c" |
\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5520 = alloca i64
  store i64 %argc, i64* %_5520
  %_5521 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5521
  %_5522 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_5543 = alloca i64
  %_5544 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_5567 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5523 = call i64* @oat_alloc_array(i64 3)
  %_array5524 = bitcast i64* %_raw_array5523 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5537 = call i64* @oat_alloc_array(i64 3)
  %_array5538 = bitcast i64* %_raw_array5537 to { i64, [0 x i64] }*
  %_5541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5538, i32 0, i32 1, i32 2
  store i64 1, i64* %_5541
  %_5540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5538, i32 0, i32 1, i32 1
  store i64 0, i64* %_5540
  %_5539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5538, i32 0, i32 1, i32 0
  store i64 0, i64* %_5539
  %_5542 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5524, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5538, { i64, [0 x i64] }** %_5542
  %_raw_array5531 = call i64* @oat_alloc_array(i64 3)
  %_array5532 = bitcast i64* %_raw_array5531 to { i64, [0 x i64] }*
  %_5535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5532, i32 0, i32 1, i32 2
  store i64 0, i64* %_5535
  %_5534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5532, i32 0, i32 1, i32 1
  store i64 1, i64* %_5534
  %_5533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5532, i32 0, i32 1, i32 0
  store i64 0, i64* %_5533
  %_5536 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5524, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5532, { i64, [0 x i64] }** %_5536
  %_raw_array5525 = call i64* @oat_alloc_array(i64 3)
  %_array5526 = bitcast i64* %_raw_array5525 to { i64, [0 x i64] }*
  %_5529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5526, i32 0, i32 1, i32 2
  store i64 0, i64* %_5529
  %_5528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5526, i32 0, i32 1, i32 1
  store i64 0, i64* %_5528
  %_5527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5526, i32 0, i32 1, i32 0
  store i64 1, i64* %_5527
  %_5530 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5524, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5526, { i64, [0 x i64] }** %_5530
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5524, { i64, [0 x { i64, [0 x i64] }*] }** %_5522
  store i64 1, i64* %_5543
  %_raw_array5545 = call i64* @oat_alloc_array(i64 3)
  %_array5546 = bitcast i64* %_raw_array5545 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5561 = call i64* @oat_alloc_array(i64 3)
  %_array5562 = bitcast i64* %_raw_array5561 to { i64, [0 x i64] }*
  %_5565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5562, i32 0, i32 1, i32 2
  store i64 1, i64* %_5565
  %_5564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5562, i32 0, i32 1, i32 1
  store i64 0, i64* %_5564
  %_5563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5562, i32 0, i32 1, i32 0
  store i64 2, i64* %_5563
  %_5566 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5546, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5562, { i64, [0 x i64] }** %_5566
  %_raw_array5554 = call i64* @oat_alloc_array(i64 3)
  %_array5555 = bitcast i64* %_raw_array5554 to { i64, [0 x i64] }*
  %_5559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5555, i32 0, i32 1, i32 2
  store i64 2, i64* %_5559
  %_5557 = load i64, i64* %_5543
  %_5558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5555, i32 0, i32 1, i32 1
  store i64 %_5557, i64* %_5558
  %_5556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5555, i32 0, i32 1, i32 0
  store i64 9, i64* %_5556
  %_5560 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5546, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5555, { i64, [0 x i64] }** %_5560
  %_raw_array5547 = call i64* @oat_alloc_array(i64 3)
  %_array5548 = bitcast i64* %_raw_array5547 to { i64, [0 x i64] }*
  %_5552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5548, i32 0, i32 1, i32 2
  store i64 3, i64* %_5552
  %_5551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5548, i32 0, i32 1, i32 1
  store i64 4, i64* %_5551
  %_5549 = load i64, i64* %_5543
  %_5550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5548, i32 0, i32 1, i32 0
  store i64 %_5549, i64* %_5550
  %_5553 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5546, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5548, { i64, [0 x i64] }** %_5553
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5546, { i64, [0 x { i64, [0 x i64] }*] }** %_5544
  %_raw_array5568 = call i64* @oat_alloc_array(i64 3)
  %_array5569 = bitcast i64* %_raw_array5568 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5590 = call i64* @oat_alloc_array(i64 3)
  %_array5591 = bitcast i64* %_raw_array5590 to { i64, [0 x i64] }*
  %_5595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5591, i32 0, i32 1, i32 2
  store i64 1, i64* %_5595
  %_5593 = load i64, i64* %_5543
  %_5594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5591, i32 0, i32 1, i32 1
  store i64 %_5593, i64* %_5594
  %_5592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5591, i32 0, i32 1, i32 0
  store i64 2, i64* %_5592
  %_5596 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5569, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5591, { i64, [0 x i64] }** %_5596
  %_raw_array5580 = call i64* @oat_alloc_array(i64 3)
  %_array5581 = bitcast i64* %_raw_array5580 to { i64, [0 x i64] }*
  %_5585 = load i64, i64* %_5543
  %_5586 = load i64, i64* %_5543
  %_5587 = add i64 %_5585, %_5586
  %_5588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5581, i32 0, i32 1, i32 2
  store i64 %_5587, i64* %_5588
  %_5583 = load i64, i64* %_5543
  %_5584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5581, i32 0, i32 1, i32 1
  store i64 %_5583, i64* %_5584
  %_5582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5581, i32 0, i32 1, i32 0
  store i64 1, i64* %_5582
  %_5589 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5569, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5581, { i64, [0 x i64] }** %_5589
  %_raw_array5570 = call i64* @oat_alloc_array(i64 3)
  %_array5571 = bitcast i64* %_raw_array5570 to { i64, [0 x i64] }*
  %_5578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5571, i32 0, i32 1, i32 2
  store i64 2, i64* %_5578
  %_5574 = load i64, i64* %_5543
  %_5575 = load i64, i64* %_5543
  %_5576 = sub i64 %_5574, %_5575
  %_5577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5571, i32 0, i32 1, i32 1
  store i64 %_5576, i64* %_5577
  %_5572 = load i64, i64* %_5543
  %_5573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5571, i32 0, i32 1, i32 0
  store i64 %_5572, i64* %_5573
  %_5579 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5569, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5571, { i64, [0 x i64] }** %_5579
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5569, { i64, [0 x { i64, [0 x i64] }*] }** %_5567
  %_5599 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5544
  %_5600 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5567
  %_5598 = call { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %_5599, { i64, [0 x { i64, [0 x i64] }*] }* %_5600)
  %_5601 = load i64, i64* %_5543
  %_5602 = load i64, i64* %_5543
  %_5603 = xor i64 -1, %_5602
  %_5604 = icmp eq i64 %_5601, %_5603
  call void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %_5598, i1 %_5604)
  %_5605 = load i64, i64* %_5543
  %_5606 = load i64, i64* %_5543
  %_5607 = icmp eq i64 %_5605, %_5606
  br i1 %_5607, label %_5608, label %_5609
_5608:
  ret i64 0
_5609:
  br label %_5610
_5610:
  %_5611 = sub i64 0, 1
  ret i64 %_5611
}

define { i64, [0 x { i64, [0 x i64] }*] }* @new_mat() {
  %_raw_array5509 = call i64* @oat_alloc_array(i64 3)
  %_array5510 = bitcast i64* %_raw_array5509 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5517 = call i64* @oat_alloc_array(i64 3)
  %_array5518 = bitcast i64* %_raw_array5517 to { i64, [0 x i64] }*
  %_5519 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5510, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5518, { i64, [0 x i64] }** %_5519
  %_raw_array5514 = call i64* @oat_alloc_array(i64 3)
  %_array5515 = bitcast i64* %_raw_array5514 to { i64, [0 x i64] }*
  %_5516 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5510, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5515, { i64, [0 x i64] }** %_5516
  %_raw_array5511 = call i64* @oat_alloc_array(i64 3)
  %_array5512 = bitcast i64* %_raw_array5511 to { i64, [0 x i64] }*
  %_5513 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5510, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5512, { i64, [0 x i64] }** %_5513
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_array5510
}

define { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }* %matb) {
  %_5451 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }** %_5451
  %_5452 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %matb, { i64, [0 x { i64, [0 x i64] }*] }** %_5452
  %_5453 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_5455 = alloca i64
  %_5461 = alloca i64
  %_5467 = alloca i64
  %_5454 = call { i64, [0 x { i64, [0 x i64] }*] }* @new_mat()
  store { i64, [0 x { i64, [0 x i64] }*] }* %_5454, { i64, [0 x { i64, [0 x i64] }*] }** %_5453
  store i64 0, i64* %_5455
  br label %_5458
_5458:
  %_5456 = load i64, i64* %_5455
  %_5457 = icmp slt i64 %_5456, 3
  br i1 %_5457, label %_5459, label %_5460
_5459:
  store i64 0, i64* %_5461
  br label %_5464
_5464:
  %_5462 = load i64, i64* %_5461
  %_5463 = icmp slt i64 %_5462, 3
  br i1 %_5463, label %_5465, label %_5466
_5465:
  store i64 0, i64* %_5467
  br label %_5470
_5470:
  %_5468 = load i64, i64* %_5467
  %_5469 = icmp slt i64 %_5468, 3
  br i1 %_5469, label %_5471, label %_5472
_5471:
  %_5473 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5453
  %_5474 = load i64, i64* %_5455
  %_5475 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5473, i32 0, i32 1, i64 %_5474
  %_5476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5475
  %_5477 = load i64, i64* %_5461
  %_5478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5476, i32 0, i32 1, i64 %_5477
  %_5479 = load i64, i64* %_5478
  %_5480 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5451
  %_5481 = load i64, i64* %_5455
  %_5482 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5480, i32 0, i32 1, i64 %_5481
  %_5483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5482
  %_5484 = load i64, i64* %_5467
  %_5485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5483, i32 0, i32 1, i64 %_5484
  %_5486 = load i64, i64* %_5485
  %_5487 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5452
  %_5488 = load i64, i64* %_5467
  %_5489 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5487, i32 0, i32 1, i64 %_5488
  %_5490 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5489
  %_5491 = load i64, i64* %_5461
  %_5492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5490, i32 0, i32 1, i64 %_5491
  %_5493 = load i64, i64* %_5492
  %_5494 = mul i64 %_5486, %_5493
  %_5495 = add i64 %_5479, %_5494
  %_5497 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5453
  %_5498 = load i64, i64* %_5455
  %_5499 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5497, i32 0, i32 1, i64 %_5498
  %_5500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5499
  %_5501 = load i64, i64* %_5461
  %_5496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5500, i32 0, i32 1, i64 %_5501
  store i64 %_5495, i64* %_5496
  %_5502 = load i64, i64* %_5467
  %_5503 = add i64 %_5502, 1
  store i64 %_5503, i64* %_5467
  br label %_5470
_5472:
  %_5504 = load i64, i64* %_5461
  %_5505 = add i64 %_5504, 1
  store i64 %_5505, i64* %_5461
  br label %_5464
_5466:
  %_5506 = load i64, i64* %_5455
  %_5507 = add i64 %_5506, 1
  store i64 %_5507, i64* %_5455
  br label %_5458
_5460:
  %_5508 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5453
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_5508
}

define void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %mat, i1 %pretty) {
  %_5408 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %mat, { i64, [0 x { i64, [0 x i64] }*] }** %_5408
  %_5409 = alloca i1
  store i1 %pretty, i1* %_5409
  %_5410 = alloca i64
  %_5423 = alloca i64
  store i64 0, i64* %_5410
  br label %_5413
_5413:
  %_5411 = load i64, i64* %_5410
  %_5412 = icmp slt i64 %_5411, 3
  br i1 %_5412, label %_5414, label %_5415
_5414:
  %_5416 = load i1, i1* %_5409
  br i1 %_5416, label %_5417, label %_5418
_5417:
  %_5422 = getelementptr [3 x i8], [3 x i8]* @_5421, i32 0, i32 0
  call void @print_string(i8* %_5422)
  br label %_5419
_5418:
  br label %_5419
_5419:
  store i64 0, i64* %_5423
  br label %_5426
_5426:
  %_5424 = load i64, i64* %_5423
  %_5425 = icmp slt i64 %_5424, 3
  br i1 %_5425, label %_5427, label %_5428
_5427:
  %_5430 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5408
  %_5431 = load i64, i64* %_5410
  %_5432 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5430, i32 0, i32 1, i64 %_5431
  %_5433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5432
  %_5434 = load i64, i64* %_5423
  %_5435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5433, i32 0, i32 1, i64 %_5434
  %_5436 = load i64, i64* %_5435
  call void @print_int(i64 %_5436)
  %_5439 = getelementptr [2 x i8], [2 x i8]* @_5438, i32 0, i32 0
  call void @print_string(i8* %_5439)
  %_5440 = load i64, i64* %_5423
  %_5441 = add i64 %_5440, 1
  store i64 %_5441, i64* %_5423
  br label %_5426
_5428:
  %_5442 = load i1, i1* %_5409
  br i1 %_5442, label %_5443, label %_5444
_5443:
  %_5448 = getelementptr [4 x i8], [4 x i8]* @_5447, i32 0, i32 0
  call void @print_string(i8* %_5448)
  br label %_5445
_5444:
  br label %_5445
_5445:
  %_5449 = load i64, i64* %_5410
  %_5450 = add i64 %_5449, 1
  store i64 %_5450, i64* %_5410
  br label %_5413
_5415:
  ret void
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
