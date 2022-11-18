; generated from: ./dbernhard/arr_of_string.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_7503 = alloca i64
  store i64 %argc, i64* %_7503
  %_7504 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7504
  %_7505 = alloca { i64, [0 x i64] }*
  %_7507 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_7504
  %_7508 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_7507, i32 0, i32 1, i32 1
  %_7509 = load i8*, i8** %_7508
  %_7506 = call { i64, [0 x i64] }* @array_of_string(i8* %_7509)
  store { i64, [0 x i64] }* %_7506, { i64, [0 x i64] }** %_7505
  %_7510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7505
  %_7511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7510, i32 0, i32 1, i32 1
  %_7512 = load i64, i64* %_7511
  ret i64 %_7512
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
