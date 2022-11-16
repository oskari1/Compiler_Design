; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_203 to { i64, [0 x i64] }*)
@_203 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_192 = alloca i64
  store i64 %argc, i64* %_192
  %_193 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_193
  %_194 = alloca { i64, [0 x i64] }*
  %_raw_array195 = call i64* @oat_alloc_array(i64 3)
  %_array196 = bitcast i64* %_raw_array195 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array196, { i64, [0 x i64] }** %_194
  %_197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_194
  store { i64, [0 x i64] }* %_197, { i64, [0 x i64] }** @arr
  %_199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_194
  %_198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_199, i32 0, i32 1, i32 2
  store i64 3, i64* %_198
  %_200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_200, i32 0, i32 1, i32 2
  %_202 = load i64, i64* %_201
  ret i64 %_202
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
