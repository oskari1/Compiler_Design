; generated from: ./dbernhard/update_global.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_5685 to { i64, [0 x i64] }*)
@_5685 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5675 = alloca i64
  store i64 %argc, i64* %_5675
  %_5676 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5676
  %_raw_array5677 = call i64* @oat_alloc_array(i64 3)
  %_array5678 = bitcast i64* %_raw_array5677 to { i64, [0 x i64] }*
  %_5681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5678, i32 0, i32 1, i32 2
  store i64 12, i64* %_5681
  %_5680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5678, i32 0, i32 1, i32 1
  store i64 11, i64* %_5680
  %_5679 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5678, i32 0, i32 1, i32 0
  store i64 10, i64* %_5679
  store { i64, [0 x i64] }* %_array5678, { i64, [0 x i64] }** @x
  %_5682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_5683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5682, i32 0, i32 1, i32 2
  %_5684 = load i64, i64* %_5683
  ret i64 %_5684
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
