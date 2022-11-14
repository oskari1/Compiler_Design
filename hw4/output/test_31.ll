; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_321 = alloca i64
  store i64 %x, i64* %_321
  %_322 = alloca i64
  store i64 1, i64* %_322
  br label %_325
_325:
  %_323 = load i64, i64* %_321
  %_324 = icmp sgt i64 %_323, 0
  br i1 %_324, label %_326, label %_327
_326:
  %_328 = load i64, i64* %_322
  %_329 = load i64, i64* %_321
  %_330 = mul i64 %_328, %_329
  store i64 %_330, i64* %_322
  %_331 = load i64, i64* %_321
  %_332 = sub i64 %_331, 1
  store i64 %_332, i64* %_321
  br label %_325
_327:
  %_333 = load i64, i64* %_322
  ret i64 %_333
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_316 = alloca i64
  store i64 %argc, i64* %_316
  %_317 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_317
  %_320 = call i64 @fact(i64 5)
  %_319 = call i8* @string_of_int(i64 %_320)
  call void @print_string(i8* %_319)
  ret i64 0
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
