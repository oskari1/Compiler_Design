; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_228 = alloca i64
  store i64 %argc, i64* %_228
  %_229 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_229
  %_230 = alloca i64
  store i64 0, i64* %_230
  %_231 = load i1, i1* @b
  br i1 %_231, label %_232, label %_233
_232:
  store i64 1, i64* %_230
  br label %_234
_233:
  br label %_234
_234:
  %_235 = load i64, i64* %_230
  ret i64 %_235
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
