; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_307 = alloca i64
  store i64 %i, i64* %_307
  %_309 = load i64, i64* %_307
  %_308 = call i64 @f2(i64 %_309)
  ret i64 %_308
}

define i64 @f2(i64 %i) {
  %_304 = alloca i64
  store i64 %i, i64* %_304
  %_306 = load i64, i64* %_304
  %_305 = call i64 @f3(i64 %_306)
  ret i64 %_305
}

define i64 @f3(i64 %i) {
  %_301 = alloca i64
  store i64 %i, i64* %_301
  %_303 = load i64, i64* %_301
  %_302 = call i64 @f4(i64 %_303)
  ret i64 %_302
}

define i64 @f4(i64 %i) {
  %_298 = alloca i64
  store i64 %i, i64* %_298
  %_300 = load i64, i64* %_298
  %_299 = call i64 @f5(i64 %_300)
  ret i64 %_299
}

define i64 @f5(i64 %i) {
  %_295 = alloca i64
  store i64 %i, i64* %_295
  %_297 = load i64, i64* %_295
  %_296 = call i64 @f6(i64 %_297)
  ret i64 %_296
}

define i64 @f6(i64 %i) {
  %_292 = alloca i64
  store i64 %i, i64* %_292
  %_294 = load i64, i64* %_292
  %_293 = call i64 @f7(i64 %_294)
  ret i64 %_293
}

define i64 @f7(i64 %i) {
  %_289 = alloca i64
  store i64 %i, i64* %_289
  %_291 = load i64, i64* %_289
  %_290 = call i64 @f8(i64 %_291)
  ret i64 %_290
}

define i64 @f8(i64 %i) {
  %_286 = alloca i64
  store i64 %i, i64* %_286
  %_288 = load i64, i64* %_286
  %_287 = call i64 @f9(i64 %_288)
  ret i64 %_287
}

define i64 @f9(i64 %i) {
  %_284 = alloca i64
  store i64 %i, i64* %_284
  %_285 = load i64, i64* %_284
  ret i64 %_285
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_280 = alloca i64
  store i64 %argc, i64* %_280
  %_281 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_281
  %_283 = load i64, i64* %_280
  %_282 = call i64 @f1(i64 %_283)
  ret i64 %_282
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
