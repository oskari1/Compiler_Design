; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2742 = alloca i64
  store i64 %argc, i64* %_2742
  %_2743 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2743
  %_2744 = alloca { i64, [0 x i64] }*
  %_2751 = alloca i64
  %_2752 = alloca i64
  %_raw_array2745 = call i64* @oat_alloc_array(i64 4)
  %_array2746 = bitcast i64* %_raw_array2745 to { i64, [0 x i64] }*
  %_2750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2746, i32 0, i32 1, i32 3
  store i64 4, i64* %_2750
  %_2749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2746, i32 0, i32 1, i32 2
  store i64 3, i64* %_2749
  %_2748 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2746, i32 0, i32 1, i32 1
  store i64 2, i64* %_2748
  %_2747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2746, i32 0, i32 1, i32 0
  store i64 1, i64* %_2747
  store { i64, [0 x i64] }* %_array2746, { i64, [0 x i64] }** %_2744
  store i64 0, i64* %_2751
  store i64 0, i64* %_2752
  br label %_2755
_2755:
  %_2753 = load i64, i64* %_2752
  %_2754 = icmp slt i64 %_2753, 4
  br i1 %_2754, label %_2756, label %_2757
_2756:
  %_2758 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2744
  %_2759 = load i64, i64* %_2752
  %_2760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2758, i32 0, i32 1, i64 %_2759
  %_2761 = load i64, i64* %_2760
  %_2762 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2744
  %_2763 = load i64, i64* %_2752
  %_2764 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2762, i32 0, i32 1, i64 %_2763
  %_2765 = load i64, i64* %_2764
  %_2766 = xor i64 -1, %_2765
  %_2767 = mul i64 %_2761, %_2766
  store i64 %_2767, i64* %_2751
  %_2768 = load i64, i64* %_2752
  %_2769 = add i64 %_2768, 1
  store i64 %_2769, i64* %_2752
  br label %_2755
_2757:
  %_2770 = load i64, i64* %_2751
  ret i64 %_2770
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
