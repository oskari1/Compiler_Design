; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_208 to { i64, [0 x i64] }*)
@_208 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_207 to { i64, [0 x i64] }*)
@_207 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_209 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_209
  %_210 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_210
  %_211 = alloca i1
  store i1 %b, i1* %_211
  %_212 = load i1, i1* %_211
  br i1 %_212, label %_213, label %_214
_213:
  %_216 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_209
  ret { i64, [0 x i64] }* %_216
_214:
  %_217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_210
  ret { i64, [0 x i64] }* %_217
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_198 = alloca i64
  store i64 %argc, i64* %_198
  %_199 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_199
  %_202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_203 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_201 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_202, { i64, [0 x i64] }* %_203, i1 1)
  %_200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_201, i32 0, i32 1, i32 0
  store i64 17, i64* %_200
  %_204 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_204, i32 0, i32 1, i32 0
  %_206 = load i64, i64* %_205
  ret i64 %_206
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
