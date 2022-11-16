; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_804 = alloca i64
  store i64 %x, i64* %_804
  %_805 = load i64, i64* %_804
  ret i64 %_805
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_800 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_800
  %_801 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_800
  %_802 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_801, i32 0, i32 1, i32 2
  %_803 = load i64, i64* %_802
  ret i64 %_803
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_747 = alloca i64
  store i64 %argc, i64* %_747
  %_748 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_748
  %_749 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_762 = alloca { i64, [0 x i64] }*
  %_769 = alloca i64
  %_770 = alloca i64
  %_raw_array750 = call i64* @oat_alloc_array(i64 2)
  %_array751 = bitcast i64* %_raw_array750 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array757 = call i64* @oat_alloc_array(i64 2)
  %_array758 = bitcast i64* %_raw_array757 to { i64, [0 x i64] }*
  %_760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array758, i32 0, i32 1, i32 1
  store i64 4, i64* %_760
  %_759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array758, i32 0, i32 1, i32 0
  store i64 3, i64* %_759
  %_761 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array751, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array758, { i64, [0 x i64] }** %_761
  %_raw_array752 = call i64* @oat_alloc_array(i64 2)
  %_array753 = bitcast i64* %_raw_array752 to { i64, [0 x i64] }*
  %_755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array753, i32 0, i32 1, i32 1
  store i64 2, i64* %_755
  %_754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array753, i32 0, i32 1, i32 0
  store i64 1, i64* %_754
  %_756 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array751, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array753, { i64, [0 x i64] }** %_756
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array751, { i64, [0 x { i64, [0 x i64] }*] }** %_749
  %_raw_array763 = call i64* @oat_alloc_array(i64 4)
  %_array764 = bitcast i64* %_raw_array763 to { i64, [0 x i64] }*
  %_768 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array764, i32 0, i32 1, i32 3
  store i64 4, i64* %_768
  %_767 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array764, i32 0, i32 1, i32 2
  store i64 3, i64* %_767
  %_766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array764, i32 0, i32 1, i32 1
  store i64 2, i64* %_766
  %_765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array764, i32 0, i32 1, i32 0
  store i64 1, i64* %_765
  store { i64, [0 x i64] }* %_array764, { i64, [0 x i64] }** %_762
  store i64 0, i64* %_769
  store i64 0, i64* %_770
  br label %_773
_773:
  %_771 = load i64, i64* %_770
  %_772 = icmp slt i64 %_771, 100
  br i1 %_772, label %_774, label %_775
_774:
  %_776 = load i64, i64* %_769
  %_777 = add i64 %_776, 1
  store i64 %_777, i64* %_769
  %_778 = load i64, i64* %_770
  %_779 = add i64 %_778, 1
  store i64 %_779, i64* %_770
  br label %_773
_775:
  %_781 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_762
  %_780 = call i64 @g({ i64, [0 x i64] }* %_781)
  %_783 = load i64, i64* @i
  %_782 = call i64 @f(i64 %_783)
  %_784 = add i64 %_780, %_782
  %_786 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_762
  %_787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_786, i32 0, i32 1, i32 3
  %_788 = load i64, i64* %_787
  %_785 = call i64 @f(i64 %_788)
  %_789 = add i64 %_784, %_785
  %_791 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_749
  %_792 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_791, i32 0, i32 1, i32 1
  %_793 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_792
  %_794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_793, i32 0, i32 1, i32 1
  %_795 = load i64, i64* %_794
  %_790 = call i64 @f(i64 %_795)
  %_796 = add i64 %_789, %_790
  %_798 = load i64, i64* %_769
  %_797 = call i64 @f(i64 %_798)
  %_799 = add i64 %_796, %_797
  ret i64 %_799
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
