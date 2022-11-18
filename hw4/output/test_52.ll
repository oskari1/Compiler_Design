; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3033 = alloca i64
  store i64 %argc, i64* %_3033
  %_3034 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3034
  %_3035 = alloca i64
  store i64 0, i64* %_3035
  %_3036 = load i1, i1* @b
  br i1 %_3036, label %_3037, label %_3038
_3037:
  store i64 1, i64* %_3035
  br label %_3039
_3038:
  br label %_3039
_3039:
  %_3040 = load i64, i64* %_3035
  ret i64 %_3040
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
