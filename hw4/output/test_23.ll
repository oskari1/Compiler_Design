; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_203 = alloca i64
  store i64 12, i64* %_203
  %_204 = load i64, i64* %_203
  ret i64 %_204
}

define i64 @g() {
  %_201 = alloca i64
  store i64 10, i64* %_201
  %_202 = load i64, i64* %_201
  ret i64 %_202
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_194 = alloca i64
  store i64 %argc, i64* %_194
  %_195 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_195
  %_196 = call i64 @f()
  %_197 = call i64 @g()
  %_198 = add i64 %_196, %_197
  %_199 = load i64, i64* @i
  %_200 = add i64 %_198, %_199
  ret i64 %_200
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
