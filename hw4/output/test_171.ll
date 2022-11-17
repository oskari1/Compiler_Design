; generated from: ./nicdard/arlocal3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6015 = alloca i64
  store i64 %argc, i64* %_6015
  %_6016 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6016
  %_6017 = alloca { i64, [0 x i64] }*
  %_6023 = alloca { i64, [0 x i64] }*
  %_raw_array6018 = call i64* @oat_alloc_array(i64 3)
  %_array6019 = bitcast i64* %_raw_array6018 to { i64, [0 x i64] }*
  %_6022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6019, i32 0, i32 1, i32 2
  store i64 32, i64* %_6022
  %_6021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6019, i32 0, i32 1, i32 1
  store i64 23, i64* %_6021
  %_6020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6019, i32 0, i32 1, i32 0
  store i64 12, i64* %_6020
  store { i64, [0 x i64] }* %_array6019, { i64, [0 x i64] }** %_6017
  %_raw_array6024 = call i64* @oat_alloc_array(i64 3)
  %_array6025 = bitcast i64* %_raw_array6024 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6025, { i64, [0 x i64] }** %_6023
  %_6026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6023
  store { i64, [0 x i64] }* %_6026, { i64, [0 x i64] }** %_6017
  %_6028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6023
  %_6027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6028, i32 0, i32 1, i32 2
  store i64 3, i64* %_6027
  %_6029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6017
  %_6030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6029, i32 0, i32 1, i32 2
  %_6031 = load i64, i64* %_6030
  ret i64 %_6031
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
