; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_6493 = alloca i64
  store i64 %x, i64* %_6493
  %_6494 = alloca i64
  store i64 %y, i64* %_6494
  %_6495 = load i64, i64* %_6493
  %_6496 = load i64, i64* %_6494
  %_6497 = icmp eq i64 %_6495, %_6496
  br i1 %_6497, label %_6498, label %_6499
_6498:
  %_6501 = load i64, i64* %_6493
  ret i64 %_6501
_6499:
  br label %_6500
_6500:
  %_6502 = load i64, i64* %_6493
  %_6503 = icmp eq i64 %_6502, 0
  br i1 %_6503, label %_6504, label %_6505
_6504:
  %_6507 = load i64, i64* %_6494
  ret i64 %_6507
_6505:
  br label %_6506
_6506:
  %_6508 = load i64, i64* %_6494
  %_6509 = icmp eq i64 %_6508, 0
  br i1 %_6509, label %_6510, label %_6511
_6510:
  %_6513 = load i64, i64* %_6493
  ret i64 %_6513
_6511:
  br label %_6512
_6512:
  %_6514 = load i64, i64* %_6493
  %_6515 = xor i64 -1, %_6514
  %_6516 = and i64 %_6515, 1
  %_6517 = icmp eq i64 %_6516, 1
  br i1 %_6517, label %_6518, label %_6519
_6518:
  %_6521 = load i64, i64* %_6494
  %_6522 = and i64 %_6521, 1
  %_6523 = icmp eq i64 %_6522, 1
  br i1 %_6523, label %_6524, label %_6525
_6524:
  %_6528 = load i64, i64* %_6493
  %_6529 = lshr i64 %_6528, 1
  %_6530 = load i64, i64* %_6494
  %_6527 = call i64 @binary_gcd(i64 %_6529, i64 %_6530)
  ret i64 %_6527
_6525:
  %_6532 = load i64, i64* %_6493
  %_6533 = lshr i64 %_6532, 1
  %_6534 = load i64, i64* %_6494
  %_6535 = lshr i64 %_6534, 1
  %_6531 = call i64 @binary_gcd(i64 %_6533, i64 %_6535)
  %_6536 = shl i64 %_6531, 1
  ret i64 %_6536
_6519:
  br label %_6520
_6520:
  %_6537 = load i64, i64* %_6494
  %_6538 = xor i64 -1, %_6537
  %_6539 = and i64 %_6538, 1
  %_6540 = icmp eq i64 %_6539, 1
  br i1 %_6540, label %_6541, label %_6542
_6541:
  %_6545 = load i64, i64* %_6493
  %_6546 = load i64, i64* %_6494
  %_6547 = lshr i64 %_6546, 1
  %_6544 = call i64 @binary_gcd(i64 %_6545, i64 %_6547)
  ret i64 %_6544
_6542:
  br label %_6543
_6543:
  %_6548 = load i64, i64* %_6493
  %_6549 = load i64, i64* %_6494
  %_6550 = icmp sgt i64 %_6548, %_6549
  br i1 %_6550, label %_6551, label %_6552
_6551:
  %_6555 = load i64, i64* %_6493
  %_6556 = load i64, i64* %_6494
  %_6557 = sub i64 %_6555, %_6556
  %_6558 = lshr i64 %_6557, 1
  %_6559 = load i64, i64* %_6494
  %_6554 = call i64 @binary_gcd(i64 %_6558, i64 %_6559)
  ret i64 %_6554
_6552:
  br label %_6553
_6553:
  %_6561 = load i64, i64* %_6494
  %_6562 = load i64, i64* %_6493
  %_6563 = sub i64 %_6561, %_6562
  %_6564 = lshr i64 %_6563, 1
  %_6565 = load i64, i64* %_6493
  %_6560 = call i64 @binary_gcd(i64 %_6564, i64 %_6565)
  ret i64 %_6560
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6486 = alloca i64
  store i64 %argc, i64* %_6486
  %_6487 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6487
  %_6488 = alloca i64
  %_6489 = alloca i64
  store i64 21, i64* %_6488
  store i64 15, i64* %_6489
  %_6491 = load i64, i64* %_6488
  %_6492 = load i64, i64* %_6489
  %_6490 = call i64 @binary_gcd(i64 %_6491, i64 %_6492)
  ret i64 %_6490
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
