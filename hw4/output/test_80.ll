; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_3638 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_3638
  %_3639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3638
  ret { i64, [0 x i64] }* %_3639
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3613 = alloca i64
  store i64 %argc, i64* %_3613
  %_3614 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3614
  %_3615 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3630 = alloca { i64, [0 x i64] }*
  %_raw_array3616 = call i64* @oat_alloc_array(i64 2)
  %_array3617 = bitcast i64* %_raw_array3616 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3624 = call i64* @oat_alloc_array(i64 3)
  %_array3625 = bitcast i64* %_raw_array3624 to { i64, [0 x i64] }*
  %_3628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3625, i32 0, i32 1, i32 2
  store i64 6, i64* %_3628
  %_3627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3625, i32 0, i32 1, i32 1
  store i64 5, i64* %_3627
  %_3626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3625, i32 0, i32 1, i32 0
  store i64 4, i64* %_3626
  %_3629 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3617, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3625, { i64, [0 x i64] }** %_3629
  %_raw_array3618 = call i64* @oat_alloc_array(i64 3)
  %_array3619 = bitcast i64* %_raw_array3618 to { i64, [0 x i64] }*
  %_3622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3619, i32 0, i32 1, i32 2
  store i64 3, i64* %_3622
  %_3621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3619, i32 0, i32 1, i32 1
  store i64 2, i64* %_3621
  %_3620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3619, i32 0, i32 1, i32 0
  store i64 1, i64* %_3620
  %_3623 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3617, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3619, { i64, [0 x i64] }** %_3623
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3617, { i64, [0 x { i64, [0 x i64] }*] }** %_3615
  %_3632 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3615
  %_3633 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3632, i32 0, i32 1, i32 1
  %_3634 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3633
  %_3631 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_3634)
  store { i64, [0 x i64] }* %_3631, { i64, [0 x i64] }** %_3630
  %_3635 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3630
  %_3636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3635, i32 0, i32 1, i32 1
  %_3637 = load i64, i64* %_3636
  ret i64 %_3637
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
