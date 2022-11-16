; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_280 to { i64, [0 x i64] }*)
@_280 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_279 to { i64, [0 x i64] }*)
@_279 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_281 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_281
  %_282 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_282
  %_283 = alloca i1
  store i1 %b, i1* %_283
  %_284 = load i1, i1* %_283
  br i1 %_284, label %_285, label %_286
_285:
  %_288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_281
  ret { i64, [0 x i64] }* %_288
_286:
  %_289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_282
  ret { i64, [0 x i64] }* %_289
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_270 = alloca i64
  store i64 %argc, i64* %_270
  %_271 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_271
  %_274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_273 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_274, { i64, [0 x i64] }* %_275, i1 1)
  %_272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_273, i32 0, i32 1, i32 0
  store i64 17, i64* %_272
  %_276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_276, i32 0, i32 1, i32 0
  %_278 = load i64, i64* %_277
  ret i64 %_278
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
