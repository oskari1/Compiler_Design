; generated from: ./dbernhard/length.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_7495 = alloca i64
  store i64 %argc, i64* %_7495
  %_7496 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7496
  %_7497 = alloca i64
  %_7499 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_7496
  %_7500 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_7499, i32 0, i32 1, i32 1
  %_7501 = load i8*, i8** %_7500
  %_7498 = call i64 @length_of_string(i8* %_7501)
  store i64 %_7498, i64* %_7497
  %_7502 = load i64, i64* %_7497
  ret i64 %_7502
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
