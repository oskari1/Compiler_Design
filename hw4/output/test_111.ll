; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_5329 = global [2 x i8] c" \00"
@_5335 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5307 = alloca i64
  store i64 %argc, i64* %_5307
  %_5308 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5308
  %_5309 = alloca i64
  %_5310 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_5309
  %_raw_array5311 = call i64* @oat_alloc_array(i64 10)
  %_array5312 = bitcast i64* %_raw_array5311 to { i64, [0 x i64] }*
  %_5322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 9
  store i64 117, i64* %_5322
  %_5321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 8
  store i64 118, i64* %_5321
  %_5320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 7
  store i64 119, i64* %_5320
  %_5319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 6
  store i64 120, i64* %_5319
  %_5318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 5
  store i64 121, i64* %_5318
  %_5317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 4
  store i64 122, i64* %_5317
  %_5316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 3
  store i64 123, i64* %_5316
  %_5315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 2
  store i64 124, i64* %_5315
  %_5314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 1
  store i64 125, i64* %_5314
  %_5313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 0
  store i64 126, i64* %_5313
  store { i64, [0 x i64] }* %_array5312, { i64, [0 x i64] }** %_5310
  %_5325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5310
  %_5324 = call i8* @string_of_array({ i64, [0 x i64] }* %_5325)
  call void @print_string(i8* %_5324)
  %_5327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5310
  call void @oat_mergesort({ i64, [0 x i64] }* %_5327, i64 0, i64 9)
  %_5330 = getelementptr [2 x i8], [2 x i8]* @_5329, i32 0, i32 0
  call void @print_string(i8* %_5330)
  %_5333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5310
  %_5332 = call i8* @string_of_array({ i64, [0 x i64] }* %_5333)
  call void @print_string(i8* %_5332)
  %_5336 = getelementptr [2 x i8], [2 x i8]* @_5335, i32 0, i32 0
  call void @print_string(i8* %_5336)
  %_5337 = load i64, i64* %_5309
  ret i64 %_5337
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_5279 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_5279
  %_5280 = alloca i64
  store i64 %low, i64* %_5280
  %_5281 = alloca i64
  store i64 %high, i64* %_5281
  %_5282 = alloca i64
  store i64 0, i64* %_5282
  %_5283 = load i64, i64* %_5280
  %_5284 = load i64, i64* %_5281
  %_5285 = icmp slt i64 %_5283, %_5284
  br i1 %_5285, label %_5286, label %_5287
_5286:
  %_5289 = load i64, i64* %_5280
  %_5290 = load i64, i64* %_5281
  %_5291 = add i64 %_5289, %_5290
  %_5292 = lshr i64 %_5291, 1
  store i64 %_5292, i64* %_5282
  %_5294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5279
  %_5295 = load i64, i64* %_5280
  %_5296 = load i64, i64* %_5282
  call void @oat_mergesort({ i64, [0 x i64] }* %_5294, i64 %_5295, i64 %_5296)
  %_5298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5279
  %_5299 = load i64, i64* %_5282
  %_5300 = add i64 %_5299, 1
  %_5301 = load i64, i64* %_5281
  call void @oat_mergesort({ i64, [0 x i64] }* %_5298, i64 %_5300, i64 %_5301)
  %_5303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5279
  %_5304 = load i64, i64* %_5280
  %_5305 = load i64, i64* %_5281
  %_5306 = load i64, i64* %_5282
  call void @merge({ i64, [0 x i64] }* %_5303, i64 %_5304, i64 %_5305, i64 %_5306)
  br label %_5288
_5287:
  br label %_5288
_5288:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_5171 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_5171
  %_5172 = alloca i64
  store i64 %low, i64* %_5172
  %_5173 = alloca i64
  store i64 %high, i64* %_5173
  %_5174 = alloca i64
  store i64 %mid, i64* %_5174
  %_5175 = alloca i64
  %_5176 = alloca i64
  %_5177 = alloca i64
  %_5178 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_5175
  store i64 0, i64* %_5176
  store i64 0, i64* %_5177
  %_raw_array5179 = call i64* @oat_alloc_array(i64 50)
  %_array5180 = bitcast i64* %_raw_array5179 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5180, { i64, [0 x i64] }** %_5178
  %_5181 = load i64, i64* %_5172
  store i64 %_5181, i64* %_5175
  %_5182 = load i64, i64* %_5174
  %_5183 = add i64 %_5182, 1
  store i64 %_5183, i64* %_5176
  %_5184 = load i64, i64* %_5172
  store i64 %_5184, i64* %_5177
  br label %_5192
_5192:
  %_5185 = load i64, i64* %_5175
  %_5186 = load i64, i64* %_5174
  %_5187 = icmp sle i64 %_5185, %_5186
  %_5188 = load i64, i64* %_5176
  %_5189 = load i64, i64* %_5173
  %_5190 = icmp sle i64 %_5188, %_5189
  %_5191 = and i1 %_5187, %_5190
  br i1 %_5191, label %_5193, label %_5194
_5193:
  %_5195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5171
  %_5196 = load i64, i64* %_5175
  %_5197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5195, i32 0, i32 1, i64 %_5196
  %_5198 = load i64, i64* %_5197
  %_5199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5171
  %_5200 = load i64, i64* %_5176
  %_5201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5199, i32 0, i32 1, i64 %_5200
  %_5202 = load i64, i64* %_5201
  %_5203 = icmp slt i64 %_5198, %_5202
  br i1 %_5203, label %_5204, label %_5205
_5204:
  %_5207 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5171
  %_5208 = load i64, i64* %_5175
  %_5209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5207, i32 0, i32 1, i64 %_5208
  %_5210 = load i64, i64* %_5209
  %_5212 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5178
  %_5213 = load i64, i64* %_5177
  %_5211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5212, i32 0, i32 1, i64 %_5213
  store i64 %_5210, i64* %_5211
  %_5214 = load i64, i64* %_5177
  %_5215 = add i64 %_5214, 1
  store i64 %_5215, i64* %_5177
  %_5216 = load i64, i64* %_5175
  %_5217 = add i64 %_5216, 1
  store i64 %_5217, i64* %_5175
  br label %_5206
_5205:
  %_5218 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5171
  %_5219 = load i64, i64* %_5176
  %_5220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5218, i32 0, i32 1, i64 %_5219
  %_5221 = load i64, i64* %_5220
  %_5223 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5178
  %_5224 = load i64, i64* %_5177
  %_5222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5223, i32 0, i32 1, i64 %_5224
  store i64 %_5221, i64* %_5222
  %_5225 = load i64, i64* %_5177
  %_5226 = add i64 %_5225, 1
  store i64 %_5226, i64* %_5177
  %_5227 = load i64, i64* %_5176
  %_5228 = add i64 %_5227, 1
  store i64 %_5228, i64* %_5176
  br label %_5206
_5206:
  br label %_5192
_5194:
  br label %_5232
_5232:
  %_5229 = load i64, i64* %_5175
  %_5230 = load i64, i64* %_5174
  %_5231 = icmp sle i64 %_5229, %_5230
  br i1 %_5231, label %_5233, label %_5234
_5233:
  %_5235 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5171
  %_5236 = load i64, i64* %_5175
  %_5237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5235, i32 0, i32 1, i64 %_5236
  %_5238 = load i64, i64* %_5237
  %_5240 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5178
  %_5241 = load i64, i64* %_5177
  %_5239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5240, i32 0, i32 1, i64 %_5241
  store i64 %_5238, i64* %_5239
  %_5242 = load i64, i64* %_5177
  %_5243 = add i64 %_5242, 1
  store i64 %_5243, i64* %_5177
  %_5244 = load i64, i64* %_5175
  %_5245 = add i64 %_5244, 1
  store i64 %_5245, i64* %_5175
  br label %_5232
_5234:
  br label %_5249
_5249:
  %_5246 = load i64, i64* %_5176
  %_5247 = load i64, i64* %_5173
  %_5248 = icmp sle i64 %_5246, %_5247
  br i1 %_5248, label %_5250, label %_5251
_5250:
  %_5252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5171
  %_5253 = load i64, i64* %_5176
  %_5254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5252, i32 0, i32 1, i64 %_5253
  %_5255 = load i64, i64* %_5254
  %_5257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5178
  %_5258 = load i64, i64* %_5177
  %_5256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5257, i32 0, i32 1, i64 %_5258
  store i64 %_5255, i64* %_5256
  %_5259 = load i64, i64* %_5177
  %_5260 = add i64 %_5259, 1
  store i64 %_5260, i64* %_5177
  %_5261 = load i64, i64* %_5176
  %_5262 = add i64 %_5261, 1
  store i64 %_5262, i64* %_5176
  br label %_5249
_5251:
  %_5263 = load i64, i64* %_5172
  store i64 %_5263, i64* %_5175
  br label %_5267
_5267:
  %_5264 = load i64, i64* %_5175
  %_5265 = load i64, i64* %_5177
  %_5266 = icmp slt i64 %_5264, %_5265
  br i1 %_5266, label %_5268, label %_5269
_5268:
  %_5270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5178
  %_5271 = load i64, i64* %_5175
  %_5272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5270, i32 0, i32 1, i64 %_5271
  %_5273 = load i64, i64* %_5272
  %_5275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5171
  %_5276 = load i64, i64* %_5175
  %_5274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5275, i32 0, i32 1, i64 %_5276
  store i64 %_5273, i64* %_5274
  %_5277 = load i64, i64* %_5175
  %_5278 = add i64 %_5277, 1
  store i64 %_5278, i64* %_5175
  br label %_5267
_5269:
  ret void
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
