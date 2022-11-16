; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_2082 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2079 = alloca i64
  store i64 %argc, i64* %_2079
  %_2080 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2080
  %_2081 = alloca i8*
  %_2084 = alloca { i64, [0 x i64] }*
  %_2087 = alloca i64
  %_2088 = alloca i64
  %_2083 = getelementptr [6 x i8], [6 x i8]* @_2082, i32 0, i32 0
  store i8* %_2083, i8** %_2081
  %_2086 = load i8*, i8** %_2081
  %_2085 = call { i64, [0 x i64] }* @array_of_string(i8* %_2086)
  store { i64, [0 x i64] }* %_2085, { i64, [0 x i64] }** %_2084
  store i64 0, i64* %_2087
  store i64 0, i64* %_2088
  br label %_2091
_2091:
  %_2089 = load i64, i64* %_2088
  %_2090 = icmp slt i64 %_2089, 5
  br i1 %_2090, label %_2092, label %_2093
_2092:
  %_2094 = load i64, i64* %_2087
  %_2095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2084
  %_2096 = load i64, i64* %_2088
  %_2097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2095, i32 0, i32 1, i64 %_2096
  %_2098 = load i64, i64* %_2097
  %_2099 = add i64 %_2094, %_2098
  store i64 %_2099, i64* %_2087
  %_2100 = load i64, i64* %_2088
  %_2101 = add i64 %_2100, 1
  store i64 %_2101, i64* %_2088
  br label %_2091
_2093:
  %_2102 = load i64, i64* %_2087
  ret i64 %_2102
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
