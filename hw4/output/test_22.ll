; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_293 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_293
  %_294 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_294
  %_295 = alloca i1
  store i1 %b, i1* %_295
  %_296 = load i1, i1* %_295
  br i1 %_296, label %_297, label %_298
_297:
  %_300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_293
  ret { i64, [0 x i64] }* %_300
_298:
  %_301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_294
  ret { i64, [0 x i64] }* %_301
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_278 = alloca i64
  store i64 %argc, i64* %_278
  %_279 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_279
  %_280 = alloca { i64, [0 x i64] }*
  %_283 = alloca { i64, [0 x i64] }*
  %_raw_array281 = call i64* @oat_alloc_array(i64 3)
  %_array282 = bitcast i64* %_raw_array281 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array282, { i64, [0 x i64] }** %_280
  %_raw_array284 = call i64* @oat_alloc_array(i64 3)
  %_array285 = bitcast i64* %_raw_array284 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array285, { i64, [0 x i64] }** %_283
  %_288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_280
  %_289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_283
  %_287 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_288, { i64, [0 x i64] }* %_289, i1 1)
  %_286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_287, i32 0, i32 1, i32 0
  store i64 17, i64* %_286
  %_290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_280
  %_291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_290, i32 0, i32 1, i32 0
  %_292 = load i64, i64* %_291
  ret i64 %_292
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
