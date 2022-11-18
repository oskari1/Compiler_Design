; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_7213 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_7213
  %_7214 = alloca i64
  store i64 %len, i64* %_7214
  %_7215 = alloca i64
  store i64 %insertee, i64* %_7215
  %_7216 = alloca { i64, [0 x i64] }*
  %_7221 = alloca i64
  %_7235 = alloca i1
  %_7247 = alloca i64
  %_7217 = load i64, i64* %_7214
  %_7218 = add i64 %_7217, 1
  %_raw_array7219 = call i64* @oat_alloc_array(i64 %_7218)
  %_array7220 = bitcast i64* %_raw_array7219 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7220, { i64, [0 x i64] }** %_7216
  store i64 0, i64* %_7221
  br label %_7226
_7226:
  %_7222 = load i64, i64* %_7221
  %_7223 = load i64, i64* %_7214
  %_7224 = add i64 %_7223, 1
  %_7225 = icmp slt i64 %_7222, %_7224
  br i1 %_7225, label %_7227, label %_7228
_7227:
  %_7229 = sub i64 0, 1
  %_7231 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7216
  %_7232 = load i64, i64* %_7221
  %_7230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7231, i32 0, i32 1, i64 %_7232
  store i64 %_7229, i64* %_7230
  %_7233 = load i64, i64* %_7221
  %_7234 = add i64 %_7233, 1
  store i64 %_7234, i64* %_7221
  br label %_7226
_7228:
  store i1 1, i1* %_7235
  %_7236 = load i64, i64* %_7215
  %_7237 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7213
  %_7238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7237, i32 0, i32 1, i32 0
  %_7239 = load i64, i64* %_7238
  %_7240 = icmp slt i64 %_7236, %_7239
  br i1 %_7240, label %_7241, label %_7242
_7241:
  store i1 0, i1* %_7235
  %_7244 = load i64, i64* %_7215
  %_7246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7216
  %_7245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7246, i32 0, i32 1, i32 0
  store i64 %_7244, i64* %_7245
  br label %_7243
_7242:
  br label %_7243
_7243:
  store i64 0, i64* %_7247
  br label %_7251
_7251:
  %_7248 = load i64, i64* %_7247
  %_7249 = load i64, i64* %_7214
  %_7250 = icmp slt i64 %_7248, %_7249
  br i1 %_7250, label %_7252, label %_7253
_7252:
  %_7254 = load i1, i1* %_7235
  br i1 %_7254, label %_7255, label %_7256
_7255:
  %_7258 = load i64, i64* %_7215
  %_7259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7213
  %_7260 = load i64, i64* %_7247
  %_7261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7259, i32 0, i32 1, i64 %_7260
  %_7262 = load i64, i64* %_7261
  %_7263 = icmp sgt i64 %_7258, %_7262
  br i1 %_7263, label %_7264, label %_7265
_7264:
  store i1 0, i1* %_7235
  %_7267 = load i64, i64* %_7215
  %_7269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7216
  %_7270 = load i64, i64* %_7247
  %_7271 = add i64 %_7270, 1
  %_7268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7269, i32 0, i32 1, i64 %_7271
  store i64 %_7267, i64* %_7268
  %_7272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7213
  %_7273 = load i64, i64* %_7247
  %_7274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7272, i32 0, i32 1, i64 %_7273
  %_7275 = load i64, i64* %_7274
  %_7277 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7216
  %_7278 = load i64, i64* %_7247
  %_7276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7277, i32 0, i32 1, i64 %_7278
  store i64 %_7275, i64* %_7276
  br label %_7266
_7265:
  %_7279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7213
  %_7280 = load i64, i64* %_7247
  %_7281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7279, i32 0, i32 1, i64 %_7280
  %_7282 = load i64, i64* %_7281
  %_7284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7216
  %_7285 = load i64, i64* %_7247
  %_7283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7284, i32 0, i32 1, i64 %_7285
  store i64 %_7282, i64* %_7283
  br label %_7266
_7266:
  br label %_7257
_7256:
  %_7286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7213
  %_7287 = load i64, i64* %_7247
  %_7288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7286, i32 0, i32 1, i64 %_7287
  %_7289 = load i64, i64* %_7288
  %_7291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7216
  %_7292 = load i64, i64* %_7247
  %_7293 = add i64 %_7292, 1
  %_7290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7291, i32 0, i32 1, i64 %_7293
  store i64 %_7289, i64* %_7290
  br label %_7257
_7257:
  %_7294 = load i64, i64* %_7247
  %_7295 = add i64 %_7294, 1
  store i64 %_7295, i64* %_7247
  br label %_7251
_7253:
  %_7296 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7216
  ret { i64, [0 x i64] }* %_7296
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_7185 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_7185
  %_7186 = alloca i64
  store i64 %len, i64* %_7186
  %_7187 = alloca { i64, [0 x i64] }*
  %_7196 = alloca i64
  %_raw_array7188 = call i64* @oat_alloc_array(i64 1)
  %_array7189 = bitcast i64* %_raw_array7188 to { i64, [0 x i64] }*
  %_7190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7189, i32 0, i32 1, i32 0
  store i64 0, i64* %_7190
  store { i64, [0 x i64] }* %_array7189, { i64, [0 x i64] }** %_7187
  %_7191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7185
  %_7192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7191, i32 0, i32 1, i32 0
  %_7193 = load i64, i64* %_7192
  %_7195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7187
  %_7194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7195, i32 0, i32 1, i32 0
  store i64 %_7193, i64* %_7194
  store i64 1, i64* %_7196
  br label %_7200
_7200:
  %_7197 = load i64, i64* %_7196
  %_7198 = load i64, i64* %_7186
  %_7199 = icmp slt i64 %_7197, %_7198
  br i1 %_7199, label %_7201, label %_7202
_7201:
  %_7204 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7187
  %_7205 = load i64, i64* %_7196
  %_7206 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7185
  %_7207 = load i64, i64* %_7196
  %_7208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7206, i32 0, i32 1, i64 %_7207
  %_7209 = load i64, i64* %_7208
  %_7203 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_7204, i64 %_7205, i64 %_7209)
  store { i64, [0 x i64] }* %_7203, { i64, [0 x i64] }** %_7187
  %_7210 = load i64, i64* %_7196
  %_7211 = add i64 %_7210, 1
  store i64 %_7211, i64* %_7196
  br label %_7200
_7202:
  %_7212 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7187
  ret { i64, [0 x i64] }* %_7212
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_7168 = alloca i64
  store i64 %argc, i64* %_7168
  %_7169 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7169
  %_7170 = alloca { i64, [0 x i64] }*
  %_7179 = alloca { i64, [0 x i64] }*
  %_raw_array7171 = call i64* @oat_alloc_array(i64 6)
  %_array7172 = bitcast i64* %_raw_array7171 to { i64, [0 x i64] }*
  %_7178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7172, i32 0, i32 1, i32 5
  store i64 6, i64* %_7178
  %_7177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7172, i32 0, i32 1, i32 4
  store i64 2, i64* %_7177
  %_7176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7172, i32 0, i32 1, i32 3
  store i64 3, i64* %_7176
  %_7175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7172, i32 0, i32 1, i32 2
  store i64 32, i64* %_7175
  %_7174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7172, i32 0, i32 1, i32 1
  store i64 42, i64* %_7174
  %_7173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7172, i32 0, i32 1, i32 0
  store i64 13, i64* %_7173
  store { i64, [0 x i64] }* %_array7172, { i64, [0 x i64] }** %_7170
  %_7181 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7170
  %_7180 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_7181, i64 6)
  store { i64, [0 x i64] }* %_7180, { i64, [0 x i64] }** %_7179
  %_7182 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7179
  %_7183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7182, i32 0, i32 1, i32 5
  %_7184 = load i64, i64* %_7183
  ret i64 %_7184
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
