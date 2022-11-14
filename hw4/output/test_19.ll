; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_175 = alloca i64
  store i64 %argc, i64* %_175
  %_176 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_176
  %_177 = alloca i64
  store i64 0, i64* %_177
  %_178 = load i1, i1* @b
  br i1 %_178, label %_179, label %_180
_179:
  store i64 1, i64* %_177
  br label %_181
_180:
  br label %_181
_181:
  %_182 = load i64, i64* %_177
  ret i64 %_182
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
