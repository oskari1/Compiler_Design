; generated from: oatprograms/calculator.oat
target triple = "x86_64-unknown-linux"
@_918 = global [2 x i8] c"
\00"

define { i64, [0 x i64] }* @new_stack() {
  %_1204 = alloca { i64, [0 x i64] }*
  %_raw_array1205 = call i64* @oat_alloc_array(i64 7)
  %_array1206 = bitcast i64* %_raw_array1205 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1206, { i64, [0 x i64] }** %_1204
  %_1208 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1204
  %_1207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1208, i32 0, i32 1, i32 0
  store i64 5, i64* %_1207
  %_1210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1204
  %_1209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1210, i32 0, i32 1, i32 1
  store i64 0, i64* %_1209
  %_1211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1204
  ret { i64, [0 x i64] }* %_1211
}

define i64 @peek_stack({ i64, [0 x i64] }* %s) {
  %_1194 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_1194
  %_1195 = alloca i64
  %_1196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1194
  %_1197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1196, i32 0, i32 1, i32 1
  %_1198 = load i64, i64* %_1197
  %_1199 = add i64 1, %_1198
  store i64 %_1199, i64* %_1195
  %_1200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1194
  %_1201 = load i64, i64* %_1195
  %_1202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1200, i32 0, i32 1, i64 %_1201
  %_1203 = load i64, i64* %_1202
  ret i64 %_1203
}

define { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %s) {
  %_1177 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_1177
  %_1178 = alloca i64
  %_1179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1177
  %_1180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1179, i32 0, i32 1, i32 1
  %_1181 = load i64, i64* %_1180
  store i64 %_1181, i64* %_1178
  %_1182 = load i64, i64* %_1178
  %_1183 = icmp sgt i64 %_1182, 0
  br i1 %_1183, label %_1184, label %_1185
_1184:
  %_1187 = load i64, i64* %_1178
  %_1188 = sub i64 %_1187, 1
  store i64 %_1188, i64* %_1178
  br label %_1186
_1185:
  br label %_1186
_1186:
  %_1189 = load i64, i64* %_1178
  %_1191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1177
  %_1190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1191, i32 0, i32 1, i32 1
  store i64 %_1189, i64* %_1190
  %_1193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1177
  %_1192 = call { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %_1193)
  ret { i64, [0 x i64] }* %_1192
}

define { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %s, i64 %v) {
  %_1160 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_1160
  %_1161 = alloca i64
  store i64 %v, i64* %_1161
  %_1162 = alloca i64
  %_1163 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1160
  %_1164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1163, i32 0, i32 1, i32 1
  %_1165 = load i64, i64* %_1164
  %_1166 = add i64 2, %_1165
  store i64 %_1166, i64* %_1162
  %_1167 = load i64, i64* %_1161
  %_1169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1160
  %_1170 = load i64, i64* %_1162
  %_1168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1169, i32 0, i32 1, i64 %_1170
  store i64 %_1167, i64* %_1168
  %_1171 = load i64, i64* %_1162
  %_1172 = sub i64 %_1171, 1
  %_1174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1160
  %_1173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1174, i32 0, i32 1, i32 1
  store i64 %_1172, i64* %_1173
  %_1176 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1160
  %_1175 = call { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %_1176)
  ret { i64, [0 x i64] }* %_1175
}

define { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %s) {
  %_1062 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_1062
  %_1064 = alloca i64
  %_1068 = alloca i64
  %_1085 = alloca { i64, [0 x i64] }*
  %_1099 = alloca i64
  %_1126 = alloca { i64, [0 x i64] }*
  %_1140 = alloca i64
  %_1063 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1062
  ret { i64, [0 x i64] }* %_1063
_1074:
  %_1077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1062
  ret { i64, [0 x i64] }* %_1077
_1075:
  br label %_1076
_1076:
  %_1078 = load i64, i64* %_1064
  %_1079 = load i64, i64* %_1068
  %_1080 = shl i64 %_1079, 1
  %_1081 = icmp sgt i64 %_1078, %_1080
  br i1 %_1081, label %_1082, label %_1083
_1082:
  %_1086 = load i64, i64* %_1068
  %_1087 = mul i64 %_1086, 2
  %_1088 = add i64 2, %_1087
  %_raw_array1089 = call i64* @oat_alloc_array(i64 %_1088)
  %_array1090 = bitcast i64* %_raw_array1089 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1090, { i64, [0 x i64] }** %_1085
  %_1091 = load i64, i64* %_1068
  %_1092 = mul i64 %_1091, 2
  store i64 %_1092, i64* %_1068
  %_1093 = load i64, i64* %_1068
  %_1095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1085
  %_1094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1095, i32 0, i32 1, i32 0
  store i64 %_1093, i64* %_1094
  %_1096 = load i64, i64* %_1064
  %_1098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1085
  %_1097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1098, i32 0, i32 1, i32 1
  store i64 %_1096, i64* %_1097
  store i64 0, i64* %_1099
  br label %_1103
_1103:
  %_1100 = load i64, i64* %_1099
  %_1101 = load i64, i64* %_1064
  %_1102 = icmp sle i64 %_1100, %_1101
  br i1 %_1102, label %_1104, label %_1105
_1104:
  %_1106 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1062
  %_1107 = load i64, i64* %_1099
  %_1108 = add i64 2, %_1107
  %_1109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1106, i32 0, i32 1, i64 %_1108
  %_1110 = load i64, i64* %_1109
  %_1112 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1085
  %_1113 = load i64, i64* %_1099
  %_1114 = add i64 2, %_1113
  %_1111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1112, i32 0, i32 1, i64 %_1114
  store i64 %_1110, i64* %_1111
  %_1115 = load i64, i64* %_1099
  %_1116 = add i64 %_1115, 1
  store i64 %_1116, i64* %_1099
  br label %_1103
_1105:
  %_1117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1085
  ret { i64, [0 x i64] }* %_1117
_1083:
  %_1118 = load i64, i64* %_1064
  %_1119 = load i64, i64* %_1068
  %_1120 = shl i64 %_1119, 1
  %_1121 = shl i64 %_1120, 1
  %_1122 = icmp slt i64 %_1118, %_1121
  br i1 %_1122, label %_1123, label %_1124
_1123:
  %_1127 = load i64, i64* %_1068
  %_1128 = add i64 2, %_1127
  %_1129 = shl i64 %_1128, 1
  %_raw_array1130 = call i64* @oat_alloc_array(i64 %_1129)
  %_array1131 = bitcast i64* %_raw_array1130 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1131, { i64, [0 x i64] }** %_1126
  %_1132 = load i64, i64* %_1068
  %_1133 = shl i64 %_1132, 1
  store i64 %_1133, i64* %_1068
  %_1134 = load i64, i64* %_1068
  %_1136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1126
  %_1135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1136, i32 0, i32 1, i32 0
  store i64 %_1134, i64* %_1135
  %_1137 = load i64, i64* %_1064
  %_1139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1126
  %_1138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1139, i32 0, i32 1, i32 1
  store i64 %_1137, i64* %_1138
  store i64 0, i64* %_1140
  br label %_1144
_1144:
  %_1141 = load i64, i64* %_1140
  %_1142 = load i64, i64* %_1064
  %_1143 = icmp sle i64 %_1141, %_1142
  br i1 %_1143, label %_1145, label %_1146
_1145:
  %_1147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1062
  %_1148 = load i64, i64* %_1140
  %_1149 = add i64 2, %_1148
  %_1150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1147, i32 0, i32 1, i64 %_1149
  %_1151 = load i64, i64* %_1150
  %_1153 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1126
  %_1154 = load i64, i64* %_1140
  %_1155 = add i64 2, %_1154
  %_1152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1153, i32 0, i32 1, i64 %_1155
  store i64 %_1151, i64* %_1152
  %_1156 = load i64, i64* %_1140
  %_1157 = add i64 %_1156, 1
  store i64 %_1157, i64* %_1140
  br label %_1144
_1146:
  %_1158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1126
  ret { i64, [0 x i64] }* %_1158
_1124:
  br label %_1125
_1125:
  br label %_1084
_1084:
  %_1159 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1062
  ret { i64, [0 x i64] }* %_1159
}

define i64 @get_val(i64 %i) {
  %_1059 = alloca i64
  store i64 %i, i64* %_1059
  %_1060 = load i64, i64* %_1059
  %_1061 = sub i64 %_1060, 48
  ret i64 %_1061
}

define i64 @int_of_string(i8* %s) {
  %_1030 = alloca i8*
  store i8* %s, i8** %_1030
  %_1031 = alloca { i64, [0 x i64] }*
  %_1034 = alloca i64
  %_1037 = alloca i64
  %_1038 = alloca i64
  %_1047 = alloca i64
  %_1033 = load i8*, i8** %_1030
  %_1032 = call { i64, [0 x i64] }* @array_of_string(i8* %_1033)
  store { i64, [0 x i64] }* %_1032, { i64, [0 x i64] }** %_1031
  %_1036 = load i8*, i8** %_1030
  %_1035 = call i64 @length_of_string(i8* %_1036)
  store i64 %_1035, i64* %_1034
  store i64 0, i64* %_1037
  store i64 0, i64* %_1038
  br label %_1042
_1042:
  %_1039 = load i64, i64* %_1038
  %_1040 = load i64, i64* %_1034
  %_1041 = icmp slt i64 %_1039, %_1040
  br i1 %_1041, label %_1043, label %_1044
_1043:
  %_1045 = load i64, i64* %_1037
  %_1046 = mul i64 %_1045, 10
  store i64 %_1046, i64* %_1037
  %_1049 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1031
  %_1050 = load i64, i64* %_1038
  %_1051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1049, i32 0, i32 1, i64 %_1050
  %_1052 = load i64, i64* %_1051
  %_1048 = call i64 @get_val(i64 %_1052)
  store i64 %_1048, i64* %_1047
  %_1053 = load i64, i64* %_1037
  %_1054 = load i64, i64* %_1047
  %_1055 = add i64 %_1053, %_1054
  store i64 %_1055, i64* %_1037
  %_1056 = load i64, i64* %_1038
  %_1057 = add i64 %_1056, 1
  store i64 %_1057, i64* %_1038
  br label %_1042
_1044:
  %_1058 = load i64, i64* %_1037
  ret i64 %_1058
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_915 = alloca i64
  store i64 %argc, i64* %_915
  %_916 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_916
  %_917 = alloca i8*
  %_920 = alloca { i64, [0 x i64] }*
  %_922 = alloca i64
  %_929 = alloca i8*
  %_934 = alloca i1
  %_935 = alloca i64
  %_943 = alloca { i64, [0 x i64] }*
  %_953 = alloca i64
  %_958 = alloca i64
  %_975 = alloca i64
  %_980 = alloca i64
  %_997 = alloca i64
  %_1002 = alloca i64
  %_1017 = alloca i64
  %_919 = getelementptr [2 x i8], [2 x i8]* @_918, i32 0, i32 0
  store i8* %_919, i8** %_917
  %_921 = call { i64, [0 x i64] }* @new_stack()
  store { i64, [0 x i64] }* %_921, { i64, [0 x i64] }** %_920
  store i64 1, i64* %_922
  br label %_926
_926:
  %_923 = load i64, i64* %_922
  %_924 = load i64, i64* %_915
  %_925 = icmp slt i64 %_923, %_924
  br i1 %_925, label %_927, label %_928
_927:
  %_930 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_916
  %_931 = load i64, i64* %_922
  %_932 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_930, i32 0, i32 1, i64 %_931
  %_933 = load i8*, i8** %_932
  store i8* %_933, i8** %_929
  store i1 0, i1* %_934
  %_937 = load i8*, i8** %_929
  %_936 = call i64 @length_of_string(i8* %_937)
  store i64 %_936, i64* %_935
  %_938 = load i64, i64* %_935
  %_939 = icmp eq i64 %_938, 1
  br i1 %_939, label %_940, label %_941
_940:
  %_945 = load i8*, i8** %_929
  %_944 = call { i64, [0 x i64] }* @array_of_string(i8* %_945)
  store { i64, [0 x i64] }* %_944, { i64, [0 x i64] }** %_943
  store i1 1, i1* %_934
  %_946 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_943
  %_947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_946, i32 0, i32 1, i32 0
  %_948 = load i64, i64* %_947
  %_949 = icmp eq i64 %_948, 43
  br i1 %_949, label %_950, label %_951
_950:
  %_955 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_954 = call i64 @peek_stack({ i64, [0 x i64] }* %_955)
  store i64 %_954, i64* %_953
  %_957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_956 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_957)
  store { i64, [0 x i64] }* %_956, { i64, [0 x i64] }** %_920
  %_960 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_959 = call i64 @peek_stack({ i64, [0 x i64] }* %_960)
  store i64 %_959, i64* %_958
  %_962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_961 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_962)
  store { i64, [0 x i64] }* %_961, { i64, [0 x i64] }** %_920
  %_964 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_965 = load i64, i64* %_953
  %_966 = load i64, i64* %_958
  %_967 = add i64 %_965, %_966
  %_963 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_964, i64 %_967)
  store { i64, [0 x i64] }* %_963, { i64, [0 x i64] }** %_920
  br label %_952
_951:
  %_968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_943
  %_969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_968, i32 0, i32 1, i32 0
  %_970 = load i64, i64* %_969
  %_971 = icmp eq i64 %_970, 45
  br i1 %_971, label %_972, label %_973
_972:
  %_977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_976 = call i64 @peek_stack({ i64, [0 x i64] }* %_977)
  store i64 %_976, i64* %_975
  %_979 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_978 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_979)
  store { i64, [0 x i64] }* %_978, { i64, [0 x i64] }** %_920
  %_982 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_981 = call i64 @peek_stack({ i64, [0 x i64] }* %_982)
  store i64 %_981, i64* %_980
  %_984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_983 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_984)
  store { i64, [0 x i64] }* %_983, { i64, [0 x i64] }** %_920
  %_986 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_987 = load i64, i64* %_975
  %_988 = load i64, i64* %_980
  %_989 = sub i64 %_987, %_988
  %_985 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_986, i64 %_989)
  store { i64, [0 x i64] }* %_985, { i64, [0 x i64] }** %_920
  br label %_974
_973:
  %_990 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_943
  %_991 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_990, i32 0, i32 1, i32 0
  %_992 = load i64, i64* %_991
  %_993 = icmp eq i64 %_992, 120
  br i1 %_993, label %_994, label %_995
_994:
  %_999 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_998 = call i64 @peek_stack({ i64, [0 x i64] }* %_999)
  store i64 %_998, i64* %_997
  %_1001 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_1000 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_1001)
  store { i64, [0 x i64] }* %_1000, { i64, [0 x i64] }** %_920
  %_1004 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_1003 = call i64 @peek_stack({ i64, [0 x i64] }* %_1004)
  store i64 %_1003, i64* %_1002
  %_1006 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_1005 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_1006)
  store { i64, [0 x i64] }* %_1005, { i64, [0 x i64] }** %_920
  %_1008 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_1009 = load i64, i64* %_997
  %_1010 = load i64, i64* %_1002
  %_1011 = mul i64 %_1009, %_1010
  %_1007 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_1008, i64 %_1011)
  store { i64, [0 x i64] }* %_1007, { i64, [0 x i64] }** %_920
  br label %_996
_995:
  store i1 0, i1* %_934
  br label %_996
_996:
  br label %_974
_974:
  br label %_952
_952:
  br label %_942
_941:
  br label %_942
_942:
  %_1012 = load i1, i1* %_934
  %_1013 = icmp eq i1 %_1012, 0
  br i1 %_1013, label %_1014, label %_1015
_1014:
  %_1019 = load i8*, i8** %_929
  %_1018 = call i64 @int_of_string(i8* %_1019)
  store i64 %_1018, i64* %_1017
  %_1021 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_1022 = load i64, i64* %_1017
  %_1020 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_1021, i64 %_1022)
  store { i64, [0 x i64] }* %_1020, { i64, [0 x i64] }** %_920
  br label %_1016
_1015:
  br label %_1016
_1016:
  %_1023 = load i64, i64* %_922
  %_1024 = add i64 %_1023, 1
  store i64 %_1024, i64* %_922
  br label %_926
_928:
  %_1027 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_1026 = call i64 @peek_stack({ i64, [0 x i64] }* %_1027)
  call void @print_int(i64 %_1026)
  %_1029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_920
  %_1028 = call i64 @peek_stack({ i64, [0 x i64] }* %_1029)
  ret i64 %_1028
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
