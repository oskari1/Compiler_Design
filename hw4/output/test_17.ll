; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_153 to { i64, [0 x i64] }*)
@_153 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_152 to { i64, [0 x i64] }*)
@_152 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_154 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_154
  %_155 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_155
  %_156 = alloca i1
  store i1 %b, i1* %_156
  %_157 = load i1, i1* %_156
  br i1 %_157, label %_158, label %_159
_158:
  %_161 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_154
  ret { i64, [0 x i64] }* %_161
_159:
  %_162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_155
  ret { i64, [0 x i64] }* %_162
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_143 = alloca i64
  store i64 %argc, i64* %_143
  %_144 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_144
  %_147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_148 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_146 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_147, { i64, [0 x i64] }* %_148, i1 1)
  %_145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_146, i32 0, i32 1, i32 0
  store i64 17, i64* %_145
  %_149 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_149, i32 0, i32 1, i32 0
  %_151 = load i64, i64* %_150
  ret i64 %_151
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
