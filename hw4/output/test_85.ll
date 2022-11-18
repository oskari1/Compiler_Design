; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4030 = alloca i64
  store i64 %argc, i64* %_4030
  %_4031 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4031
  %_4032 = alloca { i64, [0 x i64] }*
  %_raw_array4033 = call i64* @oat_alloc_array(i64 3)
  %_array4034 = bitcast i64* %_raw_array4033 to { i64, [0 x i64] }*
  %_4037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4034, i32 0, i32 1, i32 2
  store i64 999, i64* %_4037
  %_4036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4034, i32 0, i32 1, i32 1
  store i64 100, i64* %_4036
  %_4035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4034, i32 0, i32 1, i32 0
  store i64 1, i64* %_4035
  store { i64, [0 x i64] }* %_array4034, { i64, [0 x i64] }** %_4032
  %_4038 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4032
  %_4039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4038, i32 0, i32 1, i32 2
  %_4040 = load i64, i64* %_4039
  ret i64 %_4040
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
