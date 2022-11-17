; generated from: ./dbernhard/array_indexing2.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_4844 to { i64, [0 x i64] }*)
@_4844 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_4843 to { i64, [0 x i64] }*)
@_4843 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 101, i64 102, i64 103, i64 104 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4823 = alloca i64
  store i64 %argc, i64* %_4823
  %_4824 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4824
  %_4825 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4826 = call i64* @oat_alloc_array(i64 2)
  %_array4827 = bitcast i64* %_raw_array4826 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_4830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_4831 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4827, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_4830, { i64, [0 x i64] }** %_4831
  %_4828 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_4829 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4827, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_4828, { i64, [0 x i64] }** %_4829
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4827, { i64, [0 x { i64, [0 x i64] }*] }** %_4825
  %_4832 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4825
  %_4833 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4832, i32 0, i32 1, i32 0
  %_4834 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4833
  %_4835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4834, i32 0, i32 1, i32 1
  %_4836 = load i64, i64* %_4835
  %_4837 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4825
  %_4838 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4837, i32 0, i32 1, i32 1
  %_4839 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4838
  %_4840 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4839, i32 0, i32 1, i32 2
  %_4841 = load i64, i64* %_4840
  %_4842 = add i64 %_4836, %_4841
  ret i64 %_4842
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
