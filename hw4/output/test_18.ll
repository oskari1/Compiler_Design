; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_186 to { i64, [0 x i64] }*)
@_186 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_185 to { i64, [0 x i64] }*)
@_185 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_187 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_187
  %_188 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_188
  %_189 = alloca i1
  store i1 %b, i1* %_189
  %_190 = load i1, i1* %_189
  br i1 %_190, label %_191, label %_192
_191:
  %_194 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_187
  ret { i64, [0 x i64] }* %_194
_192:
  %_195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_188
  ret { i64, [0 x i64] }* %_195
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_166 = alloca i64
  store i64 %argc, i64* %_166
  %_167 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_167
  %_172 = alloca i64
  %_170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_171 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_169 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_170, { i64, [0 x i64] }* %_171, i1 1)
  %_168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_169, i32 0, i32 1, i32 0
  store i64 17, i64* %_168
  %_174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_173 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_174, { i64, [0 x i64] }* %_175, i1 1)
  %_176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_173, i32 0, i32 1, i32 0
  %_177 = load i64, i64* %_176
  %_179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_178 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_179, { i64, [0 x i64] }* %_180, i1 0)
  %_181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_178, i32 0, i32 1, i32 0
  %_182 = load i64, i64* %_181
  %_183 = add i64 %_177, %_182
  store i64 %_183, i64* %_172
  %_184 = load i64, i64* %_172
  ret i64 %_184
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
