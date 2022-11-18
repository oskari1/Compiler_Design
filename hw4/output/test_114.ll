; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_5624 = global [2 x i8] c" \00"
@_5629 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5750 = alloca i64
  store i64 %argc, i64* %_5750
  %_5751 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5751
  %_5752 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_5767 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_5791 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5753 = call i64* @oat_alloc_array(i64 2)
  %_array5754 = bitcast i64* %_raw_array5753 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5761 = call i64* @oat_alloc_array(i64 3)
  %_array5762 = bitcast i64* %_raw_array5761 to { i64, [0 x i64] }*
  %_5765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5762, i32 0, i32 1, i32 2
  store i64 1, i64* %_5765
  %_5764 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5762, i32 0, i32 1, i32 1
  store i64 0, i64* %_5764
  %_5763 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5762, i32 0, i32 1, i32 0
  store i64 2, i64* %_5763
  %_5766 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5754, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5762, { i64, [0 x i64] }** %_5766
  %_raw_array5755 = call i64* @oat_alloc_array(i64 3)
  %_array5756 = bitcast i64* %_raw_array5755 to { i64, [0 x i64] }*
  %_5759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5756, i32 0, i32 1, i32 2
  store i64 4, i64* %_5759
  %_5758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5756, i32 0, i32 1, i32 1
  store i64 3, i64* %_5758
  %_5757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5756, i32 0, i32 1, i32 0
  store i64 1, i64* %_5757
  %_5760 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5754, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5756, { i64, [0 x i64] }** %_5760
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5754, { i64, [0 x { i64, [0 x i64] }*] }** %_5752
  %_raw_array5768 = call i64* @oat_alloc_array(i64 3)
  %_array5769 = bitcast i64* %_raw_array5768 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5784 = call i64* @oat_alloc_array(i64 4)
  %_array5785 = bitcast i64* %_raw_array5784 to { i64, [0 x i64] }*
  %_5789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5785, i32 0, i32 1, i32 3
  store i64 4, i64* %_5789
  %_5788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5785, i32 0, i32 1, i32 2
  store i64 1, i64* %_5788
  %_5787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5785, i32 0, i32 1, i32 1
  store i64 2, i64* %_5787
  %_5786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5785, i32 0, i32 1, i32 0
  store i64 3, i64* %_5786
  %_5790 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5769, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5785, { i64, [0 x i64] }** %_5790
  %_raw_array5777 = call i64* @oat_alloc_array(i64 4)
  %_array5778 = bitcast i64* %_raw_array5777 to { i64, [0 x i64] }*
  %_5782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5778, i32 0, i32 1, i32 3
  store i64 2, i64* %_5782
  %_5781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5778, i32 0, i32 1, i32 2
  store i64 2, i64* %_5781
  %_5780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5778, i32 0, i32 1, i32 1
  store i64 2, i64* %_5780
  %_5779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5778, i32 0, i32 1, i32 0
  store i64 2, i64* %_5779
  %_5783 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5769, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5778, { i64, [0 x i64] }** %_5783
  %_raw_array5770 = call i64* @oat_alloc_array(i64 4)
  %_array5771 = bitcast i64* %_raw_array5770 to { i64, [0 x i64] }*
  %_5775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5771, i32 0, i32 1, i32 3
  store i64 1, i64* %_5775
  %_5774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5771, i32 0, i32 1, i32 2
  store i64 3, i64* %_5774
  %_5773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5771, i32 0, i32 1, i32 1
  store i64 2, i64* %_5773
  %_5772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5771, i32 0, i32 1, i32 0
  store i64 1, i64* %_5772
  %_5776 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5769, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5771, { i64, [0 x i64] }** %_5776
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5769, { i64, [0 x { i64, [0 x i64] }*] }** %_5767
  %_raw_array5792 = call i64* @oat_alloc_array(i64 2)
  %_array5793 = bitcast i64* %_raw_array5792 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5801 = call i64* @oat_alloc_array(i64 4)
  %_array5802 = bitcast i64* %_raw_array5801 to { i64, [0 x i64] }*
  %_5806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5802, i32 0, i32 1, i32 3
  store i64 0, i64* %_5806
  %_5805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5802, i32 0, i32 1, i32 2
  store i64 0, i64* %_5805
  %_5804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5802, i32 0, i32 1, i32 1
  store i64 0, i64* %_5804
  %_5803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5802, i32 0, i32 1, i32 0
  store i64 0, i64* %_5803
  %_5807 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5793, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5802, { i64, [0 x i64] }** %_5807
  %_raw_array5794 = call i64* @oat_alloc_array(i64 4)
  %_array5795 = bitcast i64* %_raw_array5794 to { i64, [0 x i64] }*
  %_5799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5795, i32 0, i32 1, i32 3
  store i64 0, i64* %_5799
  %_5798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5795, i32 0, i32 1, i32 2
  store i64 0, i64* %_5798
  %_5797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5795, i32 0, i32 1, i32 1
  store i64 0, i64* %_5797
  %_5796 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5795, i32 0, i32 1, i32 0
  store i64 0, i64* %_5796
  %_5800 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5793, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5795, { i64, [0 x i64] }** %_5800
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5793, { i64, [0 x { i64, [0 x i64] }*] }** %_5791
  %_5809 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5752
  %_5810 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5767
  %_5811 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5791
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_5809, { i64, [0 x { i64, [0 x i64] }*] }* %_5810, { i64, [0 x { i64, [0 x i64] }*] }* %_5811)
  %_5813 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5791
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_5813, i64 2)
  %_5815 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5752
  %_5816 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5767
  %_5817 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5791
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_5815, { i64, [0 x { i64, [0 x i64] }*] }* %_5816, { i64, [0 x { i64, [0 x i64] }*] }* %_5817)
  %_5819 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5791
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_5819, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_5694 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_5694
  %_5695 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_5695
  %_5696 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_5696
  %_5697 = alloca i64
  %_5703 = alloca i64
  %_5709 = alloca i64
  store i64 0, i64* %_5697
  br label %_5700
_5700:
  %_5698 = load i64, i64* %_5697
  %_5699 = icmp slt i64 %_5698, 2
  br i1 %_5699, label %_5701, label %_5702
_5701:
  store i64 0, i64* %_5703
  br label %_5706
_5706:
  %_5704 = load i64, i64* %_5703
  %_5705 = icmp slt i64 %_5704, 4
  br i1 %_5705, label %_5707, label %_5708
_5707:
  store i64 0, i64* %_5709
  br label %_5712
_5712:
  %_5710 = load i64, i64* %_5709
  %_5711 = icmp slt i64 %_5710, 3
  br i1 %_5711, label %_5713, label %_5714
_5713:
  %_5715 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5696
  %_5716 = load i64, i64* %_5697
  %_5717 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5715, i32 0, i32 1, i64 %_5716
  %_5718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5717
  %_5719 = load i64, i64* %_5703
  %_5720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5718, i32 0, i32 1, i64 %_5719
  %_5721 = load i64, i64* %_5720
  %_5722 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5694
  %_5723 = load i64, i64* %_5697
  %_5724 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5722, i32 0, i32 1, i64 %_5723
  %_5725 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5724
  %_5726 = load i64, i64* %_5709
  %_5727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5725, i32 0, i32 1, i64 %_5726
  %_5728 = load i64, i64* %_5727
  %_5729 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5695
  %_5730 = load i64, i64* %_5709
  %_5731 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5729, i32 0, i32 1, i64 %_5730
  %_5732 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5731
  %_5733 = load i64, i64* %_5703
  %_5734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5732, i32 0, i32 1, i64 %_5733
  %_5735 = load i64, i64* %_5734
  %_5736 = mul i64 %_5728, %_5735
  %_5737 = add i64 %_5721, %_5736
  %_5739 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5696
  %_5740 = load i64, i64* %_5697
  %_5741 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5739, i32 0, i32 1, i64 %_5740
  %_5742 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5741
  %_5743 = load i64, i64* %_5703
  %_5738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5742, i32 0, i32 1, i64 %_5743
  store i64 %_5737, i64* %_5738
  %_5744 = load i64, i64* %_5709
  %_5745 = add i64 %_5744, 1
  store i64 %_5745, i64* %_5709
  br label %_5712
_5714:
  %_5746 = load i64, i64* %_5703
  %_5747 = add i64 %_5746, 1
  store i64 %_5747, i64* %_5703
  br label %_5706
_5708:
  %_5748 = load i64, i64* %_5697
  %_5749 = add i64 %_5748, 1
  store i64 %_5749, i64* %_5697
  br label %_5700
_5702:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_5664 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_5664
  %_5665 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_5665
  %_5666 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_5666
  %_5667 = alloca i64
  %_5673 = alloca i64
  store i64 0, i64* %_5667
  br label %_5670
_5670:
  %_5668 = load i64, i64* %_5667
  %_5669 = icmp slt i64 %_5668, 2
  br i1 %_5669, label %_5671, label %_5672
_5671:
  store i64 0, i64* %_5673
  br label %_5676
_5676:
  %_5674 = load i64, i64* %_5673
  %_5675 = icmp slt i64 %_5674, 4
  br i1 %_5675, label %_5677, label %_5678
_5677:
  %_5680 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5664
  %_5681 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5665
  %_5682 = load i64, i64* %_5667
  %_5683 = load i64, i64* %_5673
  %_5679 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_5680, { i64, [0 x { i64, [0 x i64] }*] }* %_5681, i64 %_5682, i64 %_5683)
  %_5685 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5666
  %_5686 = load i64, i64* %_5667
  %_5687 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5685, i32 0, i32 1, i64 %_5686
  %_5688 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5687
  %_5689 = load i64, i64* %_5673
  %_5684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5688, i32 0, i32 1, i64 %_5689
  store i64 %_5679, i64* %_5684
  %_5690 = load i64, i64* %_5673
  %_5691 = add i64 %_5690, 1
  store i64 %_5691, i64* %_5673
  br label %_5676
_5678:
  %_5692 = load i64, i64* %_5667
  %_5693 = add i64 %_5692, 1
  store i64 %_5693, i64* %_5667
  br label %_5670
_5672:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_5633 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_5633
  %_5634 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_5634
  %_5635 = alloca i64
  store i64 %row, i64* %_5635
  %_5636 = alloca i64
  store i64 %col, i64* %_5636
  %_5637 = alloca i64
  %_5638 = alloca i64
  store i64 0, i64* %_5637
  store i64 0, i64* %_5638
  br label %_5641
_5641:
  %_5639 = load i64, i64* %_5638
  %_5640 = icmp slt i64 %_5639, 3
  br i1 %_5640, label %_5642, label %_5643
_5642:
  %_5644 = load i64, i64* %_5637
  %_5645 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5633
  %_5646 = load i64, i64* %_5635
  %_5647 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5645, i32 0, i32 1, i64 %_5646
  %_5648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5647
  %_5649 = load i64, i64* %_5638
  %_5650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5648, i32 0, i32 1, i64 %_5649
  %_5651 = load i64, i64* %_5650
  %_5652 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5634
  %_5653 = load i64, i64* %_5638
  %_5654 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5652, i32 0, i32 1, i64 %_5653
  %_5655 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5654
  %_5656 = load i64, i64* %_5636
  %_5657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5655, i32 0, i32 1, i64 %_5656
  %_5658 = load i64, i64* %_5657
  %_5659 = mul i64 %_5651, %_5658
  %_5660 = add i64 %_5644, %_5659
  store i64 %_5660, i64* %_5637
  %_5661 = load i64, i64* %_5638
  %_5662 = add i64 %_5661, 1
  store i64 %_5662, i64* %_5638
  br label %_5641
_5643:
  %_5663 = load i64, i64* %_5637
  ret i64 %_5663
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_5600 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_5600
  %_5601 = alloca i64
  store i64 %n, i64* %_5601
  %_5602 = alloca i64
  %_5609 = alloca i64
  store i64 0, i64* %_5602
  br label %_5606
_5606:
  %_5603 = load i64, i64* %_5602
  %_5604 = load i64, i64* %_5601
  %_5605 = icmp slt i64 %_5603, %_5604
  br i1 %_5605, label %_5607, label %_5608
_5607:
  store i64 0, i64* %_5609
  br label %_5612
_5612:
  %_5610 = load i64, i64* %_5609
  %_5611 = icmp slt i64 %_5610, 4
  br i1 %_5611, label %_5613, label %_5614
_5613:
  %_5616 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5600
  %_5617 = load i64, i64* %_5602
  %_5618 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5616, i32 0, i32 1, i64 %_5617
  %_5619 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5618
  %_5620 = load i64, i64* %_5609
  %_5621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5619, i32 0, i32 1, i64 %_5620
  %_5622 = load i64, i64* %_5621
  call void @print_int(i64 %_5622)
  %_5625 = getelementptr [2 x i8], [2 x i8]* @_5624, i32 0, i32 0
  call void @print_string(i8* %_5625)
  %_5626 = load i64, i64* %_5609
  %_5627 = add i64 %_5626, 1
  store i64 %_5627, i64* %_5609
  br label %_5612
_5614:
  %_5630 = getelementptr [2 x i8], [2 x i8]* @_5629, i32 0, i32 0
  call void @print_string(i8* %_5630)
  %_5631 = load i64, i64* %_5602
  %_5632 = add i64 %_5631, 1
  store i64 %_5632, i64* %_5602
  br label %_5606
_5608:
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
