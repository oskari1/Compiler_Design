; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_305 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_305
  %_306 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_306
  %_307 = alloca i1
  store i1 %b, i1* %_307
  %_308 = load i1, i1* %_307
  br i1 %_308, label %_309, label %_310
_309:
  %_312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_305
  ret { i64, [0 x i64] }* %_312
_310:
  %_313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_306
  ret { i64, [0 x i64] }* %_313
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_290 = alloca i64
  store i64 %argc, i64* %_290
  %_291 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_291
  %_292 = alloca { i64, [0 x i64] }*
  %_295 = alloca { i64, [0 x i64] }*
  %_raw_array293 = call i64* @oat_alloc_array(i64 3)
  %_array294 = bitcast i64* %_raw_array293 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array294, { i64, [0 x i64] }** %_292
  %_raw_array296 = call i64* @oat_alloc_array(i64 3)
  %_array297 = bitcast i64* %_raw_array296 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array297, { i64, [0 x i64] }** %_295
  %_300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_292
  %_301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_295
  %_299 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_300, { i64, [0 x i64] }* %_301, i1 1)
  %_298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_299, i32 0, i32 1, i32 0
  store i64 17, i64* %_298
  %_302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_292
  %_303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_302, i32 0, i32 1, i32 0
  %_304 = load i64, i64* %_303
  ret i64 %_304
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
