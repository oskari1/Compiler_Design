; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_165 = alloca i64
  store i64 %argc, i64* %_165
  %_166 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_166
  %_167 = alloca i64
  store i64 0, i64* %_167
  %_168 = load i1, i1* @b
  br i1 %_168, label %_169, label %_170
_169:
  store i64 1, i64* %_167
  br label %_171
_170:
  br label %_171
_171:
  %_172 = load i64, i64* %_167
  ret i64 %_172
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
