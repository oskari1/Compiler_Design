; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_988 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_988
  %_989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_988
  ret { i64, [0 x i64] }* %_989
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_963 = alloca i64
  store i64 %argc, i64* %_963
  %_964 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_964
  %_965 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_980 = alloca { i64, [0 x i64] }*
  %_raw_array966 = call i64* @oat_alloc_array(i64 2)
  %_array967 = bitcast i64* %_raw_array966 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array974 = call i64* @oat_alloc_array(i64 3)
  %_array975 = bitcast i64* %_raw_array974 to { i64, [0 x i64] }*
  %_978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array975, i32 0, i32 1, i32 2
  store i64 6, i64* %_978
  %_977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array975, i32 0, i32 1, i32 1
  store i64 5, i64* %_977
  %_976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array975, i32 0, i32 1, i32 0
  store i64 4, i64* %_976
  %_979 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array967, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array975, { i64, [0 x i64] }** %_979
  %_raw_array968 = call i64* @oat_alloc_array(i64 3)
  %_array969 = bitcast i64* %_raw_array968 to { i64, [0 x i64] }*
  %_972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array969, i32 0, i32 1, i32 2
  store i64 3, i64* %_972
  %_971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array969, i32 0, i32 1, i32 1
  store i64 2, i64* %_971
  %_970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array969, i32 0, i32 1, i32 0
  store i64 1, i64* %_970
  %_973 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array967, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array969, { i64, [0 x i64] }** %_973
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array967, { i64, [0 x { i64, [0 x i64] }*] }** %_965
  %_982 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_965
  %_983 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_982, i32 0, i32 1, i32 1
  %_984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_983
  %_981 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_984)
  store { i64, [0 x i64] }* %_981, { i64, [0 x i64] }** %_980
  %_985 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_980
  %_986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_985, i32 0, i32 1, i32 1
  %_987 = load i64, i64* %_986
  ret i64 %_987
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
