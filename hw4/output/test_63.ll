; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1391 = alloca i64
  store i64 %argc, i64* %_1391
  %_1392 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1392
  %_1393 = alloca i64
  %_1394 = alloca { i64, [0 x i64] }*
  store i64 999, i64* %_1393
  %_raw_array1395 = call i64* @oat_alloc_array(i64 3)
  %_array1396 = bitcast i64* %_raw_array1395 to { i64, [0 x i64] }*
  %_1399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1396, i32 0, i32 1, i32 2
  store i64 999, i64* %_1399
  %_1398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1396, i32 0, i32 1, i32 1
  store i64 100, i64* %_1398
  %_1397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1396, i32 0, i32 1, i32 0
  store i64 1, i64* %_1397
  store { i64, [0 x i64] }* %_array1396, { i64, [0 x i64] }** %_1394
  %_1400 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1394
  %_1401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1400, i32 0, i32 1, i32 2
  %_1402 = load i64, i64* %_1401
  ret i64 %_1402
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
