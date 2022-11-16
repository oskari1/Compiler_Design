; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_933 = alloca i64
  store i64 %argc, i64* %_933
  %_934 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_934
  %_935 = alloca { i64, [0 x i64] }*
  %_raw_array936 = call i64* @oat_alloc_array(i64 2)
  %_array937 = bitcast i64* %_raw_array936 to { i64, [0 x i64] }*
  %_939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array937, i32 0, i32 1, i32 1
  store i64 2, i64* %_939
  %_938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array937, i32 0, i32 1, i32 0
  store i64 1, i64* %_938
  store { i64, [0 x i64] }* %_array937, { i64, [0 x i64] }** %_935
  %_940 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_935
  %_941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_940, i32 0, i32 1, i32 1
  %_942 = load i64, i64* %_941
  ret i64 %_942
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
