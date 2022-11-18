; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_2853 to { i64, [0 x i64] }*)
@_2853 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2842 = alloca i64
  store i64 %argc, i64* %_2842
  %_2843 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2843
  %_2844 = alloca { i64, [0 x i64] }*
  %_raw_array2845 = call i64* @oat_alloc_array(i64 3)
  %_array2846 = bitcast i64* %_raw_array2845 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2846, { i64, [0 x i64] }** %_2844
  %_2847 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2844
  store { i64, [0 x i64] }* %_2847, { i64, [0 x i64] }** @arr
  %_2849 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2844
  %_2848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2849, i32 0, i32 1, i32 2
  store i64 3, i64* %_2848
  %_2850 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_2851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2850, i32 0, i32 1, i32 2
  %_2852 = load i64, i64* %_2851
  ret i64 %_2852
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
