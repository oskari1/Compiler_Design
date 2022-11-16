; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_594 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_594
  %_595 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_594
  %_596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_595, i32 0, i32 1, i32 1
  %_597 = load i64, i64* %_596
  ret i64 %_597
}

define i64 @g(i64 %x) {
  %_575 = alloca i64
  store i64 %x, i64* %_575
  %_576 = alloca { i64, [0 x i64] }*
  %_579 = alloca i64
  %_raw_array577 = call i64* @oat_alloc_array(i64 3)
  %_array578 = bitcast i64* %_raw_array577 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array578, { i64, [0 x i64] }** %_576
  store i64 0, i64* %_579
  br label %_582
_582:
  %_580 = load i64, i64* %_579
  %_581 = icmp slt i64 %_580, 3
  br i1 %_581, label %_583, label %_584
_583:
  %_585 = load i64, i64* %_575
  %_587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_576
  %_588 = load i64, i64* %_579
  %_586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_587, i32 0, i32 1, i64 %_588
  store i64 %_585, i64* %_586
  %_589 = load i64, i64* %_579
  %_590 = add i64 %_589, 1
  store i64 %_590, i64* %_579
  br label %_582
_584:
  %_591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_576
  %_592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_591, i32 0, i32 1, i32 1
  %_593 = load i64, i64* %_592
  ret i64 %_593
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_513 = alloca i64
  store i64 %argc, i64* %_513
  %_514 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_514
  %_515 = alloca { i64, [0 x i64] }*
  %_518 = alloca i64
  %_530 = alloca { i64, [0 x i64] }*
  %_533 = alloca i64
  %_547 = alloca { i64, [0 x i64] }*
  %_550 = alloca i64
  %_raw_array516 = call i64* @oat_alloc_array(i64 3)
  %_array517 = bitcast i64* %_raw_array516 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array517, { i64, [0 x i64] }** %_515
  store i64 0, i64* %_518
  br label %_521
_521:
  %_519 = load i64, i64* %_518
  %_520 = icmp slt i64 %_519, 3
  br i1 %_520, label %_522, label %_523
_522:
  %_524 = load i64, i64* %_518
  %_526 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_515
  %_527 = load i64, i64* %_518
  %_525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_526, i32 0, i32 1, i64 %_527
  store i64 %_524, i64* %_525
  %_528 = load i64, i64* %_518
  %_529 = add i64 %_528, 1
  store i64 %_529, i64* %_518
  br label %_521
_523:
  %_raw_array531 = call i64* @oat_alloc_array(i64 4)
  %_array532 = bitcast i64* %_raw_array531 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array532, { i64, [0 x i64] }** %_530
  store i64 0, i64* %_533
  br label %_536
_536:
  %_534 = load i64, i64* %_533
  %_535 = icmp slt i64 %_534, 4
  br i1 %_535, label %_537, label %_538
_537:
  %_539 = load i64, i64* %_533
  %_540 = load i64, i64* %_533
  %_541 = mul i64 %_539, %_540
  %_543 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_530
  %_544 = load i64, i64* %_533
  %_542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_543, i32 0, i32 1, i64 %_544
  store i64 %_541, i64* %_542
  %_545 = load i64, i64* %_533
  %_546 = add i64 %_545, 1
  store i64 %_546, i64* %_533
  br label %_536
_538:
  %_raw_array548 = call i64* @oat_alloc_array(i64 3)
  %_array549 = bitcast i64* %_raw_array548 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array549, { i64, [0 x i64] }** %_547
  store i64 0, i64* %_550
  br label %_553
_553:
  %_551 = load i64, i64* %_550
  %_552 = icmp slt i64 %_551, 3
  br i1 %_552, label %_554, label %_555
_554:
  %_556 = load i64, i64* %_550
  %_557 = mul i64 2, %_556
  %_559 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_547
  %_560 = load i64, i64* %_550
  %_558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_559, i32 0, i32 1, i64 %_560
  store i64 %_557, i64* %_558
  %_561 = load i64, i64* %_550
  %_562 = add i64 %_561, 1
  store i64 %_562, i64* %_550
  br label %_553
_555:
  %_563 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_530
  %_564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_563, i32 0, i32 1, i32 3
  %_565 = load i64, i64* %_564
  %_566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_515
  %_567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_566, i32 0, i32 1, i32 1
  %_568 = load i64, i64* %_567
  %_569 = add i64 %_565, %_568
  %_571 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_547
  %_570 = call i64 @f({ i64, [0 x i64] }* %_571)
  %_572 = add i64 %_569, %_570
  %_573 = call i64 @g(i64 4)
  %_574 = add i64 %_572, %_573
  ret i64 %_574
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
