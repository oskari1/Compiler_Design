; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3500 = alloca i64
  store i64 %argc, i64* %_3500
  %_3501 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3501
  %_raw_array3502 = call i64* @oat_alloc_array(i64 2)
  %_array3503 = bitcast i64* %_raw_array3502 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3509 = call i64* @oat_alloc_array(i64 2)
  %_array3510 = bitcast i64* %_raw_array3509 to { i64, [0 x i64] }*
  %_3512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3510, i32 0, i32 1, i32 1
  store i64 4, i64* %_3512
  %_3511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3510, i32 0, i32 1, i32 0
  store i64 3, i64* %_3511
  %_3513 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3503, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3510, { i64, [0 x i64] }** %_3513
  %_raw_array3504 = call i64* @oat_alloc_array(i64 2)
  %_array3505 = bitcast i64* %_raw_array3504 to { i64, [0 x i64] }*
  %_3507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3505, i32 0, i32 1, i32 1
  store i64 2, i64* %_3507
  %_3506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3505, i32 0, i32 1, i32 0
  store i64 1, i64* %_3506
  %_3508 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3503, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3505, { i64, [0 x i64] }** %_3508
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3503, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_3514 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_3515 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3514, i32 0, i32 1, i32 1
  %_3516 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3515
  %_3517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3516, i32 0, i32 1, i32 1
  %_3518 = load i64, i64* %_3517
  ret i64 %_3518
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
