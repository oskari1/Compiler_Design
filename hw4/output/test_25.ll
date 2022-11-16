; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_287 = alloca i64
  store i64 %argc, i64* %_287
  %_288 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_288
  %_289 = alloca i64
  %_290 = alloca i64
  store i64 9, i64* %_289
  %_291 = load i64, i64* %_289
  %_292 = load i64, i64* %_289
  %_293 = add i64 %_291, %_292
  store i64 %_293, i64* %_290
  %_294 = load i64, i64* %_289
  %_295 = load i64, i64* %_289
  %_296 = load i64, i64* %_289
  %_297 = mul i64 %_295, %_296
  %_298 = add i64 %_294, %_297
  %_299 = load i64, i64* %_290
  %_300 = sub i64 %_298, %_299
  %_301 = lshr i64 %_300, 2
  %_302 = shl i64 %_301, 2
  %_303 = ashr i64 %_302, 2
  ret i64 %_303
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
