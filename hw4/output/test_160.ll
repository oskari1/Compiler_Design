; generated from: ./nicdard/call.oat
target triple = "x86_64-unknown-linux"
define i64 @a() {
  ret i64 10
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5920 = alloca i64
  store i64 %argc, i64* %_5920
  %_5921 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5921
  %_5922 = call i64 @a()
  ret i64 %_5922
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
