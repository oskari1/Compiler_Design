; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_1316 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_1316
  %_1317 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1316
  %_1318 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1317, i32 0, i32 1, i32 1
  %_1319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1318
  %_1320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1319, i32 0, i32 1, i32 1
  %_1321 = load i64, i64* %_1320
  ret i64 %_1321
}

define i64 @g(i64 %x) {
  %_1280 = alloca i64
  store i64 %x, i64* %_1280
  %_1281 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1282 = call i64* @oat_alloc_array(i64 3)
  %_array1283 = bitcast i64* %_raw_array1282 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1302 = call i64* @oat_alloc_array(i64 3)
  %_array1303 = bitcast i64* %_raw_array1302 to { i64, [0 x i64] }*
  %_1308 = load i64, i64* %_1280
  %_1309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1303, i32 0, i32 1, i32 2
  store i64 %_1308, i64* %_1309
  %_1306 = load i64, i64* %_1280
  %_1307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1303, i32 0, i32 1, i32 1
  store i64 %_1306, i64* %_1307
  %_1304 = load i64, i64* %_1280
  %_1305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1303, i32 0, i32 1, i32 0
  store i64 %_1304, i64* %_1305
  %_1310 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1283, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1303, { i64, [0 x i64] }** %_1310
  %_raw_array1293 = call i64* @oat_alloc_array(i64 3)
  %_array1294 = bitcast i64* %_raw_array1293 to { i64, [0 x i64] }*
  %_1299 = load i64, i64* %_1280
  %_1300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1294, i32 0, i32 1, i32 2
  store i64 %_1299, i64* %_1300
  %_1297 = load i64, i64* %_1280
  %_1298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1294, i32 0, i32 1, i32 1
  store i64 %_1297, i64* %_1298
  %_1295 = load i64, i64* %_1280
  %_1296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1294, i32 0, i32 1, i32 0
  store i64 %_1295, i64* %_1296
  %_1301 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1283, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1294, { i64, [0 x i64] }** %_1301
  %_raw_array1284 = call i64* @oat_alloc_array(i64 3)
  %_array1285 = bitcast i64* %_raw_array1284 to { i64, [0 x i64] }*
  %_1290 = load i64, i64* %_1280
  %_1291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1285, i32 0, i32 1, i32 2
  store i64 %_1290, i64* %_1291
  %_1288 = load i64, i64* %_1280
  %_1289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1285, i32 0, i32 1, i32 1
  store i64 %_1288, i64* %_1289
  %_1286 = load i64, i64* %_1280
  %_1287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1285, i32 0, i32 1, i32 0
  store i64 %_1286, i64* %_1287
  %_1292 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1283, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1285, { i64, [0 x i64] }** %_1292
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1283, { i64, [0 x { i64, [0 x i64] }*] }** %_1281
  %_1311 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1281
  %_1312 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1311, i32 0, i32 1, i32 1
  %_1313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1312
  %_1314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1313, i32 0, i32 1, i32 1
  %_1315 = load i64, i64* %_1314
  ret i64 %_1315
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1156 = alloca i64
  store i64 %argc, i64* %_1156
  %_1157 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1157
  %_1158 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1179 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1234 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1159 = call i64* @oat_alloc_array(i64 3)
  %_array1160 = bitcast i64* %_raw_array1159 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1173 = call i64* @oat_alloc_array(i64 3)
  %_array1174 = bitcast i64* %_raw_array1173 to { i64, [0 x i64] }*
  %_1177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1174, i32 0, i32 1, i32 2
  store i64 2, i64* %_1177
  %_1176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1174, i32 0, i32 1, i32 1
  store i64 1, i64* %_1176
  %_1175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1174, i32 0, i32 1, i32 0
  store i64 0, i64* %_1175
  %_1178 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1160, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1174, { i64, [0 x i64] }** %_1178
  %_raw_array1167 = call i64* @oat_alloc_array(i64 3)
  %_array1168 = bitcast i64* %_raw_array1167 to { i64, [0 x i64] }*
  %_1171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 2
  store i64 2, i64* %_1171
  %_1170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 1
  store i64 1, i64* %_1170
  %_1169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 0
  store i64 0, i64* %_1169
  %_1172 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1160, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1168, { i64, [0 x i64] }** %_1172
  %_raw_array1161 = call i64* @oat_alloc_array(i64 3)
  %_array1162 = bitcast i64* %_raw_array1161 to { i64, [0 x i64] }*
  %_1165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1162, i32 0, i32 1, i32 2
  store i64 2, i64* %_1165
  %_1164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1162, i32 0, i32 1, i32 1
  store i64 1, i64* %_1164
  %_1163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1162, i32 0, i32 1, i32 0
  store i64 0, i64* %_1163
  %_1166 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1160, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1162, { i64, [0 x i64] }** %_1166
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1160, { i64, [0 x { i64, [0 x i64] }*] }** %_1158
  %_raw_array1180 = call i64* @oat_alloc_array(i64 4)
  %_array1181 = bitcast i64* %_raw_array1180 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1221 = call i64* @oat_alloc_array(i64 5)
  %_array1222 = bitcast i64* %_raw_array1221 to { i64, [0 x i64] }*
  %_1231 = mul i64 3, 4
  %_1232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 4
  store i64 %_1231, i64* %_1232
  %_1229 = mul i64 3, 3
  %_1230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 3
  store i64 %_1229, i64* %_1230
  %_1227 = mul i64 3, 2
  %_1228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 2
  store i64 %_1227, i64* %_1228
  %_1225 = mul i64 3, 1
  %_1226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 1
  store i64 %_1225, i64* %_1226
  %_1223 = mul i64 3, 0
  %_1224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 0
  store i64 %_1223, i64* %_1224
  %_1233 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1181, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1222, { i64, [0 x i64] }** %_1233
  %_raw_array1208 = call i64* @oat_alloc_array(i64 5)
  %_array1209 = bitcast i64* %_raw_array1208 to { i64, [0 x i64] }*
  %_1218 = mul i64 2, 4
  %_1219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1209, i32 0, i32 1, i32 4
  store i64 %_1218, i64* %_1219
  %_1216 = mul i64 2, 3
  %_1217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1209, i32 0, i32 1, i32 3
  store i64 %_1216, i64* %_1217
  %_1214 = mul i64 2, 2
  %_1215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1209, i32 0, i32 1, i32 2
  store i64 %_1214, i64* %_1215
  %_1212 = mul i64 2, 1
  %_1213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1209, i32 0, i32 1, i32 1
  store i64 %_1212, i64* %_1213
  %_1210 = mul i64 2, 0
  %_1211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1209, i32 0, i32 1, i32 0
  store i64 %_1210, i64* %_1211
  %_1220 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1181, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1209, { i64, [0 x i64] }** %_1220
  %_raw_array1195 = call i64* @oat_alloc_array(i64 5)
  %_array1196 = bitcast i64* %_raw_array1195 to { i64, [0 x i64] }*
  %_1205 = mul i64 1, 4
  %_1206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1196, i32 0, i32 1, i32 4
  store i64 %_1205, i64* %_1206
  %_1203 = mul i64 1, 3
  %_1204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1196, i32 0, i32 1, i32 3
  store i64 %_1203, i64* %_1204
  %_1201 = mul i64 1, 2
  %_1202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1196, i32 0, i32 1, i32 2
  store i64 %_1201, i64* %_1202
  %_1199 = mul i64 1, 1
  %_1200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1196, i32 0, i32 1, i32 1
  store i64 %_1199, i64* %_1200
  %_1197 = mul i64 1, 0
  %_1198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1196, i32 0, i32 1, i32 0
  store i64 %_1197, i64* %_1198
  %_1207 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1181, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1196, { i64, [0 x i64] }** %_1207
  %_raw_array1182 = call i64* @oat_alloc_array(i64 5)
  %_array1183 = bitcast i64* %_raw_array1182 to { i64, [0 x i64] }*
  %_1192 = mul i64 0, 4
  %_1193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1183, i32 0, i32 1, i32 4
  store i64 %_1192, i64* %_1193
  %_1190 = mul i64 0, 3
  %_1191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1183, i32 0, i32 1, i32 3
  store i64 %_1190, i64* %_1191
  %_1188 = mul i64 0, 2
  %_1189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1183, i32 0, i32 1, i32 2
  store i64 %_1188, i64* %_1189
  %_1186 = mul i64 0, 1
  %_1187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1183, i32 0, i32 1, i32 1
  store i64 %_1186, i64* %_1187
  %_1184 = mul i64 0, 0
  %_1185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1183, i32 0, i32 1, i32 0
  store i64 %_1184, i64* %_1185
  %_1194 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1181, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1183, { i64, [0 x i64] }** %_1194
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1181, { i64, [0 x { i64, [0 x i64] }*] }** %_1179
  %_raw_array1235 = call i64* @oat_alloc_array(i64 3)
  %_array1236 = bitcast i64* %_raw_array1235 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1255 = call i64* @oat_alloc_array(i64 3)
  %_array1256 = bitcast i64* %_raw_array1255 to { i64, [0 x i64] }*
  %_1261 = mul i64 2, 2
  %_1262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1256, i32 0, i32 1, i32 2
  store i64 %_1261, i64* %_1262
  %_1259 = mul i64 2, 1
  %_1260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1256, i32 0, i32 1, i32 1
  store i64 %_1259, i64* %_1260
  %_1257 = mul i64 2, 0
  %_1258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1256, i32 0, i32 1, i32 0
  store i64 %_1257, i64* %_1258
  %_1263 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1236, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1256, { i64, [0 x i64] }** %_1263
  %_raw_array1246 = call i64* @oat_alloc_array(i64 3)
  %_array1247 = bitcast i64* %_raw_array1246 to { i64, [0 x i64] }*
  %_1252 = mul i64 1, 2
  %_1253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1247, i32 0, i32 1, i32 2
  store i64 %_1252, i64* %_1253
  %_1250 = mul i64 1, 1
  %_1251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1247, i32 0, i32 1, i32 1
  store i64 %_1250, i64* %_1251
  %_1248 = mul i64 1, 0
  %_1249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1247, i32 0, i32 1, i32 0
  store i64 %_1248, i64* %_1249
  %_1254 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1236, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1247, { i64, [0 x i64] }** %_1254
  %_raw_array1237 = call i64* @oat_alloc_array(i64 3)
  %_array1238 = bitcast i64* %_raw_array1237 to { i64, [0 x i64] }*
  %_1243 = mul i64 0, 2
  %_1244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1238, i32 0, i32 1, i32 2
  store i64 %_1243, i64* %_1244
  %_1241 = mul i64 0, 1
  %_1242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1238, i32 0, i32 1, i32 1
  store i64 %_1241, i64* %_1242
  %_1239 = mul i64 0, 0
  %_1240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1238, i32 0, i32 1, i32 0
  store i64 %_1239, i64* %_1240
  %_1245 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1236, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1238, { i64, [0 x i64] }** %_1245
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1236, { i64, [0 x { i64, [0 x i64] }*] }** %_1234
  %_1264 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1179
  %_1265 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1264, i32 0, i32 1, i32 3
  %_1266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1265
  %_1267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1266, i32 0, i32 1, i32 4
  %_1268 = load i64, i64* %_1267
  %_1269 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1158
  %_1270 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1269, i32 0, i32 1, i32 1
  %_1271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1270
  %_1272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1271, i32 0, i32 1, i32 2
  %_1273 = load i64, i64* %_1272
  %_1274 = add i64 %_1268, %_1273
  %_1276 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1234
  %_1275 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_1276)
  %_1277 = add i64 %_1274, %_1275
  %_1278 = call i64 @g(i64 4)
  %_1279 = add i64 %_1277, %_1278
  ret i64 %_1279
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
