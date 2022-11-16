; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_860 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_860
  %_861 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_860
  ret { i64, [0 x i64] }* %_861
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_843 = alloca i64
  store i64 %argc, i64* %_843
  %_844 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_844
  %_845 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_852 = alloca { i64, [0 x i64] }*
  %_raw_array846 = call i64* @oat_alloc_array(i64 2)
  %_array847 = bitcast i64* %_raw_array846 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array850 = call i64* @oat_alloc_array(i64 3)
  %_array851 = bitcast i64* %_raw_array850 to { i64, [0 x i64] }*
  %_raw_array848 = call i64* @oat_alloc_array(i64 3)
  %_array849 = bitcast i64* %_raw_array848 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array847, { i64, [0 x { i64, [0 x i64] }*] }** %_845
  %_854 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_845
  %_855 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_854, i32 0, i32 1, i32 1
  %_856 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_855
  %_853 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_856)
  store { i64, [0 x i64] }* %_853, { i64, [0 x i64] }** %_852
  %_857 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_852
  %_858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_857, i32 0, i32 1, i32 1
  %_859 = load i64, i64* %_858
  ret i64 %_859
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
