; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_6707 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_6707
  %_6708 = alloca i64
  store i64 %len, i64* %_6708
  %_6709 = alloca i64
  %_6710 = alloca i64
  %_6733 = alloca i64
  store i64 1, i64* %_6709
  store i64 2, i64* %_6710
  br label %_6714
_6714:
  %_6711 = load i64, i64* %_6709
  %_6712 = load i64, i64* %_6708
  %_6713 = icmp slt i64 %_6711, %_6712
  br i1 %_6713, label %_6715, label %_6716
_6715:
  %_6717 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6707
  %_6718 = load i64, i64* %_6709
  %_6719 = sub i64 %_6718, 1
  %_6720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6717, i32 0, i32 1, i64 %_6719
  %_6721 = load i64, i64* %_6720
  %_6722 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6707
  %_6723 = load i64, i64* %_6709
  %_6724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6722, i32 0, i32 1, i64 %_6723
  %_6725 = load i64, i64* %_6724
  %_6726 = icmp sle i64 %_6721, %_6725
  br i1 %_6726, label %_6727, label %_6728
_6727:
  %_6730 = load i64, i64* %_6710
  store i64 %_6730, i64* %_6709
  %_6731 = load i64, i64* %_6710
  %_6732 = add i64 %_6731, 1
  store i64 %_6732, i64* %_6710
  br label %_6729
_6728:
  %_6734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6707
  %_6735 = load i64, i64* %_6709
  %_6736 = sub i64 %_6735, 1
  %_6737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6734, i32 0, i32 1, i64 %_6736
  %_6738 = load i64, i64* %_6737
  store i64 %_6738, i64* %_6733
  %_6739 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6707
  %_6740 = load i64, i64* %_6709
  %_6741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6739, i32 0, i32 1, i64 %_6740
  %_6742 = load i64, i64* %_6741
  %_6744 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6707
  %_6745 = load i64, i64* %_6709
  %_6746 = sub i64 %_6745, 1
  %_6743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6744, i32 0, i32 1, i64 %_6746
  store i64 %_6742, i64* %_6743
  %_6747 = load i64, i64* %_6733
  %_6749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6707
  %_6750 = load i64, i64* %_6709
  %_6748 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6749, i32 0, i32 1, i64 %_6750
  store i64 %_6747, i64* %_6748
  %_6751 = load i64, i64* %_6709
  %_6752 = sub i64 %_6751, 1
  store i64 %_6752, i64* %_6709
  %_6753 = load i64, i64* %_6709
  %_6754 = icmp eq i64 %_6753, 0
  br i1 %_6754, label %_6755, label %_6756
_6755:
  %_6758 = load i64, i64* %_6710
  store i64 %_6758, i64* %_6709
  %_6759 = load i64, i64* %_6710
  %_6760 = add i64 %_6759, 1
  store i64 %_6760, i64* %_6710
  br label %_6757
_6756:
  br label %_6757
_6757:
  br label %_6729
_6729:
  br label %_6714
_6716:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6677 = alloca i64
  store i64 %argc, i64* %_6677
  %_6678 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6678
  %_6679 = alloca { i64, [0 x i64] }*
  %_6690 = alloca i64
  %_6694 = alloca i64
  %_raw_array6680 = call i64* @oat_alloc_array(i64 8)
  %_array6681 = bitcast i64* %_raw_array6680 to { i64, [0 x i64] }*
  %_6689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6681, i32 0, i32 1, i32 7
  store i64 0, i64* %_6689
  %_6688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6681, i32 0, i32 1, i32 6
  store i64 2, i64* %_6688
  %_6687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6681, i32 0, i32 1, i32 5
  store i64 99, i64* %_6687
  %_6686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6681, i32 0, i32 1, i32 4
  store i64 30, i64* %_6686
  %_6685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6681, i32 0, i32 1, i32 3
  store i64 65, i64* %_6685
  %_6684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6681, i32 0, i32 1, i32 2
  store i64 1, i64* %_6684
  %_6683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6681, i32 0, i32 1, i32 1
  store i64 200, i64* %_6683
  %_6682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6681, i32 0, i32 1, i32 0
  store i64 5, i64* %_6682
  store { i64, [0 x i64] }* %_array6681, { i64, [0 x i64] }** %_6679
  store i64 8, i64* %_6690
  %_6692 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6679
  %_6693 = load i64, i64* %_6690
  call void @gnomeSort({ i64, [0 x i64] }* %_6692, i64 %_6693)
  store i64 0, i64* %_6694
  br label %_6697
_6697:
  %_6695 = load i64, i64* %_6694
  %_6696 = icmp slt i64 %_6695, 8
  br i1 %_6696, label %_6698, label %_6699
_6698:
  %_6701 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6679
  %_6702 = load i64, i64* %_6694
  %_6703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6701, i32 0, i32 1, i64 %_6702
  %_6704 = load i64, i64* %_6703
  call void @print_int(i64 %_6704)
  %_6705 = load i64, i64* %_6694
  %_6706 = add i64 %_6705, 1
  store i64 %_6706, i64* %_6694
  br label %_6697
_6699:
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
