; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_369 = alloca i64
  store i64 %argc, i64* %_369
  %_370 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_370
  %_371 = alloca i64
  store i64 0, i64* %_371
  %_372 = load i1, i1* @b
  br i1 %_372, label %_373, label %_374
_373:
  store i64 1, i64* %_371
  br label %_375
_374:
  br label %_375
_375:
  %_376 = load i64, i64* %_371
  ret i64 %_376
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
