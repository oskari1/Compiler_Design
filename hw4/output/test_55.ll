; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_3058 = alloca i64
  store i64 12, i64* %_3058
  %_3059 = load i64, i64* %_3058
  ret i64 %_3059
}

define i64 @g() {
  %_3056 = alloca i64
  store i64 10, i64* %_3056
  %_3057 = load i64, i64* %_3056
  ret i64 %_3057
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3049 = alloca i64
  store i64 %argc, i64* %_3049
  %_3050 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3050
  %_3051 = call i64 @f()
  %_3052 = call i64 @g()
  %_3053 = add i64 %_3051, %_3052
  %_3054 = load i64, i64* @i
  %_3055 = add i64 %_3053, %_3054
  ret i64 %_3055
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
