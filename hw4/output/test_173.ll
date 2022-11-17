; generated from: ./nicdard/function.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6070 = alloca i64
  store i64 %argc, i64* %_6070
  %_6071 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6071
  %_6072 = alloca i64
  %_6073 = call i64 @abs2()
  store i64 %_6073, i64* %_6072
  %_6074 = load i64, i64* %_6072
  %_6075 = call i64 @abs()
  %_6076 = add i64 %_6074, %_6075
  store i64 %_6076, i64* %_6072
  %_6077 = load i64, i64* %_6072
  ret i64 %_6077
}

define i64 @abs() {
  br i1 1, label %_6067, label %_6068
_6067:
  ret i64 1
_6068:
  ret i64 0
}

define i64 @abs2() {
  br i1 1, label %_6061, label %_6062
_6061:
  ret i64 0
_6062:
  br i1 0, label %_6064, label %_6065
_6064:
  ret i64 1
_6065:
  ret i64 7
_6066:
  br label %_6063
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
