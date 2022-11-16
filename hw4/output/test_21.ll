; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_262 to { i64, [0 x i64] }*)
@_262 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_261 to { i64, [0 x i64] }*)
@_261 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_263 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_263
  %_264 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_264
  %_265 = alloca i1
  store i1 %b, i1* %_265
  %_266 = load i1, i1* %_265
  br i1 %_266, label %_267, label %_268
_267:
  %_270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_263
  ret { i64, [0 x i64] }* %_270
_268:
  %_271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_264
  ret { i64, [0 x i64] }* %_271
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_242 = alloca i64
  store i64 %argc, i64* %_242
  %_243 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_243
  %_248 = alloca i64
  %_246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_247 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_245 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_246, { i64, [0 x i64] }* %_247, i1 1)
  %_244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_245, i32 0, i32 1, i32 0
  store i64 17, i64* %_244
  %_250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_249 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_250, { i64, [0 x i64] }* %_251, i1 1)
  %_252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_249, i32 0, i32 1, i32 0
  %_253 = load i64, i64* %_252
  %_255 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_254 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_255, { i64, [0 x i64] }* %_256, i1 0)
  %_257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_254, i32 0, i32 1, i32 0
  %_258 = load i64, i64* %_257
  %_259 = add i64 %_253, %_258
  store i64 %_259, i64* %_248
  %_260 = load i64, i64* %_248
  ret i64 %_260
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
