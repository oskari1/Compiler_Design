; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_484 = alloca i64
  store i64 %argc, i64* %_484
  %_485 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_485
  %_486 = alloca { i64, [0 x i64] }*
  %_raw_array487 = call i64* @oat_alloc_array(i64 2)
  %_array488 = bitcast i64* %_raw_array487 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array488, { i64, [0 x i64] }** %_486
  %_489 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_486
  %_490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_489, i32 0, i32 1, i32 1
  %_491 = load i64, i64* %_490
  ret i64 %_491
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
