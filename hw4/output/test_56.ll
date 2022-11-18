; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3060 = alloca i64
  store i64 %argc, i64* %_3060
  %_3061 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3061
  %_3062 = alloca { i64, [0 x i1] }*
  %_3067 = alloca i64
  %_raw_array3063 = call i64* @oat_alloc_array(i64 2)
  %_array3064 = bitcast i64* %_raw_array3063 to { i64, [0 x i1] }*
  %_3066 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array3064, i32 0, i32 1, i32 1
  store i1 0, i1* %_3066
  %_3065 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array3064, i32 0, i32 1, i32 0
  store i1 1, i1* %_3065
  store { i64, [0 x i1] }* %_array3064, { i64, [0 x i1] }** %_3062
  store i64 0, i64* %_3067
  %_3068 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3062
  %_3069 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3068, i32 0, i32 1, i32 0
  %_3070 = load i1, i1* %_3069
  br i1 %_3070, label %_3071, label %_3072
_3071:
  store i64 1, i64* %_3067
  br label %_3073
_3072:
  br label %_3073
_3073:
  %_3074 = load i64, i64* %_3067
  ret i64 %_3074
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
