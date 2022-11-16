; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_187 = alloca i64
  store i64 %argc, i64* %_187
  %_188 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_188
  %_189 = alloca i64
  store i64 0, i64* %_189
  %_190 = load i1, i1* @b
  br i1 %_190, label %_191, label %_192
_191:
  store i64 1, i64* %_189
  br label %_193
_192:
  br label %_193
_193:
  %_194 = load i64, i64* %_189
  ret i64 %_194
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
