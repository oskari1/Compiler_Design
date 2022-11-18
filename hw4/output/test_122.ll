; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_6676 to { i64, [0 x i1] }*)
@_6676 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_6661 = global [2 x i8] c"T\00"
@_6663 = global [2 x i8] c"F\00"
@_6634 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_6665 = alloca i1
  store i1 %x, i1* %_6665
  %_6666 = alloca i1
  store i1 %y, i1* %_6666
  %_6667 = load i1, i1* %_6665
  %_6668 = load i1, i1* %_6666
  %_6669 = icmp eq i1 %_6668, 0
  %_6670 = and i1 %_6667, %_6669
  %_6671 = load i1, i1* %_6665
  %_6672 = icmp eq i1 %_6671, 0
  %_6673 = load i1, i1* %_6666
  %_6674 = and i1 %_6672, %_6673
  %_6675 = or i1 %_6670, %_6674
  ret i1 %_6675
}

define i8* @string_of_bool(i1 %b) {
  %_6656 = alloca i1
  store i1 %b, i1* %_6656
  %_6657 = load i1, i1* %_6656
  br i1 %_6657, label %_6658, label %_6659
_6658:
  %_6662 = getelementptr [2 x i8], [2 x i8]* @_6661, i32 0, i32 0
  ret i8* %_6662
_6659:
  %_6664 = getelementptr [2 x i8], [2 x i8]* @_6663, i32 0, i32 0
  ret i8* %_6664
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_6639 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_6639
  %_6640 = alloca i64
  store i64 %len, i64* %_6640
  %_6641 = alloca i64
  store i64 0, i64* %_6641
  br label %_6645
_6645:
  %_6642 = load i64, i64* %_6641
  %_6643 = load i64, i64* %_6640
  %_6644 = icmp slt i64 %_6642, %_6643
  br i1 %_6644, label %_6646, label %_6647
_6646:
  %_6650 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6639
  %_6651 = load i64, i64* %_6641
  %_6652 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6650, i32 0, i32 1, i64 %_6651
  %_6653 = load i1, i1* %_6652
  %_6649 = call i8* @string_of_bool(i1 %_6653)
  call void @print_string(i8* %_6649)
  %_6654 = load i64, i64* %_6641
  %_6655 = add i64 %_6654, 1
  store i64 %_6655, i64* %_6641
  br label %_6645
_6647:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6566 = alloca i64
  store i64 %argc, i64* %_6566
  %_6567 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6567
  %_6568 = alloca { i64, [0 x i1] }*
  %_6572 = alloca i64
  %_6588 = alloca i64
  %_6595 = alloca i1
  %_6607 = alloca i64
  %_6569 = load i64, i64* @lfsr_length
  %_raw_array6570 = call i64* @oat_alloc_array(i64 %_6569)
  %_array6571 = bitcast i64* %_raw_array6570 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array6571, { i64, [0 x i1] }** %_6568
  store i64 0, i64* %_6572
  br label %_6576
_6576:
  %_6573 = load i64, i64* %_6572
  %_6574 = load i64, i64* @lfsr_length
  %_6575 = icmp slt i64 %_6573, %_6574
  br i1 %_6575, label %_6577, label %_6578
_6577:
  %_6579 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_6580 = load i64, i64* %_6572
  %_6581 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6579, i32 0, i32 1, i64 %_6580
  %_6582 = load i1, i1* %_6581
  %_6584 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6568
  %_6585 = load i64, i64* %_6572
  %_6583 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6584, i32 0, i32 1, i64 %_6585
  store i1 %_6582, i1* %_6583
  %_6586 = load i64, i64* %_6572
  %_6587 = add i64 %_6586, 1
  store i64 %_6587, i64* %_6572
  br label %_6576
_6578:
  store i64 0, i64* %_6588
  br label %_6592
_6592:
  %_6589 = load i64, i64* %_6588
  %_6590 = load i64, i64* @lfsr_iterations
  %_6591 = icmp slt i64 %_6589, %_6590
  br i1 %_6591, label %_6593, label %_6594
_6593:
  %_6597 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6568
  %_6598 = load i64, i64* @lfsr_length
  %_6599 = sub i64 %_6598, 1
  %_6600 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6597, i32 0, i32 1, i64 %_6599
  %_6601 = load i1, i1* %_6600
  %_6602 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6568
  %_6603 = load i64, i64* @lfsr_length
  %_6604 = sub i64 %_6603, 2
  %_6605 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6602, i32 0, i32 1, i64 %_6604
  %_6606 = load i1, i1* %_6605
  %_6596 = call i1 @xor(i1 %_6601, i1 %_6606)
  store i1 %_6596, i1* %_6595
  %_6608 = load i64, i64* @lfsr_length
  %_6609 = sub i64 %_6608, 1
  store i64 %_6609, i64* %_6607
  br label %_6612
_6612:
  %_6610 = load i64, i64* %_6607
  %_6611 = icmp sgt i64 %_6610, 0
  br i1 %_6611, label %_6613, label %_6614
_6613:
  %_6615 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6568
  %_6616 = load i64, i64* %_6607
  %_6617 = sub i64 %_6616, 1
  %_6618 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6615, i32 0, i32 1, i64 %_6617
  %_6619 = load i1, i1* %_6618
  %_6621 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6568
  %_6622 = load i64, i64* %_6607
  %_6620 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6621, i32 0, i32 1, i64 %_6622
  store i1 %_6619, i1* %_6620
  %_6623 = load i64, i64* %_6607
  %_6624 = sub i64 %_6623, 1
  store i64 %_6624, i64* %_6607
  br label %_6612
_6614:
  %_6625 = load i1, i1* %_6595
  %_6627 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6568
  %_6626 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6627, i32 0, i32 1, i32 0
  store i1 %_6625, i1* %_6626
  %_6628 = load i64, i64* %_6588
  %_6629 = add i64 %_6628, 1
  store i64 %_6629, i64* %_6588
  br label %_6592
_6594:
  %_6631 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_6632 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_6631, i64 %_6632)
  %_6635 = getelementptr [2 x i8], [2 x i8]* @_6634, i32 0, i32 0
  call void @print_string(i8* %_6635)
  %_6637 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6568
  %_6638 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_6637, i64 %_6638)
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
