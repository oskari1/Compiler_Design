; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_841 = alloca i64
  store i64 %argc, i64* %_841
  %_842 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_842
  %_raw_array843 = call i64* @oat_alloc_array(i64 2)
  %_array844 = bitcast i64* %_raw_array843 to { i64, [0 x i64] }*
  %_846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array844, i32 0, i32 1, i32 1
  store i64 42, i64* %_846
  %_845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array844, i32 0, i32 1, i32 0
  store i64 17, i64* %_845
  store { i64, [0 x i64] }* %_array844, { i64, [0 x i64] }** @arr
  %_847 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_847, i32 0, i32 1, i32 1
  %_849 = load i64, i64* %_848
  ret i64 %_849
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
