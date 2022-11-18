; generated from: ./dbernhard/array_indexing.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_7472 to { i64, [0 x i64] }*)
@_7472 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_7471 to { i64, [0 x i64] }*)
@_7471 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 101, i64 102, i64 103, i64 104 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_7458 = alloca i64
  store i64 %argc, i64* %_7458
  %_7459 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7459
  %_7460 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_7461 = call i64 @get_index()
  %_7462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7460, i32 0, i32 1, i64 %_7461
  %_7463 = load i64, i64* %_7462
  %_7464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_7465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_7466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7465, i32 0, i32 1, i32 0
  %_7467 = load i64, i64* %_7466
  %_7468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7464, i32 0, i32 1, i64 %_7467
  %_7469 = load i64, i64* %_7468
  %_7470 = add i64 %_7463, %_7469
  ret i64 %_7470
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
