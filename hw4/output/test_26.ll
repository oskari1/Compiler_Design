; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_304 = alloca i64
  store i64 %argc, i64* %_304
  %_305 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_305
  %_306 = alloca i64
  store i64 0, i64* %_306
  %_307 = load i1, i1* @b
  br i1 %_307, label %_308, label %_309
_308:
  store i64 1, i64* %_306
  br label %_310
_309:
  br label %_310
_310:
  %_311 = load i64, i64* %_306
  ret i64 %_311
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
