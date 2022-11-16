; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_1152 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_1152
  %_1153 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1152
  %_1154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1153, i32 0, i32 1, i32 1
  %_1155 = load i64, i64* %_1154
  ret i64 %_1155
}

define i64 @g(i64 %x) {
  %_1133 = alloca i64
  store i64 %x, i64* %_1133
  %_1134 = alloca { i64, [0 x i64] }*
  %_1137 = alloca i64
  %_raw_array1135 = call i64* @oat_alloc_array(i64 3)
  %_array1136 = bitcast i64* %_raw_array1135 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1136, { i64, [0 x i64] }** %_1134
  store i64 0, i64* %_1137
  br label %_1140
_1140:
  %_1138 = load i64, i64* %_1137
  %_1139 = icmp slt i64 %_1138, 3
  br i1 %_1139, label %_1141, label %_1142
_1141:
  %_1143 = load i64, i64* %_1133
  %_1145 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1134
  %_1146 = load i64, i64* %_1137
  %_1144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1145, i32 0, i32 1, i64 %_1146
  store i64 %_1143, i64* %_1144
  %_1147 = load i64, i64* %_1137
  %_1148 = add i64 %_1147, 1
  store i64 %_1148, i64* %_1137
  br label %_1140
_1142:
  %_1149 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1134
  %_1150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1149, i32 0, i32 1, i32 1
  %_1151 = load i64, i64* %_1150
  ret i64 %_1151
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1071 = alloca i64
  store i64 %argc, i64* %_1071
  %_1072 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1072
  %_1073 = alloca { i64, [0 x i64] }*
  %_1076 = alloca i64
  %_1088 = alloca { i64, [0 x i64] }*
  %_1091 = alloca i64
  %_1105 = alloca { i64, [0 x i64] }*
  %_1108 = alloca i64
  %_raw_array1074 = call i64* @oat_alloc_array(i64 3)
  %_array1075 = bitcast i64* %_raw_array1074 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1075, { i64, [0 x i64] }** %_1073
  store i64 0, i64* %_1076
  br label %_1079
_1079:
  %_1077 = load i64, i64* %_1076
  %_1078 = icmp slt i64 %_1077, 3
  br i1 %_1078, label %_1080, label %_1081
_1080:
  %_1082 = load i64, i64* %_1076
  %_1084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1073
  %_1085 = load i64, i64* %_1076
  %_1083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1084, i32 0, i32 1, i64 %_1085
  store i64 %_1082, i64* %_1083
  %_1086 = load i64, i64* %_1076
  %_1087 = add i64 %_1086, 1
  store i64 %_1087, i64* %_1076
  br label %_1079
_1081:
  %_raw_array1089 = call i64* @oat_alloc_array(i64 4)
  %_array1090 = bitcast i64* %_raw_array1089 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1090, { i64, [0 x i64] }** %_1088
  store i64 0, i64* %_1091
  br label %_1094
_1094:
  %_1092 = load i64, i64* %_1091
  %_1093 = icmp slt i64 %_1092, 4
  br i1 %_1093, label %_1095, label %_1096
_1095:
  %_1097 = load i64, i64* %_1091
  %_1098 = load i64, i64* %_1091
  %_1099 = mul i64 %_1097, %_1098
  %_1101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1088
  %_1102 = load i64, i64* %_1091
  %_1100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1101, i32 0, i32 1, i64 %_1102
  store i64 %_1099, i64* %_1100
  %_1103 = load i64, i64* %_1091
  %_1104 = add i64 %_1103, 1
  store i64 %_1104, i64* %_1091
  br label %_1094
_1096:
  %_raw_array1106 = call i64* @oat_alloc_array(i64 3)
  %_array1107 = bitcast i64* %_raw_array1106 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1107, { i64, [0 x i64] }** %_1105
  store i64 0, i64* %_1108
  br label %_1111
_1111:
  %_1109 = load i64, i64* %_1108
  %_1110 = icmp slt i64 %_1109, 3
  br i1 %_1110, label %_1112, label %_1113
_1112:
  %_1114 = load i64, i64* %_1108
  %_1115 = mul i64 2, %_1114
  %_1117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1105
  %_1118 = load i64, i64* %_1108
  %_1116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1117, i32 0, i32 1, i64 %_1118
  store i64 %_1115, i64* %_1116
  %_1119 = load i64, i64* %_1108
  %_1120 = add i64 %_1119, 1
  store i64 %_1120, i64* %_1108
  br label %_1111
_1113:
  %_1121 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1088
  %_1122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1121, i32 0, i32 1, i32 3
  %_1123 = load i64, i64* %_1122
  %_1124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1073
  %_1125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1124, i32 0, i32 1, i32 1
  %_1126 = load i64, i64* %_1125
  %_1127 = add i64 %_1123, %_1126
  %_1129 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1105
  %_1128 = call i64 @f({ i64, [0 x i64] }* %_1129)
  %_1130 = add i64 %_1127, %_1128
  %_1131 = call i64 @g(i64 4)
  %_1132 = add i64 %_1130, %_1131
  ret i64 %_1132
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
