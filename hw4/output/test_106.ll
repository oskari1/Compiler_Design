; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_4663 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_4663
  %_4664 = alloca i64
  store i64 %size, i64* %_4664
  %_4665 = alloca { i64, [0 x i64] }*
  %_4669 = alloca i64
  %_4675 = alloca i64
  %_4682 = alloca i64
  %_4666 = load i64, i64* %_4664
  %_raw_array4667 = call i64* @oat_alloc_array(i64 %_4666)
  %_array4668 = bitcast i64* %_raw_array4667 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4668, { i64, [0 x i64] }** %_4665
  store i64 0, i64* %_4669
  %_4670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4663
  %_4671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4670, i32 0, i32 1, i32 0
  %_4672 = load i64, i64* %_4671
  %_4674 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4665
  %_4673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4674, i32 0, i32 1, i32 0
  store i64 %_4672, i64* %_4673
  store i64 0, i64* %_4675
  br label %_4679
_4679:
  %_4676 = load i64, i64* %_4675
  %_4677 = load i64, i64* %_4664
  %_4678 = icmp slt i64 %_4676, %_4677
  br i1 %_4678, label %_4680, label %_4681
_4680:
  store i64 0, i64* %_4682
  br label %_4686
_4686:
  %_4683 = load i64, i64* %_4682
  %_4684 = load i64, i64* %_4675
  %_4685 = icmp slt i64 %_4683, %_4684
  br i1 %_4685, label %_4687, label %_4688
_4687:
  %_4689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4663
  %_4690 = load i64, i64* %_4675
  %_4691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4689, i32 0, i32 1, i64 %_4690
  %_4692 = load i64, i64* %_4691
  %_4693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4663
  %_4694 = load i64, i64* %_4682
  %_4695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4693, i32 0, i32 1, i64 %_4694
  %_4696 = load i64, i64* %_4695
  %_4697 = icmp sgt i64 %_4692, %_4696
  %_4698 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4665
  %_4699 = load i64, i64* %_4675
  %_4700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4698, i32 0, i32 1, i64 %_4699
  %_4701 = load i64, i64* %_4700
  %_4702 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4665
  %_4703 = load i64, i64* %_4682
  %_4704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4702, i32 0, i32 1, i64 %_4703
  %_4705 = load i64, i64* %_4704
  %_4706 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4663
  %_4707 = load i64, i64* %_4675
  %_4708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4706, i32 0, i32 1, i64 %_4707
  %_4709 = load i64, i64* %_4708
  %_4710 = add i64 %_4705, %_4709
  %_4711 = icmp slt i64 %_4701, %_4710
  %_4712 = and i1 %_4697, %_4711
  br i1 %_4712, label %_4713, label %_4714
_4713:
  %_4716 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4665
  %_4717 = load i64, i64* %_4682
  %_4718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4716, i32 0, i32 1, i64 %_4717
  %_4719 = load i64, i64* %_4718
  %_4720 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4663
  %_4721 = load i64, i64* %_4675
  %_4722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4720, i32 0, i32 1, i64 %_4721
  %_4723 = load i64, i64* %_4722
  %_4724 = add i64 %_4719, %_4723
  %_4726 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4665
  %_4727 = load i64, i64* %_4675
  %_4725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4726, i32 0, i32 1, i64 %_4727
  store i64 %_4724, i64* %_4725
  br label %_4715
_4714:
  br label %_4715
_4715:
  %_4728 = load i64, i64* %_4682
  %_4729 = add i64 %_4728, 1
  store i64 %_4729, i64* %_4682
  br label %_4686
_4688:
  %_4730 = load i64, i64* %_4669
  %_4731 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4665
  %_4732 = load i64, i64* %_4675
  %_4733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4731, i32 0, i32 1, i64 %_4732
  %_4734 = load i64, i64* %_4733
  %_4735 = icmp slt i64 %_4730, %_4734
  br i1 %_4735, label %_4736, label %_4737
_4736:
  %_4739 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4665
  %_4740 = load i64, i64* %_4675
  %_4741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4739, i32 0, i32 1, i64 %_4740
  %_4742 = load i64, i64* %_4741
  store i64 %_4742, i64* %_4669
  br label %_4738
_4737:
  br label %_4738
_4738:
  %_4743 = load i64, i64* %_4675
  %_4744 = add i64 %_4743, 1
  store i64 %_4744, i64* %_4675
  br label %_4679
_4681:
  %_4745 = load i64, i64* %_4669
  ret i64 %_4745
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4647 = alloca i64
  store i64 %argc, i64* %_4647
  %_4648 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4648
  %_4649 = alloca { i64, [0 x i64] }*
  %_4659 = alloca i64
  %_raw_array4650 = call i64* @oat_alloc_array(i64 7)
  %_array4651 = bitcast i64* %_raw_array4650 to { i64, [0 x i64] }*
  %_4658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 6
  store i64 5, i64* %_4658
  %_4657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 5
  store i64 4, i64* %_4657
  %_4656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 4
  store i64 101, i64* %_4656
  %_4655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 3
  store i64 3, i64* %_4655
  %_4654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 2
  store i64 2, i64* %_4654
  %_4653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 1
  store i64 101, i64* %_4653
  %_4652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4651, i32 0, i32 1, i32 0
  store i64 1, i64* %_4652
  store { i64, [0 x i64] }* %_array4651, { i64, [0 x i64] }** %_4649
  %_4661 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4649
  %_4660 = call i64 @maxsum({ i64, [0 x i64] }* %_4661, i64 7)
  store i64 %_4660, i64* %_4659
  %_4662 = load i64, i64* %_4659
  ret i64 %_4662
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
