; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_943 = alloca i64
  store i64 %argc, i64* %_943
  %_944 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_944
  %_945 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array946 = call i64* @oat_alloc_array(i64 2)
  %_array947 = bitcast i64* %_raw_array946 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array953 = call i64* @oat_alloc_array(i64 2)
  %_array954 = bitcast i64* %_raw_array953 to { i64, [0 x i64] }*
  %_956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array954, i32 0, i32 1, i32 1
  store i64 4, i64* %_956
  %_955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array954, i32 0, i32 1, i32 0
  store i64 3, i64* %_955
  %_957 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array947, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array954, { i64, [0 x i64] }** %_957
  %_raw_array948 = call i64* @oat_alloc_array(i64 2)
  %_array949 = bitcast i64* %_raw_array948 to { i64, [0 x i64] }*
  %_951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array949, i32 0, i32 1, i32 1
  store i64 2, i64* %_951
  %_950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array949, i32 0, i32 1, i32 0
  store i64 1, i64* %_950
  %_952 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array947, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array949, { i64, [0 x i64] }** %_952
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array947, { i64, [0 x { i64, [0 x i64] }*] }** %_945
  %_958 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_945
  %_959 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_958, i32 0, i32 1, i32 1
  %_960 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_959
  %_961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_960, i32 0, i32 1, i32 1
  %_962 = load i64, i64* %_961
  ret i64 %_962
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
