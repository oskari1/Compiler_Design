; generated from: ./nicdard/while.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8362 = alloca i64
  store i64 %argc, i64* %_8362
  %_8363 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8363
  %_8364 = alloca i64
  store i64 0, i64* %_8364
  br label %_8367
_8367:
  %_8365 = load i64, i64* %_8364
  %_8366 = icmp ne i64 %_8365, 0
  br i1 %_8366, label %_8368, label %_8369
_8368:
  br label %_8367
_8369:
  %_8370 = load i64, i64* %_8364
  ret i64 %_8370
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
