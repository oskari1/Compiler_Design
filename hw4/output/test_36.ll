; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_530 = alloca i64
  store i64 %argc, i64* %_530
  %_531 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_531
  %_532 = alloca { i64, [0 x i64] }*
  %_raw_array533 = call i64* @oat_alloc_array(i64 2)
  %_array534 = bitcast i64* %_raw_array533 to { i64, [0 x i64] }*
  %_536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array534, i32 0, i32 1, i32 1
  store i64 0, i64* %_536
  %_535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array534, i32 0, i32 1, i32 0
  store i64 0, i64* %_535
  store { i64, [0 x i64] }* %_array534, { i64, [0 x i64] }** %_532
  %_537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_532
  %_538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_537, i32 0, i32 1, i32 1
  %_539 = load i64, i64* %_538
  ret i64 %_539
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
