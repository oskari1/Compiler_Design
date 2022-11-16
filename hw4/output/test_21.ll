; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_268 to { i64, [0 x i64] }*)
@_268 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_267 to { i64, [0 x i64] }*)
@_267 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_269 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_269
  %_270 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_270
  %_271 = alloca i1
  store i1 %b, i1* %_271
  %_272 = load i1, i1* %_271
  br i1 %_272, label %_273, label %_274
_273:
  %_276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_269
  ret { i64, [0 x i64] }* %_276
_274:
  %_277 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_270
  ret { i64, [0 x i64] }* %_277
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_258 = alloca i64
  store i64 %argc, i64* %_258
  %_259 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_259
  %_262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_263 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_261 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_262, { i64, [0 x i64] }* %_263, i1 1)
  %_260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_261, i32 0, i32 1, i32 0
  store i64 17, i64* %_260
  %_264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_264, i32 0, i32 1, i32 0
  %_266 = load i64, i64* %_265
  ret i64 %_266
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
