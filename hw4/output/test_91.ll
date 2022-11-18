; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4113 = alloca i64
  store i64 %argc, i64* %_4113
  %_4114 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4114
  %_4115 = alloca { i64, [0 x i64] }*
  %_4121 = alloca i8*
  %_raw_array4116 = call i64* @oat_alloc_array(i64 3)
  %_array4117 = bitcast i64* %_raw_array4116 to { i64, [0 x i64] }*
  %_4120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4117, i32 0, i32 1, i32 2
  store i64 110, i64* %_4120
  %_4119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4117, i32 0, i32 1, i32 1
  store i64 110, i64* %_4119
  %_4118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4117, i32 0, i32 1, i32 0
  store i64 110, i64* %_4118
  store { i64, [0 x i64] }* %_array4117, { i64, [0 x i64] }** %_4115
  %_4123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4115
  %_4122 = call i8* @string_of_array({ i64, [0 x i64] }* %_4123)
  store i8* %_4122, i8** %_4121
  %_4125 = load i8*, i8** %_4121
  call void @print_string(i8* %_4125)
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
