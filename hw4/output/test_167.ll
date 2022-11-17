; generated from: ./nicdard/arglobal3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_5975 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_5975 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_5972 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_5973 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_5974 to { i64, [0 x i64] }*) ] }
@_5972 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 1, i64 4 ] }
@_5973 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 2, i64 5 ] }
@_5974 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 3, i64 6 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5948 = alloca i64
  store i64 %argc, i64* %_5948
  %_5949 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5949
  %_5950 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5951 = call i64* @oat_alloc_array(i64 3)
  %_array5952 = bitcast i64* %_raw_array5951 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5959 = call i64* @oat_alloc_array(i64 2)
  %_array5960 = bitcast i64* %_raw_array5959 to { i64, [0 x i64] }*
  %_5961 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5952, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5960, { i64, [0 x i64] }** %_5961
  %_raw_array5956 = call i64* @oat_alloc_array(i64 2)
  %_array5957 = bitcast i64* %_raw_array5956 to { i64, [0 x i64] }*
  %_5958 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5952, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5957, { i64, [0 x i64] }** %_5958
  %_raw_array5953 = call i64* @oat_alloc_array(i64 2)
  %_array5954 = bitcast i64* %_raw_array5953 to { i64, [0 x i64] }*
  %_5955 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5952, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5954, { i64, [0 x i64] }** %_5955
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5952, { i64, [0 x { i64, [0 x i64] }*] }** %_5950
  %_5962 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5950
  store { i64, [0 x { i64, [0 x i64] }*] }* %_5962, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_5964 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5950
  %_5965 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5964, i32 0, i32 1, i32 2
  %_5966 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5965
  %_5963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5966, i32 0, i32 1, i32 2
  store i64 10, i64* %_5963
  %_5967 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_5968 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5967, i32 0, i32 1, i32 2
  %_5969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5968
  %_5970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5969, i32 0, i32 1, i32 2
  %_5971 = load i64, i64* %_5970
  ret i64 %_5971
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
