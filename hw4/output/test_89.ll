; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_4098 = global [4 x i8] c"123\00"
@_4095 = global [4 x i8] c"789\00"
@_4089 = global [4 x i8] c"def\00"
@_4086 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4079 = alloca i64
  store i64 %argc, i64* %_4079
  %_4080 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4080
  %_4081 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array4082 = call i64* @oat_alloc_array(i64 2)
  %_array4083 = bitcast i64* %_raw_array4082 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array4093 = call i64* @oat_alloc_array(i64 2)
  %_array4094 = bitcast i64* %_raw_array4093 to { i64, [0 x i8*] }*
  %_4099 = getelementptr [4 x i8], [4 x i8]* @_4098, i32 0, i32 0
  %_4100 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array4094, i32 0, i32 1, i32 1
  store i8* %_4099, i8** %_4100
  %_4096 = getelementptr [4 x i8], [4 x i8]* @_4095, i32 0, i32 0
  %_4097 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array4094, i32 0, i32 1, i32 0
  store i8* %_4096, i8** %_4097
  %_4101 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array4083, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array4094, { i64, [0 x i8*] }** %_4101
  %_raw_array4084 = call i64* @oat_alloc_array(i64 2)
  %_array4085 = bitcast i64* %_raw_array4084 to { i64, [0 x i8*] }*
  %_4090 = getelementptr [4 x i8], [4 x i8]* @_4089, i32 0, i32 0
  %_4091 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array4085, i32 0, i32 1, i32 1
  store i8* %_4090, i8** %_4091
  %_4087 = getelementptr [4 x i8], [4 x i8]* @_4086, i32 0, i32 0
  %_4088 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array4085, i32 0, i32 1, i32 0
  store i8* %_4087, i8** %_4088
  %_4092 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array4083, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array4085, { i64, [0 x i8*] }** %_4092
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array4083, { i64, [0 x { i64, [0 x i8*] }*] }** %_4081
  %_4103 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_4081
  %_4104 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_4103, i32 0, i32 1, i32 1
  %_4105 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_4104
  %_4106 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_4105, i32 0, i32 1, i32 1
  %_4107 = load i8*, i8** %_4106
  call void @print_string(i8* %_4107)
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
