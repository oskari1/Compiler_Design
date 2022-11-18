; generated from: oatprograms/float_multiply.oat
target triple = "x86_64-unknown-linux"
@float_len = global i64 2
@_1237 = global [2 x i8] c".\00"

define { i64, [0 x i64] }* @determine_shift({ i64, [0 x i64] }* %float) {
  %_1299 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %float, { i64, [0 x i64] }** %_1299
  %_1300 = alloca i64
  %_1304 = alloca i64
  %_1310 = alloca i64
  %_1322 = alloca { i64, [0 x i64] }*
  %_1301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1299
  %_1302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1301, i32 0, i32 1, i32 1
  %_1303 = load i64, i64* %_1302
  store i64 %_1303, i64* %_1300
  store i64 0, i64* %_1304
  br label %_1307
_1307:
  %_1305 = load i64, i64* %_1300
  %_1306 = icmp sgt i64 %_1305, 0
  br i1 %_1306, label %_1308, label %_1309
_1308:
  %_1311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1299
  %_1312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1311, i32 0, i32 1, i32 0
  %_1313 = load i64, i64* %_1312
  store i64 %_1313, i64* %_1310
  %_1314 = load i64, i64* %_1310
  %_1315 = shl i64 %_1314, 1
  %_1317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1299
  %_1316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1317, i32 0, i32 1, i32 0
  store i64 %_1315, i64* %_1316
  %_1318 = load i64, i64* %_1300
  %_1319 = ashr i64 %_1318, 1
  store i64 %_1319, i64* %_1300
  %_1320 = load i64, i64* %_1304
  %_1321 = add i64 %_1320, 1
  store i64 %_1321, i64* %_1304
  br label %_1307
_1309:
  %_raw_array1323 = call i64* @oat_alloc_array(i64 2)
  %_array1324 = bitcast i64* %_raw_array1323 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1324, { i64, [0 x i64] }** %_1322
  %_1325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1299
  %_1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1325, i32 0, i32 1, i32 0
  %_1327 = load i64, i64* %_1326
  %_1328 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1299
  %_1329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1328, i32 0, i32 1, i32 1
  %_1330 = load i64, i64* %_1329
  %_1331 = add i64 %_1327, %_1330
  %_1333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1322
  %_1332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1333, i32 0, i32 1, i32 0
  store i64 %_1331, i64* %_1332
  %_1334 = load i64, i64* %_1304
  %_1336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1322
  %_1335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1336, i32 0, i32 1, i32 1
  store i64 %_1334, i64* %_1335
  %_1337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1322
  ret { i64, [0 x i64] }* %_1337
}

define { i64, [0 x i64] }* @multiply_floats({ i64, [0 x i64] }* %f1, { i64, [0 x i64] }* %f2) {
  %_1243 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %f1, { i64, [0 x i64] }** %_1243
  %_1244 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %f2, { i64, [0 x i64] }** %_1244
  %_1245 = alloca { i64, [0 x i64] }*
  %_1248 = alloca { i64, [0 x i64] }*
  %_1251 = alloca i64
  %_1259 = alloca i64
  %_1267 = alloca i64
  %_1268 = alloca i64
  %_1275 = alloca i64
  %_1278 = alloca i64
  %_1289 = alloca { i64, [0 x i64] }*
  %_1247 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1243
  %_1246 = call { i64, [0 x i64] }* @determine_shift({ i64, [0 x i64] }* %_1247)
  store { i64, [0 x i64] }* %_1246, { i64, [0 x i64] }** %_1245
  %_1250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1244
  %_1249 = call { i64, [0 x i64] }* @determine_shift({ i64, [0 x i64] }* %_1250)
  store { i64, [0 x i64] }* %_1249, { i64, [0 x i64] }** %_1248
  %_1252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1245
  %_1253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1252, i32 0, i32 1, i32 0
  %_1254 = load i64, i64* %_1253
  %_1255 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1248
  %_1256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1255, i32 0, i32 1, i32 0
  %_1257 = load i64, i64* %_1256
  %_1258 = mul i64 %_1254, %_1257
  store i64 %_1258, i64* %_1251
  %_1260 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1245
  %_1261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1260, i32 0, i32 1, i32 1
  %_1262 = load i64, i64* %_1261
  %_1263 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1248
  %_1264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1263, i32 0, i32 1, i32 1
  %_1265 = load i64, i64* %_1264
  %_1266 = add i64 %_1262, %_1265
  store i64 %_1266, i64* %_1259
  store i64 0, i64* %_1267
  store i64 0, i64* %_1268
  br label %_1272
_1272:
  %_1269 = load i64, i64* %_1268
  %_1270 = load i64, i64* %_1259
  %_1271 = icmp slt i64 %_1269, %_1270
  br i1 %_1271, label %_1273, label %_1274
_1273:
  %_1276 = load i64, i64* %_1251
  %_1277 = and i64 %_1276, 1
  store i64 %_1277, i64* %_1275
  %_1279 = load i64, i64* %_1275
  %_1280 = load i64, i64* %_1268
  %_1281 = shl i64 %_1279, %_1280
  store i64 %_1281, i64* %_1278
  %_1282 = load i64, i64* %_1251
  %_1283 = ashr i64 %_1282, 1
  store i64 %_1283, i64* %_1251
  %_1284 = load i64, i64* %_1267
  %_1285 = load i64, i64* %_1278
  %_1286 = add i64 %_1284, %_1285
  store i64 %_1286, i64* %_1267
  %_1287 = load i64, i64* %_1268
  %_1288 = add i64 %_1287, 1
  store i64 %_1288, i64* %_1268
  br label %_1272
_1274:
  %_raw_array1290 = call i64* @oat_alloc_array(i64 2)
  %_array1291 = bitcast i64* %_raw_array1290 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1291, { i64, [0 x i64] }** %_1289
  %_1292 = load i64, i64* %_1251
  %_1294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1289
  %_1293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1294, i32 0, i32 1, i32 0
  store i64 %_1292, i64* %_1293
  %_1295 = load i64, i64* %_1267
  %_1297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1289
  %_1296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1297, i32 0, i32 1, i32 1
  store i64 %_1295, i64* %_1296
  %_1298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1289
  ret { i64, [0 x i64] }* %_1298
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1212 = alloca i64
  store i64 %argc, i64* %_1212
  %_1213 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1213
  %_1214 = alloca { i64, [0 x i64] }*
  %_1221 = alloca { i64, [0 x i64] }*
  %_1228 = alloca { i64, [0 x i64] }*
  %_raw_array1215 = call i64* @oat_alloc_array(i64 2)
  %_array1216 = bitcast i64* %_raw_array1215 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1216, { i64, [0 x i64] }** %_1214
  %_1218 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1214
  %_1217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1218, i32 0, i32 1, i32 0
  store i64 3, i64* %_1217
  %_1220 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1214
  %_1219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1220, i32 0, i32 1, i32 1
  store i64 14159, i64* %_1219
  %_raw_array1222 = call i64* @oat_alloc_array(i64 2)
  %_array1223 = bitcast i64* %_raw_array1222 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1223, { i64, [0 x i64] }** %_1221
  %_1225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1221
  %_1224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1225, i32 0, i32 1, i32 0
  store i64 20, i64* %_1224
  %_1227 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1221
  %_1226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1227, i32 0, i32 1, i32 1
  store i64 17, i64* %_1226
  %_1230 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1214
  %_1231 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1221
  %_1229 = call { i64, [0 x i64] }* @multiply_floats({ i64, [0 x i64] }* %_1230, { i64, [0 x i64] }* %_1231)
  store { i64, [0 x i64] }* %_1229, { i64, [0 x i64] }** %_1228
  %_1233 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1228
  %_1234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1233, i32 0, i32 1, i32 0
  %_1235 = load i64, i64* %_1234
  call void @print_int(i64 %_1235)
  %_1238 = getelementptr [2 x i8], [2 x i8]* @_1237, i32 0, i32 0
  call void @print_string(i8* %_1238)
  %_1240 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1228
  %_1241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1240, i32 0, i32 1, i32 1
  %_1242 = load i64, i64* %_1241
  call void @print_int(i64 %_1242)
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
