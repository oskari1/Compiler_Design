; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_6125 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_6251 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_6251
  %_6252 = alloca i64
  store i64 %len, i64* %_6252
  %_6253 = alloca i64
  %_6257 = alloca i64
  %_6254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6251
  %_6255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6254, i32 0, i32 1, i32 0
  %_6256 = load i64, i64* %_6255
  store i64 %_6256, i64* %_6253
  store i64 0, i64* %_6257
  br label %_6261
_6261:
  %_6258 = load i64, i64* %_6257
  %_6259 = load i64, i64* %_6252
  %_6260 = icmp slt i64 %_6258, %_6259
  br i1 %_6260, label %_6262, label %_6263
_6262:
  %_6264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6251
  %_6265 = load i64, i64* %_6257
  %_6266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6264, i32 0, i32 1, i64 %_6265
  %_6267 = load i64, i64* %_6266
  %_6268 = load i64, i64* %_6253
  %_6269 = icmp slt i64 %_6267, %_6268
  br i1 %_6269, label %_6270, label %_6271
_6270:
  %_6273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6251
  %_6274 = load i64, i64* %_6257
  %_6275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6273, i32 0, i32 1, i64 %_6274
  %_6276 = load i64, i64* %_6275
  store i64 %_6276, i64* %_6253
  br label %_6272
_6271:
  br label %_6272
_6272:
  %_6277 = load i64, i64* %_6257
  %_6278 = add i64 %_6277, 1
  store i64 %_6278, i64* %_6257
  br label %_6261
_6263:
  %_6279 = load i64, i64* %_6253
  ret i64 %_6279
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_6222 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_6222
  %_6223 = alloca i64
  store i64 %len, i64* %_6223
  %_6224 = alloca i64
  %_6228 = alloca i64
  %_6225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6222
  %_6226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6225, i32 0, i32 1, i32 0
  %_6227 = load i64, i64* %_6226
  store i64 %_6227, i64* %_6224
  store i64 0, i64* %_6228
  br label %_6232
_6232:
  %_6229 = load i64, i64* %_6228
  %_6230 = load i64, i64* %_6223
  %_6231 = icmp slt i64 %_6229, %_6230
  br i1 %_6231, label %_6233, label %_6234
_6233:
  %_6235 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6222
  %_6236 = load i64, i64* %_6228
  %_6237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6235, i32 0, i32 1, i64 %_6236
  %_6238 = load i64, i64* %_6237
  %_6239 = load i64, i64* %_6224
  %_6240 = icmp sgt i64 %_6238, %_6239
  br i1 %_6240, label %_6241, label %_6242
_6241:
  %_6244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6222
  %_6245 = load i64, i64* %_6228
  %_6246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6244, i32 0, i32 1, i64 %_6245
  %_6247 = load i64, i64* %_6246
  store i64 %_6247, i64* %_6224
  br label %_6243
_6242:
  br label %_6243
_6243:
  %_6248 = load i64, i64* %_6228
  %_6249 = add i64 %_6248, 1
  store i64 %_6249, i64* %_6228
  br label %_6232
_6234:
  %_6250 = load i64, i64* %_6224
  ret i64 %_6250
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_6134 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_6134
  %_6135 = alloca i64
  store i64 %len, i64* %_6135
  %_6136 = alloca i64
  %_6140 = alloca i64
  %_6144 = alloca { i64, [0 x i64] }*
  %_6151 = alloca i64
  %_6178 = alloca i64
  %_6180 = alloca i64
  %_6181 = alloca { i64, [0 x i64] }*
  %_6138 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6134
  %_6139 = load i64, i64* %_6135
  %_6137 = call i64 @min({ i64, [0 x i64] }* %_6138, i64 %_6139)
  store i64 %_6137, i64* %_6136
  %_6142 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6134
  %_6143 = load i64, i64* %_6135
  %_6141 = call i64 @max({ i64, [0 x i64] }* %_6142, i64 %_6143)
  store i64 %_6141, i64* %_6140
  %_6145 = load i64, i64* %_6140
  %_6146 = load i64, i64* %_6136
  %_6147 = sub i64 %_6145, %_6146
  %_6148 = add i64 %_6147, 1
  %_raw_array6149 = call i64* @oat_alloc_array(i64 %_6148)
  %_array6150 = bitcast i64* %_raw_array6149 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6150, { i64, [0 x i64] }** %_6144
  store i64 0, i64* %_6151
  br label %_6155
_6155:
  %_6152 = load i64, i64* %_6151
  %_6153 = load i64, i64* %_6135
  %_6154 = icmp slt i64 %_6152, %_6153
  br i1 %_6154, label %_6156, label %_6157
_6156:
  %_6158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6144
  %_6159 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6134
  %_6160 = load i64, i64* %_6151
  %_6161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6159, i32 0, i32 1, i64 %_6160
  %_6162 = load i64, i64* %_6161
  %_6163 = load i64, i64* %_6136
  %_6164 = sub i64 %_6162, %_6163
  %_6165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6158, i32 0, i32 1, i64 %_6164
  %_6166 = load i64, i64* %_6165
  %_6167 = add i64 %_6166, 1
  %_6169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6144
  %_6170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6134
  %_6171 = load i64, i64* %_6151
  %_6172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6170, i32 0, i32 1, i64 %_6171
  %_6173 = load i64, i64* %_6172
  %_6174 = load i64, i64* %_6136
  %_6175 = sub i64 %_6173, %_6174
  %_6168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6169, i32 0, i32 1, i64 %_6175
  store i64 %_6167, i64* %_6168
  %_6176 = load i64, i64* %_6151
  %_6177 = add i64 %_6176, 1
  store i64 %_6177, i64* %_6151
  br label %_6155
_6157:
  %_6179 = load i64, i64* %_6136
  store i64 %_6179, i64* %_6178
  store i64 0, i64* %_6180
  %_6182 = load i64, i64* %_6135
  %_raw_array6183 = call i64* @oat_alloc_array(i64 %_6182)
  %_array6184 = bitcast i64* %_raw_array6183 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6184, { i64, [0 x i64] }** %_6181
  br label %_6188
_6188:
  %_6185 = load i64, i64* %_6178
  %_6186 = load i64, i64* %_6140
  %_6187 = icmp sle i64 %_6185, %_6186
  br i1 %_6187, label %_6189, label %_6190
_6189:
  %_6191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6144
  %_6192 = load i64, i64* %_6178
  %_6193 = load i64, i64* %_6136
  %_6194 = sub i64 %_6192, %_6193
  %_6195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6191, i32 0, i32 1, i64 %_6194
  %_6196 = load i64, i64* %_6195
  %_6197 = icmp sgt i64 %_6196, 0
  br i1 %_6197, label %_6198, label %_6199
_6198:
  %_6201 = load i64, i64* %_6178
  %_6203 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6181
  %_6204 = load i64, i64* %_6180
  %_6202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6203, i32 0, i32 1, i64 %_6204
  store i64 %_6201, i64* %_6202
  %_6205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6144
  %_6206 = load i64, i64* %_6178
  %_6207 = load i64, i64* %_6136
  %_6208 = sub i64 %_6206, %_6207
  %_6209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6205, i32 0, i32 1, i64 %_6208
  %_6210 = load i64, i64* %_6209
  %_6211 = sub i64 %_6210, 1
  %_6213 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6144
  %_6214 = load i64, i64* %_6178
  %_6215 = load i64, i64* %_6136
  %_6216 = sub i64 %_6214, %_6215
  %_6212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6213, i32 0, i32 1, i64 %_6216
  store i64 %_6211, i64* %_6212
  %_6217 = load i64, i64* %_6180
  %_6218 = add i64 %_6217, 1
  store i64 %_6218, i64* %_6180
  br label %_6200
_6199:
  %_6219 = load i64, i64* %_6178
  %_6220 = add i64 %_6219, 1
  store i64 %_6220, i64* %_6178
  br label %_6200
_6200:
  br label %_6188
_6190:
  %_6221 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6181
  ret { i64, [0 x i64] }* %_6221
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6106 = alloca i64
  store i64 %argc, i64* %_6106
  %_6107 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6107
  %_6108 = alloca { i64, [0 x i64] }*
  %_6120 = alloca i64
  %_6127 = alloca { i64, [0 x i64] }*
  %_raw_array6109 = call i64* @oat_alloc_array(i64 9)
  %_array6110 = bitcast i64* %_raw_array6109 to { i64, [0 x i64] }*
  %_6119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6110, i32 0, i32 1, i32 8
  store i64 67, i64* %_6119
  %_6118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6110, i32 0, i32 1, i32 7
  store i64 89, i64* %_6118
  %_6117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6110, i32 0, i32 1, i32 6
  store i64 69, i64* %_6117
  %_6116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6110, i32 0, i32 1, i32 5
  store i64 65, i64* %_6116
  %_6115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6110, i32 0, i32 1, i32 4
  store i64 65, i64* %_6115
  %_6114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6110, i32 0, i32 1, i32 3
  store i64 90, i64* %_6114
  %_6113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6110, i32 0, i32 1, i32 2
  store i64 72, i64* %_6113
  %_6112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6110, i32 0, i32 1, i32 1
  store i64 70, i64* %_6112
  %_6111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6110, i32 0, i32 1, i32 0
  store i64 65, i64* %_6111
  store { i64, [0 x i64] }* %_array6110, { i64, [0 x i64] }** %_6108
  store i64 9, i64* %_6120
  %_6123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6108
  %_6122 = call i8* @string_of_array({ i64, [0 x i64] }* %_6123)
  call void @print_string(i8* %_6122)
  %_6126 = getelementptr [2 x i8], [2 x i8]* @_6125, i32 0, i32 0
  call void @print_string(i8* %_6126)
  %_6129 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6108
  %_6130 = load i64, i64* %_6120
  %_6128 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_6129, i64 %_6130)
  store { i64, [0 x i64] }* %_6128, { i64, [0 x i64] }** %_6127
  %_6133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6127
  %_6132 = call i8* @string_of_array({ i64, [0 x i64] }* %_6133)
  call void @print_string(i8* %_6132)
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
