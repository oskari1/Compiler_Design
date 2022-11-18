; generated from: ./nicdard/arglobal3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_8625 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_8625 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_8622 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_8623 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_8624 to { i64, [0 x i64] }*) ] }
@_8622 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 1, i64 4 ] }
@_8623 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 2, i64 5 ] }
@_8624 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 3, i64 6 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8598 = alloca i64
  store i64 %argc, i64* %_8598
  %_8599 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8599
  %_8600 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8601 = call i64* @oat_alloc_array(i64 3)
  %_array8602 = bitcast i64* %_raw_array8601 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8609 = call i64* @oat_alloc_array(i64 2)
  %_array8610 = bitcast i64* %_raw_array8609 to { i64, [0 x i64] }*
  %_8611 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8602, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array8610, { i64, [0 x i64] }** %_8611
  %_raw_array8606 = call i64* @oat_alloc_array(i64 2)
  %_array8607 = bitcast i64* %_raw_array8606 to { i64, [0 x i64] }*
  %_8608 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8602, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array8607, { i64, [0 x i64] }** %_8608
  %_raw_array8603 = call i64* @oat_alloc_array(i64 2)
  %_array8604 = bitcast i64* %_raw_array8603 to { i64, [0 x i64] }*
  %_8605 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8602, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array8604, { i64, [0 x i64] }** %_8605
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array8602, { i64, [0 x { i64, [0 x i64] }*] }** %_8600
  %_8612 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8600
  store { i64, [0 x { i64, [0 x i64] }*] }* %_8612, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_8614 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8600
  %_8615 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_8614, i32 0, i32 1, i32 2
  %_8616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8615
  %_8613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8616, i32 0, i32 1, i32 2
  store i64 10, i64* %_8613
  %_8617 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_8618 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_8617, i32 0, i32 1, i32 2
  %_8619 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8618
  %_8620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8619, i32 0, i32 1, i32 2
  %_8621 = load i64, i64* %_8620
  ret i64 %_8621
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
