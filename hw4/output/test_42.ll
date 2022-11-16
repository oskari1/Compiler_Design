; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_637 = alloca i64
  store i64 %argc, i64* %_637
  %_638 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_638
  %_639 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_651 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_663 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_675 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_687 = alloca { i64, [0 x i64] }*
  %_raw_array640 = call i64* @oat_alloc_array(i64 3)
  %_array641 = bitcast i64* %_raw_array640 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array648 = call i64* @oat_alloc_array(i64 1)
  %_array649 = bitcast i64* %_raw_array648 to { i64, [0 x i64] }*
  %_650 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array641, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array649, { i64, [0 x i64] }** %_650
  %_raw_array645 = call i64* @oat_alloc_array(i64 1)
  %_array646 = bitcast i64* %_raw_array645 to { i64, [0 x i64] }*
  %_647 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array641, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array646, { i64, [0 x i64] }** %_647
  %_raw_array642 = call i64* @oat_alloc_array(i64 1)
  %_array643 = bitcast i64* %_raw_array642 to { i64, [0 x i64] }*
  %_644 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array641, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array643, { i64, [0 x i64] }** %_644
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array641, { i64, [0 x { i64, [0 x i64] }*] }** %_639
  %_raw_array652 = call i64* @oat_alloc_array(i64 3)
  %_array653 = bitcast i64* %_raw_array652 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array660 = call i64* @oat_alloc_array(i64 1)
  %_array661 = bitcast i64* %_raw_array660 to { i64, [0 x i64] }*
  %_662 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array653, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array661, { i64, [0 x i64] }** %_662
  %_raw_array657 = call i64* @oat_alloc_array(i64 1)
  %_array658 = bitcast i64* %_raw_array657 to { i64, [0 x i64] }*
  %_659 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array653, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array658, { i64, [0 x i64] }** %_659
  %_raw_array654 = call i64* @oat_alloc_array(i64 1)
  %_array655 = bitcast i64* %_raw_array654 to { i64, [0 x i64] }*
  %_656 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array653, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array655, { i64, [0 x i64] }** %_656
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array653, { i64, [0 x { i64, [0 x i64] }*] }** %_651
  %_raw_array664 = call i64* @oat_alloc_array(i64 3)
  %_array665 = bitcast i64* %_raw_array664 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array672 = call i64* @oat_alloc_array(i64 1)
  %_array673 = bitcast i64* %_raw_array672 to { i64, [0 x i64] }*
  %_674 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array665, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array673, { i64, [0 x i64] }** %_674
  %_raw_array669 = call i64* @oat_alloc_array(i64 1)
  %_array670 = bitcast i64* %_raw_array669 to { i64, [0 x i64] }*
  %_671 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array665, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array670, { i64, [0 x i64] }** %_671
  %_raw_array666 = call i64* @oat_alloc_array(i64 1)
  %_array667 = bitcast i64* %_raw_array666 to { i64, [0 x i64] }*
  %_668 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array665, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array667, { i64, [0 x i64] }** %_668
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array665, { i64, [0 x { i64, [0 x i64] }*] }** %_663
  %_raw_array676 = call i64* @oat_alloc_array(i64 3)
  %_array677 = bitcast i64* %_raw_array676 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array684 = call i64* @oat_alloc_array(i64 1)
  %_array685 = bitcast i64* %_raw_array684 to { i64, [0 x i64] }*
  %_686 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array677, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array685, { i64, [0 x i64] }** %_686
  %_raw_array681 = call i64* @oat_alloc_array(i64 1)
  %_array682 = bitcast i64* %_raw_array681 to { i64, [0 x i64] }*
  %_683 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array677, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array682, { i64, [0 x i64] }** %_683
  %_raw_array678 = call i64* @oat_alloc_array(i64 1)
  %_array679 = bitcast i64* %_raw_array678 to { i64, [0 x i64] }*
  %_680 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array677, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array679, { i64, [0 x i64] }** %_680
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array677, { i64, [0 x { i64, [0 x i64] }*] }** %_675
  %_raw_array688 = call i64* @oat_alloc_array(i64 3)
  %_array689 = bitcast i64* %_raw_array688 to { i64, [0 x i64] }*
  %_692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array689, i32 0, i32 1, i32 2
  store i64 2, i64* %_692
  %_691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array689, i32 0, i32 1, i32 1
  store i64 1, i64* %_691
  %_690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array689, i32 0, i32 1, i32 0
  store i64 0, i64* %_690
  store { i64, [0 x i64] }* %_array689, { i64, [0 x i64] }** %_687
  %_693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_687
  %_695 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_651
  %_694 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_695, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_693, { i64, [0 x i64] }** %_694
  %_697 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_651
  %_698 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_697, i32 0, i32 1, i32 0
  %_699 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_698
  %_696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_699, i32 0, i32 1, i32 0
  store i64 2, i64* %_696
  %_700 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_651
  store { i64, [0 x { i64, [0 x i64] }*] }* %_700, { i64, [0 x { i64, [0 x i64] }*] }** %_639
  %_701 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_639
  store { i64, [0 x { i64, [0 x i64] }*] }* %_701, { i64, [0 x { i64, [0 x i64] }*] }** %_663
  %_702 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_675
  store { i64, [0 x { i64, [0 x i64] }*] }* %_702, { i64, [0 x { i64, [0 x i64] }*] }** %_639
  %_703 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_663
  store { i64, [0 x { i64, [0 x i64] }*] }* %_703, { i64, [0 x { i64, [0 x i64] }*] }** %_651
  %_704 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_651
  store { i64, [0 x { i64, [0 x i64] }*] }* %_704, { i64, [0 x { i64, [0 x i64] }*] }** %_675
  %_705 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_675
  store { i64, [0 x { i64, [0 x i64] }*] }* %_705, { i64, [0 x { i64, [0 x i64] }*] }** %_663
  %_706 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_663
  %_707 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_706, i32 0, i32 1, i32 0
  %_708 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_707
  %_709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_708, i32 0, i32 1, i32 0
  %_710 = load i64, i64* %_709
  ret i64 %_710
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
