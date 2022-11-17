; generated from: ./dbernhard/null_update_global.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_5637 to { i64, [0 x i64] }*)
@_5637 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 0 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5627 = alloca i64
  store i64 %argc, i64* %_5627
  %_5628 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5628
  %_raw_array5629 = call i64* @oat_alloc_array(i64 3)
  %_array5630 = bitcast i64* %_raw_array5629 to { i64, [0 x i64] }*
  %_5633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5630, i32 0, i32 1, i32 2
  store i64 12, i64* %_5633
  %_5632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5630, i32 0, i32 1, i32 1
  store i64 11, i64* %_5632
  %_5631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5630, i32 0, i32 1, i32 0
  store i64 10, i64* %_5631
  store { i64, [0 x i64] }* %_array5630, { i64, [0 x i64] }** @x
  %_5634 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_5635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5634, i32 0, i32 1, i32 2
  %_5636 = load i64, i64* %_5635
  ret i64 %_5636
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
