; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1871 = alloca i64
  store i64 %argc, i64* %_1871
  %_1872 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1872
  %_1873 = alloca { i64, [0 x i64] }*
  %_raw_array1874 = call i64* @oat_alloc_array(i64 10)
  %_array1875 = bitcast i64* %_raw_array1874 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1875, { i64, [0 x i64] }** %_1873
  %_1878 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1873
  %_1877 = call i8* @string_of_array({ i64, [0 x i64] }* %_1878)
  call void @print_string(i8* %_1877)
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
