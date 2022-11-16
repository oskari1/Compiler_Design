; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_2041 = load i64, i64* @a
  %_2042 = add i64 %_2041, 1
  store i64 %_2042, i64* @a
  %_2043 = load i64, i64* @a
  ret i64 %_2043
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2020 = alloca i64
  store i64 %argc, i64* %_2020
  %_2021 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2021
  %_2022 = alloca { i64, [0 x i64] }*
  %_2023 = call i64 @f()
  %_raw_array2024 = call i64* @oat_alloc_array(i64 %_2023)
  %_array2025 = bitcast i64* %_raw_array2024 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2025, { i64, [0 x i64] }** %_2022
  %_2026 = call i64 @f()
  %_2028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2022
  %_2027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2028, i32 0, i32 1, i32 0
  store i64 %_2026, i64* %_2027
  %_2029 = call i64 @f()
  %_2031 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2022
  %_2030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2031, i32 0, i32 1, i32 1
  store i64 %_2029, i64* %_2030
  %_2032 = load i64, i64* @a
  %_2033 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2022
  %_2034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2033, i32 0, i32 1, i32 0
  %_2035 = load i64, i64* %_2034
  %_2036 = add i64 %_2032, %_2035
  %_2037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2022
  %_2038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2037, i32 0, i32 1, i32 1
  %_2039 = load i64, i64* %_2038
  %_2040 = add i64 %_2036, %_2039
  ret i64 %_2040
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
