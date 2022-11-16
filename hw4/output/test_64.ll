; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1174 = alloca i64
  store i64 %argc, i64* %_1174
  %_1175 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1175
  %_1176 = alloca { i64, [0 x i64] }*
  %_raw_array1177 = call i64* @oat_alloc_array(i64 3)
  %_array1178 = bitcast i64* %_raw_array1177 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1178, { i64, [0 x i64] }** %_1176
  %_1179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1176
  %_1180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1179, i32 0, i32 1, i32 2
  %_1181 = load i64, i64* %_1180
  ret i64 %_1181
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
