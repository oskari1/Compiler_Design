; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_131 to { i64, [0 x i64] }*)
@_131 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_120 = alloca i64
  store i64 %argc, i64* %_120
  %_121 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_121
  %_122 = alloca { i64, [0 x i64] }*
  %_raw_array123 = call i64* @oat_alloc_array(i64 3)
  %_array124 = bitcast i64* %_raw_array123 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array124, { i64, [0 x i64] }** %_122
  %_125 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_122
  store { i64, [0 x i64] }* %_125, { i64, [0 x i64] }** @arr
  %_127 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_122
  %_126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_127, i32 0, i32 1, i32 2
  store i64 3, i64* %_126
  %_128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_128, i32 0, i32 1, i32 2
  %_130 = load i64, i64* %_129
  ret i64 %_130
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
