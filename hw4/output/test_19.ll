; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_177 = alloca i64
  store i64 %argc, i64* %_177
  %_178 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_178
  %_179 = alloca i64
  store i64 0, i64* %_179
  %_180 = load i1, i1* @b
  br i1 %_180, label %_181, label %_182
_181:
  store i64 1, i64* %_179
  br label %_183
_182:
  br label %_183
_183:
  %_184 = load i64, i64* %_179
  ret i64 %_184
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
