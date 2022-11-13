; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_37 = alloca i64
  store i64 %argc, i64* %_37
  %_38 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_38
  %_39 = alloca i64
  %_41 = alloca i64
  %_40 = lshr i64 100, 3
  store i64 %_40, i64* %_39
  %_42 = shl i64 100, 3
  store i64 %_42, i64* %_41
  %_43 = load i64, i64* %_39
  %_44 = load i64, i64* %_41
  %_45 = sub i64 %_43, %_44
  %_46 = icmp sle i64 %_45, 0
  br i1 %_46, label %_47, label %_48
_47:
  %_50 = load i64, i64* %_39
  %_51 = sub i64 0, %_50
  %_52 = load i64, i64* %_41
  %_53 = sub i64 %_51, %_52
  ret i64 %_53
_48:
  %_54 = load i64, i64* %_39
  %_55 = load i64, i64* %_41
  %_56 = sub i64 %_54, %_55
  ret i64 %_56
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
