; generated from: oatprograms/abs.oat
target triple = "x86_64-unknown-linux"
define i64 @abs(i64 %x) {
  %_10 = alloca i64
  store i64 %x, i64* %_10
  %_11 = load i64, i64* %_10
  %_12 = icmp slt i64 %_11, 0
  br i1 %_12, label %_13, label %_14
_13:
  %_16 = load i64, i64* %_10
  %_17 = sub i64 0, %_16
  ret i64 %_17
_14:
  %_18 = load i64, i64* %_10
  %_19 = icmp sgt i64 %_18, 0
  br i1 %_19, label %_20, label %_21
_20:
  %_23 = load i64, i64* %_10
  ret i64 %_23
_21:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1 = alloca i64
  store i64 %argc, i64* %_1
  %_2 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2
  %_4 = call i64 @abs(i64 10)
  %_6 = sub i64 0, 10
  %_5 = call i64 @abs(i64 %_6)
  %_7 = add i64 %_4, %_5
  %_8 = call i64 @abs(i64 0)
  %_9 = add i64 %_7, %_8
  call void @print_int(i64 %_9)
  ret i64 0
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
