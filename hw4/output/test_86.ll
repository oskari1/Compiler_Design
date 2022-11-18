; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4041 = alloca i64
  store i64 %argc, i64* %_4041
  %_4042 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4042
  %_4043 = alloca i64
  %_4044 = alloca { i64, [0 x i64] }*
  store i64 999, i64* %_4043
  %_raw_array4045 = call i64* @oat_alloc_array(i64 3)
  %_array4046 = bitcast i64* %_raw_array4045 to { i64, [0 x i64] }*
  %_4049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 2
  store i64 999, i64* %_4049
  %_4048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 1
  store i64 100, i64* %_4048
  %_4047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 0
  store i64 1, i64* %_4047
  store { i64, [0 x i64] }* %_array4046, { i64, [0 x i64] }** %_4044
  %_4050 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4044
  %_4051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4050, i32 0, i32 1, i32 2
  %_4052 = load i64, i64* %_4051
  ret i64 %_4052
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
