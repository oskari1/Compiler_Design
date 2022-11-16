; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_1105 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_1105
  %_1106 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1105
  %_1107 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1106, i32 0, i32 1, i32 1
  %_1108 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1107
  %_1109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1108, i32 0, i32 1, i32 1
  %_1110 = load i64, i64* %_1109
  ret i64 %_1110
}

define i64 @g(i64 %x) {
  %_1081 = alloca i64
  store i64 %x, i64* %_1081
  %_1082 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1083 = call i64* @oat_alloc_array(i64 3)
  %_array1084 = bitcast i64* %_raw_array1083 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1095 = call i64* @oat_alloc_array(i64 3)
  %_array1096 = bitcast i64* %_raw_array1095 to { i64, [0 x i64] }*
  %_1099 = load i64, i64* %_1081
  %_1098 = load i64, i64* %_1081
  %_1097 = load i64, i64* %_1081
  %_raw_array1090 = call i64* @oat_alloc_array(i64 3)
  %_array1091 = bitcast i64* %_raw_array1090 to { i64, [0 x i64] }*
  %_1094 = load i64, i64* %_1081
  %_1093 = load i64, i64* %_1081
  %_1092 = load i64, i64* %_1081
  %_raw_array1085 = call i64* @oat_alloc_array(i64 3)
  %_array1086 = bitcast i64* %_raw_array1085 to { i64, [0 x i64] }*
  %_1089 = load i64, i64* %_1081
  %_1088 = load i64, i64* %_1081
  %_1087 = load i64, i64* %_1081
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1084, { i64, [0 x { i64, [0 x i64] }*] }** %_1082
  %_1100 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1082
  %_1101 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1100, i32 0, i32 1, i32 1
  %_1102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1101
  %_1103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1102, i32 0, i32 1, i32 1
  %_1104 = load i64, i64* %_1103
  ret i64 %_1104
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1005 = alloca i64
  store i64 %argc, i64* %_1005
  %_1006 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1006
  %_1007 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1016 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1047 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1008 = call i64* @oat_alloc_array(i64 3)
  %_array1009 = bitcast i64* %_raw_array1008 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1014 = call i64* @oat_alloc_array(i64 3)
  %_array1015 = bitcast i64* %_raw_array1014 to { i64, [0 x i64] }*
  %_raw_array1012 = call i64* @oat_alloc_array(i64 3)
  %_array1013 = bitcast i64* %_raw_array1012 to { i64, [0 x i64] }*
  %_raw_array1010 = call i64* @oat_alloc_array(i64 3)
  %_array1011 = bitcast i64* %_raw_array1010 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1009, { i64, [0 x { i64, [0 x i64] }*] }** %_1007
  %_raw_array1017 = call i64* @oat_alloc_array(i64 4)
  %_array1018 = bitcast i64* %_raw_array1017 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1040 = call i64* @oat_alloc_array(i64 5)
  %_array1041 = bitcast i64* %_raw_array1040 to { i64, [0 x i64] }*
  %_1046 = mul i64 3, 4
  %_1045 = mul i64 3, 3
  %_1044 = mul i64 3, 2
  %_1043 = mul i64 3, 1
  %_1042 = mul i64 3, 0
  %_raw_array1033 = call i64* @oat_alloc_array(i64 5)
  %_array1034 = bitcast i64* %_raw_array1033 to { i64, [0 x i64] }*
  %_1039 = mul i64 2, 4
  %_1038 = mul i64 2, 3
  %_1037 = mul i64 2, 2
  %_1036 = mul i64 2, 1
  %_1035 = mul i64 2, 0
  %_raw_array1026 = call i64* @oat_alloc_array(i64 5)
  %_array1027 = bitcast i64* %_raw_array1026 to { i64, [0 x i64] }*
  %_1032 = mul i64 1, 4
  %_1031 = mul i64 1, 3
  %_1030 = mul i64 1, 2
  %_1029 = mul i64 1, 1
  %_1028 = mul i64 1, 0
  %_raw_array1019 = call i64* @oat_alloc_array(i64 5)
  %_array1020 = bitcast i64* %_raw_array1019 to { i64, [0 x i64] }*
  %_1025 = mul i64 0, 4
  %_1024 = mul i64 0, 3
  %_1023 = mul i64 0, 2
  %_1022 = mul i64 0, 1
  %_1021 = mul i64 0, 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1018, { i64, [0 x { i64, [0 x i64] }*] }** %_1016
  %_raw_array1048 = call i64* @oat_alloc_array(i64 3)
  %_array1049 = bitcast i64* %_raw_array1048 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1060 = call i64* @oat_alloc_array(i64 3)
  %_array1061 = bitcast i64* %_raw_array1060 to { i64, [0 x i64] }*
  %_1064 = mul i64 2, 2
  %_1063 = mul i64 2, 1
  %_1062 = mul i64 2, 0
  %_raw_array1055 = call i64* @oat_alloc_array(i64 3)
  %_array1056 = bitcast i64* %_raw_array1055 to { i64, [0 x i64] }*
  %_1059 = mul i64 1, 2
  %_1058 = mul i64 1, 1
  %_1057 = mul i64 1, 0
  %_raw_array1050 = call i64* @oat_alloc_array(i64 3)
  %_array1051 = bitcast i64* %_raw_array1050 to { i64, [0 x i64] }*
  %_1054 = mul i64 0, 2
  %_1053 = mul i64 0, 1
  %_1052 = mul i64 0, 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1049, { i64, [0 x { i64, [0 x i64] }*] }** %_1047
  %_1065 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1016
  %_1066 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1065, i32 0, i32 1, i32 3
  %_1067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1066
  %_1068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1067, i32 0, i32 1, i32 4
  %_1069 = load i64, i64* %_1068
  %_1070 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1007
  %_1071 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1070, i32 0, i32 1, i32 1
  %_1072 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1071
  %_1073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1072, i32 0, i32 1, i32 2
  %_1074 = load i64, i64* %_1073
  %_1075 = add i64 %_1069, %_1074
  %_1077 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1047
  %_1076 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_1077)
  %_1078 = add i64 %_1075, %_1076
  %_1079 = call i64 @g(i64 4)
  %_1080 = add i64 %_1078, %_1079
  ret i64 %_1080
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
