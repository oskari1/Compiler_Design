; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3016 = alloca i64
  store i64 %argc, i64* %_3016
  %_3017 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3017
  %_3018 = alloca i64
  %_3019 = alloca i64
  store i64 9, i64* %_3018
  %_3020 = load i64, i64* %_3018
  %_3021 = load i64, i64* %_3018
  %_3022 = add i64 %_3020, %_3021
  store i64 %_3022, i64* %_3019
  %_3023 = load i64, i64* %_3018
  %_3024 = load i64, i64* %_3018
  %_3025 = load i64, i64* %_3018
  %_3026 = mul i64 %_3024, %_3025
  %_3027 = add i64 %_3023, %_3026
  %_3028 = load i64, i64* %_3019
  %_3029 = sub i64 %_3027, %_3028
  %_3030 = lshr i64 %_3029, 2
  %_3031 = shl i64 %_3030, 2
  %_3032 = ashr i64 %_3031, 2
  ret i64 %_3032
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
