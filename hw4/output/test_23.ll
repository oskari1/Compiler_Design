; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_322 to { i64, [0 x i64] }*)
@_322 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_321 to { i64, [0 x i64] }*)
@_321 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_323 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_323
  %_324 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_324
  %_325 = alloca i1
  store i1 %b, i1* %_325
  %_326 = load i1, i1* %_325
  br i1 %_326, label %_327, label %_328
_327:
  %_330 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_323
  ret { i64, [0 x i64] }* %_330
_328:
  %_331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_324
  ret { i64, [0 x i64] }* %_331
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_302 = alloca i64
  store i64 %argc, i64* %_302
  %_303 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_303
  %_308 = alloca i64
  %_306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_305 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_306, { i64, [0 x i64] }* %_307, i1 1)
  %_304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_305, i32 0, i32 1, i32 0
  store i64 17, i64* %_304
  %_310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_309 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_310, { i64, [0 x i64] }* %_311, i1 1)
  %_312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_309, i32 0, i32 1, i32 0
  %_313 = load i64, i64* %_312
  %_315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_314 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_315, { i64, [0 x i64] }* %_316, i1 0)
  %_317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_314, i32 0, i32 1, i32 0
  %_318 = load i64, i64* %_317
  %_319 = add i64 %_313, %_318
  store i64 %_319, i64* %_308
  %_320 = load i64, i64* %_308
  ret i64 %_320
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
