; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3000 = alloca i64
  store i64 %argc, i64* %_3000
  %_3001 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3001
  %_3002 = alloca { i64, [0 x i64] }*
  %_raw_array3003 = call i64* @oat_alloc_array(i64 2)
  %_array3004 = bitcast i64* %_raw_array3003 to { i64, [0 x i64] }*
  %_3006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3004, i32 0, i32 1, i32 1
  store i64 0, i64* %_3006
  %_3005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3004, i32 0, i32 1, i32 0
  store i64 99, i64* %_3005
  store { i64, [0 x i64] }* %_array3004, { i64, [0 x i64] }** %_3002
  %_3007 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3002
  %_3008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3007, i32 0, i32 1, i32 0
  %_3009 = load i64, i64* %_3008
  ret i64 %_3009
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
