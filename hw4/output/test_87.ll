; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4053 = alloca i64
  store i64 %argc, i64* %_4053
  %_4054 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4054
  %_4055 = alloca { i64, [0 x i64] }*
  %_raw_array4056 = call i64* @oat_alloc_array(i64 3)
  %_array4057 = bitcast i64* %_raw_array4056 to { i64, [0 x i64] }*
  %_4060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4057, i32 0, i32 1, i32 2
  store i64 19, i64* %_4060
  %_4059 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4057, i32 0, i32 1, i32 1
  store i64 100, i64* %_4059
  %_4058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4057, i32 0, i32 1, i32 0
  store i64 1, i64* %_4058
  store { i64, [0 x i64] }* %_array4057, { i64, [0 x i64] }** %_4055
  %_4061 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4055
  %_4062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4061, i32 0, i32 1, i32 2
  %_4063 = load i64, i64* %_4062
  ret i64 %_4063
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
