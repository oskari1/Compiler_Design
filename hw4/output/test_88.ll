; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_4072 = global [4 x i8] c"def\00"
@_4069 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4064 = alloca i64
  store i64 %argc, i64* %_4064
  %_4065 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4065
  %_4066 = alloca { i64, [0 x i8*] }*
  %_raw_array4067 = call i64* @oat_alloc_array(i64 2)
  %_array4068 = bitcast i64* %_raw_array4067 to { i64, [0 x i8*] }*
  %_4073 = getelementptr [4 x i8], [4 x i8]* @_4072, i32 0, i32 0
  %_4074 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array4068, i32 0, i32 1, i32 1
  store i8* %_4073, i8** %_4074
  %_4070 = getelementptr [4 x i8], [4 x i8]* @_4069, i32 0, i32 0
  %_4071 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array4068, i32 0, i32 1, i32 0
  store i8* %_4070, i8** %_4071
  store { i64, [0 x i8*] }* %_array4068, { i64, [0 x i8*] }** %_4066
  %_4076 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_4066
  %_4077 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_4076, i32 0, i32 1, i32 0
  %_4078 = load i8*, i8** %_4077
  call void @print_string(i8* %_4078)
  ret i64 0
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
