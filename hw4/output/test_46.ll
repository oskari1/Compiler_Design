; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_1039 = alloca i64
  store i64 %a, i64* %_1039
  %_1040 = alloca i64
  store i64 %b, i64* %_1040
  %_1046 = alloca i64
  br label %_1043
_1043:
  %_1041 = load i64, i64* %_1040
  %_1042 = icmp ne i64 %_1041, 0
  br i1 %_1042, label %_1044, label %_1045
_1044:
  %_1047 = load i64, i64* %_1040
  store i64 %_1047, i64* %_1046
  %_1049 = load i64, i64* %_1039
  %_1050 = load i64, i64* %_1040
  %_1048 = call i64 @mod(i64 %_1049, i64 %_1050)
  store i64 %_1048, i64* %_1040
  %_1051 = load i64, i64* %_1046
  store i64 %_1051, i64* %_1039
  br label %_1043
_1045:
  %_1052 = load i64, i64* %_1039
  ret i64 %_1052
}

define i64 @mod(i64 %a, i64 %b) {
  %_1024 = alloca i64
  store i64 %a, i64* %_1024
  %_1025 = alloca i64
  store i64 %b, i64* %_1025
  %_1026 = alloca i64
  %_1027 = load i64, i64* %_1024
  store i64 %_1027, i64* %_1026
  br label %_1032
_1032:
  %_1028 = load i64, i64* %_1026
  %_1029 = load i64, i64* %_1025
  %_1030 = sub i64 %_1028, %_1029
  %_1031 = icmp sge i64 %_1030, 0
  br i1 %_1031, label %_1033, label %_1034
_1033:
  %_1035 = load i64, i64* %_1026
  %_1036 = load i64, i64* %_1025
  %_1037 = sub i64 %_1035, %_1036
  store i64 %_1037, i64* %_1026
  br label %_1032
_1034:
  %_1038 = load i64, i64* %_1026
  ret i64 %_1038
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1017 = alloca i64
  store i64 %argc, i64* %_1017
  %_1018 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1018
  %_1019 = alloca i64
  %_1020 = alloca i64
  store i64 64, i64* %_1019
  store i64 48, i64* %_1020
  %_1022 = load i64, i64* %_1019
  %_1023 = load i64, i64* %_1020
  %_1021 = call i64 @gcd(i64 %_1022, i64 %_1023)
  ret i64 %_1021
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
