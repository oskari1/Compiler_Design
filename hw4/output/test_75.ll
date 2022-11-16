; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1701 = alloca i64
  store i64 %argc, i64* %_1701
  %_1702 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1702
  %_1703 = alloca i8*
  %_raw_array1705 = call i64* @oat_alloc_array(i64 3)
  %_array1706 = bitcast i64* %_raw_array1705 to { i64, [0 x i64] }*
  %_1704 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1706)
  store i8* %_1704, i8** %_1703
  %_1708 = load i8*, i8** %_1703
  call void @print_string(i8* %_1708)
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
