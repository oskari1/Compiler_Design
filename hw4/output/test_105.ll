; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_4847 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4843 = alloca i64
  store i64 %argc, i64* %_4843
  %_4844 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4844
  %_4845 = alloca { i64, [0 x i64] }*
  %_4849 = alloca i64
  %_4850 = alloca i64
  %_4862 = alloca i64
  %_4848 = getelementptr [11 x i8], [11 x i8]* @_4847, i32 0, i32 0
  %_4846 = call { i64, [0 x i64] }* @array_of_string(i8* %_4848)
  store { i64, [0 x i64] }* %_4846, { i64, [0 x i64] }** %_4845
  store i64 0, i64* %_4849
  store i64 0, i64* %_4850
  br label %_4853
_4853:
  %_4851 = load i64, i64* %_4850
  %_4852 = icmp slt i64 %_4851, 10
  br i1 %_4852, label %_4854, label %_4855
_4854:
  %_4856 = load i64, i64* %_4850
  %_4858 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4845
  %_4859 = load i64, i64* %_4850
  %_4857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4858, i32 0, i32 1, i64 %_4859
  store i64 %_4856, i64* %_4857
  %_4860 = load i64, i64* %_4850
  %_4861 = add i64 %_4860, 1
  store i64 %_4861, i64* %_4850
  br label %_4853
_4855:
  store i64 0, i64* %_4862
  br label %_4865
_4865:
  %_4863 = load i64, i64* %_4862
  %_4864 = icmp slt i64 %_4863, 10
  br i1 %_4864, label %_4866, label %_4867
_4866:
  %_4868 = load i64, i64* %_4849
  %_4869 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4845
  %_4870 = load i64, i64* %_4862
  %_4871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4869, i32 0, i32 1, i64 %_4870
  %_4872 = load i64, i64* %_4871
  %_4873 = add i64 %_4868, %_4872
  store i64 %_4873, i64* %_4849
  %_4874 = load i64, i64* %_4862
  %_4875 = add i64 %_4874, 1
  store i64 %_4875, i64* %_4862
  br label %_4865
_4867:
  %_4876 = load i64, i64* %_4849
  ret i64 %_4876
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
