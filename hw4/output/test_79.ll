; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3593 = alloca i64
  store i64 %argc, i64* %_3593
  %_3594 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3594
  %_3595 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3596 = call i64* @oat_alloc_array(i64 2)
  %_array3597 = bitcast i64* %_raw_array3596 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3603 = call i64* @oat_alloc_array(i64 2)
  %_array3604 = bitcast i64* %_raw_array3603 to { i64, [0 x i64] }*
  %_3606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3604, i32 0, i32 1, i32 1
  store i64 4, i64* %_3606
  %_3605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3604, i32 0, i32 1, i32 0
  store i64 3, i64* %_3605
  %_3607 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3597, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3604, { i64, [0 x i64] }** %_3607
  %_raw_array3598 = call i64* @oat_alloc_array(i64 2)
  %_array3599 = bitcast i64* %_raw_array3598 to { i64, [0 x i64] }*
  %_3601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3599, i32 0, i32 1, i32 1
  store i64 2, i64* %_3601
  %_3600 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3599, i32 0, i32 1, i32 0
  store i64 1, i64* %_3600
  %_3602 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3597, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3599, { i64, [0 x i64] }** %_3602
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3597, { i64, [0 x { i64, [0 x i64] }*] }** %_3595
  %_3608 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3595
  %_3609 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3608, i32 0, i32 1, i32 1
  %_3610 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3609
  %_3611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3610, i32 0, i32 1, i32 1
  %_3612 = load i64, i64* %_3611
  ret i64 %_3612
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
