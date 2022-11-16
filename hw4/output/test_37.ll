; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_492 = alloca i64
  store i64 %argc, i64* %_492
  %_493 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_493
  %_494 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array495 = call i64* @oat_alloc_array(i64 2)
  %_array496 = bitcast i64* %_raw_array495 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array499 = call i64* @oat_alloc_array(i64 2)
  %_array500 = bitcast i64* %_raw_array499 to { i64, [0 x i64] }*
  %_raw_array497 = call i64* @oat_alloc_array(i64 2)
  %_array498 = bitcast i64* %_raw_array497 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array496, { i64, [0 x { i64, [0 x i64] }*] }** %_494
  %_501 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_494
  %_502 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_501, i32 0, i32 1, i32 0
  %_503 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_502
  %_504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_503, i32 0, i32 1, i32 1
  %_505 = load i64, i64* %_504
  ret i64 %_505
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
