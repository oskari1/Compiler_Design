; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_808 = alloca i8*
  store i8* %str, i8** %_808
  %_809 = alloca i64
  store i64 %start, i64* %_809
  %_810 = alloca i64
  store i64 %len, i64* %_810
  %_811 = alloca { i64, [0 x i64] }*
  %_814 = alloca { i64, [0 x i64] }*
  %_818 = alloca i64
  %_813 = load i8*, i8** %_808
  %_812 = call { i64, [0 x i64] }* @array_of_string(i8* %_813)
  store { i64, [0 x i64] }* %_812, { i64, [0 x i64] }** %_811
  %_815 = load i64, i64* %_810
  %_raw_array816 = call i64* @oat_alloc_array(i64 %_815)
  %_array817 = bitcast i64* %_raw_array816 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array817, { i64, [0 x i64] }** %_814
  store i64 0, i64* %_818
  br label %_822
_822:
  %_819 = load i64, i64* %_818
  %_820 = load i64, i64* %_810
  %_821 = icmp slt i64 %_819, %_820
  br i1 %_821, label %_823, label %_824
_823:
  %_825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_811
  %_826 = load i64, i64* %_818
  %_827 = load i64, i64* %_809
  %_828 = add i64 %_826, %_827
  %_829 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_825, i32 0, i32 1, i64 %_828
  %_830 = load i64, i64* %_829
  %_832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_814
  %_833 = load i64, i64* %_818
  %_831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_832, i32 0, i32 1, i64 %_833
  store i64 %_830, i64* %_831
  %_834 = load i64, i64* %_818
  %_835 = add i64 %_834, 1
  store i64 %_835, i64* %_818
  br label %_822
_824:
  %_837 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_814
  %_836 = call i8* @string_of_array({ i64, [0 x i64] }* %_837)
  ret i8* %_836
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_801 = alloca i64
  store i64 %argc, i64* %_801
  %_802 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_802
  %_805 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_802
  %_806 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_805, i32 0, i32 1, i32 1
  %_807 = load i8*, i8** %_806
  %_804 = call i8* @sub(i8* %_807, i64 3, i64 5)
  call void @print_string(i8* %_804)
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
