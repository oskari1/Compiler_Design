; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_212 = alloca i64
  store i64 12, i64* %_212
  %_213 = load i64, i64* %_212
  ret i64 %_213
}

define i64 @g() {
  %_210 = alloca i64
  store i64 10, i64* %_210
  %_211 = load i64, i64* %_210
  ret i64 %_211
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_203 = alloca i64
  store i64 %argc, i64* %_203
  %_204 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_204
  %_205 = call i64 @f()
  %_206 = call i64 @g()
  %_207 = add i64 %_205, %_206
  %_208 = load i64, i64* @i
  %_209 = add i64 %_207, %_208
  ret i64 %_209
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
