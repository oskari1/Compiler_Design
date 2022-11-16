; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_1152 to { i64, [0 x i64] }*)
@_1152 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_1080 = global [1 x i8] c"\00"
@_1059 = global [7 x i8] c"TOMATO\00"
@_1062 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_1068 = alloca i64
  store i64 %i, i64* %_1068
  %_1069 = alloca i64
  store i64 %j, i64* %_1069
  %_1070 = alloca i8*
  store i8* %a, i8** %_1070
  %_1071 = alloca i8*
  store i8* %b, i8** %_1071
  %_1082 = alloca { i64, [0 x i64] }*
  %_1085 = alloca { i64, [0 x i64] }*
  %_1088 = alloca i64
  %_1093 = alloca i64
  %_1104 = alloca i8*
  %_1118 = alloca i8*
  %_1124 = alloca i8*
  %_1131 = alloca i8*
  %_1138 = alloca i64
  %_1141 = alloca i64
  %_1072 = load i64, i64* %_1068
  %_1073 = icmp slt i64 %_1072, 0
  %_1074 = load i64, i64* %_1069
  %_1075 = icmp slt i64 %_1074, 0
  %_1076 = or i1 %_1073, %_1075
  br i1 %_1076, label %_1077, label %_1078
_1077:
  %_1081 = getelementptr [1 x i8], [1 x i8]* @_1080, i32 0, i32 0
  ret i8* %_1081
_1078:
  br label %_1079
_1079:
  %_1084 = load i8*, i8** %_1070
  %_1083 = call { i64, [0 x i64] }* @array_of_string(i8* %_1084)
  store { i64, [0 x i64] }* %_1083, { i64, [0 x i64] }** %_1082
  %_1087 = load i8*, i8** %_1071
  %_1086 = call { i64, [0 x i64] }* @array_of_string(i8* %_1087)
  store { i64, [0 x i64] }* %_1086, { i64, [0 x i64] }** %_1085
  %_1089 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1082
  %_1090 = load i64, i64* %_1068
  %_1091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1089, i32 0, i32 1, i64 %_1090
  %_1092 = load i64, i64* %_1091
  store i64 %_1092, i64* %_1088
  %_1094 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1085
  %_1095 = load i64, i64* %_1069
  %_1096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1094, i32 0, i32 1, i64 %_1095
  %_1097 = load i64, i64* %_1096
  store i64 %_1097, i64* %_1093
  %_1098 = load i64, i64* %_1088
  %_1099 = load i64, i64* %_1093
  %_1100 = icmp eq i64 %_1098, %_1099
  br i1 %_1100, label %_1101, label %_1102
_1101:
  %_1106 = load i64, i64* %_1068
  %_1107 = sub i64 %_1106, 1
  %_1108 = load i64, i64* %_1069
  %_1109 = sub i64 %_1108, 1
  %_1110 = load i8*, i8** %_1070
  %_1111 = load i8*, i8** %_1071
  %_1105 = call i8* @lcs(i64 %_1107, i64 %_1109, i8* %_1110, i8* %_1111)
  store i8* %_1105, i8** %_1104
  %_1112 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1082
  %_1113 = load i64, i64* %_1068
  %_1114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1112, i32 0, i32 1, i64 %_1113
  %_1115 = load i64, i64* %_1114
  %_1117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_1116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1117, i32 0, i32 1, i32 0
  store i64 %_1115, i64* %_1116
  %_1120 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_1119 = call i8* @string_of_array({ i64, [0 x i64] }* %_1120)
  store i8* %_1119, i8** %_1118
  %_1122 = load i8*, i8** %_1104
  %_1123 = load i8*, i8** %_1118
  %_1121 = call i8* @string_cat(i8* %_1122, i8* %_1123)
  ret i8* %_1121
_1102:
  br label %_1103
_1103:
  %_1126 = load i64, i64* %_1068
  %_1127 = load i64, i64* %_1069
  %_1128 = sub i64 %_1127, 1
  %_1129 = load i8*, i8** %_1070
  %_1130 = load i8*, i8** %_1071
  %_1125 = call i8* @lcs(i64 %_1126, i64 %_1128, i8* %_1129, i8* %_1130)
  store i8* %_1125, i8** %_1124
  %_1133 = load i64, i64* %_1068
  %_1134 = sub i64 %_1133, 1
  %_1135 = load i64, i64* %_1069
  %_1136 = load i8*, i8** %_1070
  %_1137 = load i8*, i8** %_1071
  %_1132 = call i8* @lcs(i64 %_1134, i64 %_1135, i8* %_1136, i8* %_1137)
  store i8* %_1132, i8** %_1131
  %_1140 = load i8*, i8** %_1124
  %_1139 = call i64 @length_of_string(i8* %_1140)
  store i64 %_1139, i64* %_1138
  %_1143 = load i8*, i8** %_1131
  %_1142 = call i64 @length_of_string(i8* %_1143)
  store i64 %_1142, i64* %_1141
  %_1144 = load i64, i64* %_1138
  %_1145 = load i64, i64* %_1141
  %_1146 = icmp slt i64 %_1144, %_1145
  br i1 %_1146, label %_1147, label %_1148
_1147:
  %_1150 = load i8*, i8** %_1131
  ret i8* %_1150
_1148:
  %_1151 = load i8*, i8** %_1124
  ret i8* %_1151
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1056 = alloca i64
  store i64 %argc, i64* %_1056
  %_1057 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1057
  %_1058 = alloca i8*
  %_1061 = alloca i8*
  %_1060 = getelementptr [7 x i8], [7 x i8]* @_1059, i32 0, i32 0
  store i8* %_1060, i8** %_1058
  %_1063 = getelementptr [8 x i8], [8 x i8]* @_1062, i32 0, i32 0
  store i8* %_1063, i8** %_1061
  %_1066 = load i8*, i8** %_1058
  %_1067 = load i8*, i8** %_1061
  %_1065 = call i8* @lcs(i64 5, i64 6, i8* %_1066, i8* %_1067)
  call void @print_string(i8* %_1065)
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
