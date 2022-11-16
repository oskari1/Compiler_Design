; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_383 = alloca i64
  store i64 %argc, i64* %_383
  %_384 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_384
  %_385 = alloca i64
  store i64 0, i64* %_385
  %_386 = load i1, i1* @b
  br i1 %_386, label %_387, label %_388
_387:
  store i64 1, i64* %_385
  br label %_389
_388:
  br label %_389
_389:
  %_390 = load i64, i64* %_385
  ret i64 %_390
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
