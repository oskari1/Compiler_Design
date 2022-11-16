; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_829 = alloca i64
  store i64 %argc, i64* %_829
  %_830 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_830
  %_831 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array832 = call i64* @oat_alloc_array(i64 2)
  %_array833 = bitcast i64* %_raw_array832 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array836 = call i64* @oat_alloc_array(i64 2)
  %_array837 = bitcast i64* %_raw_array836 to { i64, [0 x i64] }*
  %_raw_array834 = call i64* @oat_alloc_array(i64 2)
  %_array835 = bitcast i64* %_raw_array834 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array833, { i64, [0 x { i64, [0 x i64] }*] }** %_831
  %_838 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_831
  %_839 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_838, i32 0, i32 1, i32 1
  %_840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_839
  %_841 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_840, i32 0, i32 1, i32 1
  %_842 = load i64, i64* %_841
  ret i64 %_842
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
