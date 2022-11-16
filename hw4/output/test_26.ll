; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_253 = alloca i64
  store i64 12, i64* %_253
  %_254 = load i64, i64* %_253
  ret i64 %_254
}

define i64 @g() {
  %_251 = alloca i64
  store i64 10, i64* %_251
  %_252 = load i64, i64* %_251
  ret i64 %_252
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_244 = alloca i64
  store i64 %argc, i64* %_244
  %_245 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_245
  %_246 = call i64 @f()
  %_247 = call i64 @g()
  %_248 = add i64 %_246, %_247
  %_249 = load i64, i64* @i
  %_250 = add i64 %_248, %_249
  ret i64 %_250
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
