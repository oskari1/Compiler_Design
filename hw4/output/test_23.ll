; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_334 to { i64, [0 x i64] }*)
@_334 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_333 to { i64, [0 x i64] }*)
@_333 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_335 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_335
  %_336 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_336
  %_337 = alloca i1
  store i1 %b, i1* %_337
  %_338 = load i1, i1* %_337
  br i1 %_338, label %_339, label %_340
_339:
  %_342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_335
  ret { i64, [0 x i64] }* %_342
_340:
  %_343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_336
  ret { i64, [0 x i64] }* %_343
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_314 = alloca i64
  store i64 %argc, i64* %_314
  %_315 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_315
  %_320 = alloca i64
  %_318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_317 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_318, { i64, [0 x i64] }* %_319, i1 1)
  %_316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_317, i32 0, i32 1, i32 0
  store i64 17, i64* %_316
  %_322 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_321 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_322, { i64, [0 x i64] }* %_323, i1 1)
  %_324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_321, i32 0, i32 1, i32 0
  %_325 = load i64, i64* %_324
  %_327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_328 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_326 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_327, { i64, [0 x i64] }* %_328, i1 0)
  %_329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_326, i32 0, i32 1, i32 0
  %_330 = load i64, i64* %_329
  %_331 = add i64 %_325, %_330
  store i64 %_331, i64* %_320
  %_332 = load i64, i64* %_320
  ret i64 %_332
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
