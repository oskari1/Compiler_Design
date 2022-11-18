; generated from: ./dbernhard/array_indexing2.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_7494 to { i64, [0 x i64] }*)
@_7494 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_7493 to { i64, [0 x i64] }*)
@_7493 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 101, i64 102, i64 103, i64 104 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_7473 = alloca i64
  store i64 %argc, i64* %_7473
  %_7474 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7474
  %_7475 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7476 = call i64* @oat_alloc_array(i64 2)
  %_array7477 = bitcast i64* %_raw_array7476 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_7480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_7481 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7477, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_7480, { i64, [0 x i64] }** %_7481
  %_7478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_7479 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7477, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_7478, { i64, [0 x i64] }** %_7479
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7477, { i64, [0 x { i64, [0 x i64] }*] }** %_7475
  %_7482 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_7475
  %_7483 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7482, i32 0, i32 1, i32 0
  %_7484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7483
  %_7485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7484, i32 0, i32 1, i32 1
  %_7486 = load i64, i64* %_7485
  %_7487 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_7475
  %_7488 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7487, i32 0, i32 1, i32 1
  %_7489 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7488
  %_7490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7489, i32 0, i32 1, i32 2
  %_7491 = load i64, i64* %_7490
  %_7492 = add i64 %_7486, %_7491
  ret i64 %_7492
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
