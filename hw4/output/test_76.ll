; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_2078 to i8*)
@_2078 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2055 = alloca i64
  store i64 %argc, i64* %_2055
  %_2056 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2056
  %_2057 = alloca { i64, [0 x i64] }*
  %_2060 = alloca i64
  %_2061 = alloca i64
  %_2059 = load i8*, i8** @str
  %_2058 = call { i64, [0 x i64] }* @array_of_string(i8* %_2059)
  store { i64, [0 x i64] }* %_2058, { i64, [0 x i64] }** %_2057
  store i64 0, i64* %_2060
  store i64 0, i64* %_2061
  br label %_2064
_2064:
  %_2062 = load i64, i64* %_2061
  %_2063 = icmp slt i64 %_2062, 5
  br i1 %_2063, label %_2065, label %_2066
_2065:
  %_2067 = load i64, i64* %_2060
  %_2068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2057
  %_2069 = load i64, i64* %_2061
  %_2070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2068, i32 0, i32 1, i64 %_2069
  %_2071 = load i64, i64* %_2070
  %_2072 = add i64 %_2067, %_2071
  store i64 %_2072, i64* %_2060
  %_2073 = load i64, i64* %_2061
  %_2074 = add i64 %_2073, 1
  store i64 %_2074, i64* %_2061
  br label %_2064
_2066:
  %_2076 = load i64, i64* %_2060
  call void @print_int(i64 %_2076)
  %_2077 = load i64, i64* %_2060
  ret i64 %_2077
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
