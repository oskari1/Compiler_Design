; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4787 = alloca i64
  store i64 %argc, i64* %_4787
  %_4788 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4788
  %_4789 = alloca { i64, [0 x i64] }*
  %_4797 = alloca i8*
  %_4800 = alloca { i64, [0 x i64] }*
  %_4803 = alloca i64
  %_4804 = alloca i64
  %_raw_array4790 = call i64* @oat_alloc_array(i64 5)
  %_array4791 = bitcast i64* %_raw_array4790 to { i64, [0 x i64] }*
  %_4796 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4791, i32 0, i32 1, i32 4
  store i64 115, i64* %_4796
  %_4795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4791, i32 0, i32 1, i32 3
  store i64 114, i64* %_4795
  %_4794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4791, i32 0, i32 1, i32 2
  store i64 113, i64* %_4794
  %_4793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4791, i32 0, i32 1, i32 1
  store i64 112, i64* %_4793
  %_4792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4791, i32 0, i32 1, i32 0
  store i64 111, i64* %_4792
  store { i64, [0 x i64] }* %_array4791, { i64, [0 x i64] }** %_4789
  %_4799 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4789
  %_4798 = call i8* @string_of_array({ i64, [0 x i64] }* %_4799)
  store i8* %_4798, i8** %_4797
  %_4802 = load i8*, i8** %_4797
  %_4801 = call { i64, [0 x i64] }* @array_of_string(i8* %_4802)
  store { i64, [0 x i64] }* %_4801, { i64, [0 x i64] }** %_4800
  store i64 0, i64* %_4803
  store i64 0, i64* %_4804
  br label %_4807
_4807:
  %_4805 = load i64, i64* %_4804
  %_4806 = icmp slt i64 %_4805, 5
  br i1 %_4806, label %_4808, label %_4809
_4808:
  %_4810 = load i64, i64* %_4803
  %_4811 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4800
  %_4812 = load i64, i64* %_4804
  %_4813 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4811, i32 0, i32 1, i64 %_4812
  %_4814 = load i64, i64* %_4813
  %_4815 = add i64 %_4810, %_4814
  store i64 %_4815, i64* %_4803
  %_4816 = load i64, i64* %_4804
  %_4817 = add i64 %_4816, 1
  store i64 %_4817, i64* %_4804
  br label %_4807
_4809:
  %_4818 = load i64, i64* %_4803
  ret i64 %_4818
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
