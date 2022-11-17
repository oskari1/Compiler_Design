; generated from: ./dbernhard/array_indexing.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_4822 to { i64, [0 x i64] }*)
@_4822 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_4821 to { i64, [0 x i64] }*)
@_4821 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 101, i64 102, i64 103, i64 104 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4808 = alloca i64
  store i64 %argc, i64* %_4808
  %_4809 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4809
  %_4810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_4811 = call i64 @get_index()
  %_4812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4810, i32 0, i32 1, i64 %_4811
  %_4813 = load i64, i64* %_4812
  %_4814 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_4815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_4816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4815, i32 0, i32 1, i32 0
  %_4817 = load i64, i64* %_4816
  %_4818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4814, i32 0, i32 1, i64 %_4817
  %_4819 = load i64, i64* %_4818
  %_4820 = add i64 %_4813, %_4819
  ret i64 %_4820
}

define i64 @get_index() {
  ret i64 2
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
