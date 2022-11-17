; generated from: ./dbernhard/mat_mult.oat
target triple = "x86_64-unknown-linux"
@eye = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_5407 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_5407 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_5404 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_5405 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_5406 to { i64, [0 x i64] }*) ] }
@_5404 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 0, i64 0 ] }
@_5405 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 1, i64 0 ] }
@_5406 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 1 ] }
@_5236 = global [3 x i8] c"| \00"
@_5253 = global [2 x i8] c" \00"
@_5262 = global [4 x i8] c" |
\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5335 = alloca i64
  store i64 %argc, i64* %_5335
  %_5336 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5336
  %_5337 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_5358 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_5379 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5338 = call i64* @oat_alloc_array(i64 3)
  %_array5339 = bitcast i64* %_raw_array5338 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5352 = call i64* @oat_alloc_array(i64 3)
  %_array5353 = bitcast i64* %_raw_array5352 to { i64, [0 x i64] }*
  %_5356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5353, i32 0, i32 1, i32 2
  store i64 1, i64* %_5356
  %_5355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5353, i32 0, i32 1, i32 1
  store i64 0, i64* %_5355
  %_5354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5353, i32 0, i32 1, i32 0
  store i64 0, i64* %_5354
  %_5357 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5339, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5353, { i64, [0 x i64] }** %_5357
  %_raw_array5346 = call i64* @oat_alloc_array(i64 3)
  %_array5347 = bitcast i64* %_raw_array5346 to { i64, [0 x i64] }*
  %_5350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5347, i32 0, i32 1, i32 2
  store i64 0, i64* %_5350
  %_5349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5347, i32 0, i32 1, i32 1
  store i64 1, i64* %_5349
  %_5348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5347, i32 0, i32 1, i32 0
  store i64 0, i64* %_5348
  %_5351 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5339, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5347, { i64, [0 x i64] }** %_5351
  %_raw_array5340 = call i64* @oat_alloc_array(i64 3)
  %_array5341 = bitcast i64* %_raw_array5340 to { i64, [0 x i64] }*
  %_5344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5341, i32 0, i32 1, i32 2
  store i64 0, i64* %_5344
  %_5343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5341, i32 0, i32 1, i32 1
  store i64 0, i64* %_5343
  %_5342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5341, i32 0, i32 1, i32 0
  store i64 1, i64* %_5342
  %_5345 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5339, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5341, { i64, [0 x i64] }** %_5345
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5339, { i64, [0 x { i64, [0 x i64] }*] }** %_5337
  %_raw_array5359 = call i64* @oat_alloc_array(i64 3)
  %_array5360 = bitcast i64* %_raw_array5359 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5373 = call i64* @oat_alloc_array(i64 3)
  %_array5374 = bitcast i64* %_raw_array5373 to { i64, [0 x i64] }*
  %_5377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5374, i32 0, i32 1, i32 2
  store i64 1, i64* %_5377
  %_5376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5374, i32 0, i32 1, i32 1
  store i64 0, i64* %_5376
  %_5375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5374, i32 0, i32 1, i32 0
  store i64 2, i64* %_5375
  %_5378 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5360, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5374, { i64, [0 x i64] }** %_5378
  %_raw_array5367 = call i64* @oat_alloc_array(i64 3)
  %_array5368 = bitcast i64* %_raw_array5367 to { i64, [0 x i64] }*
  %_5371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 2
  store i64 2, i64* %_5371
  %_5370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 1
  store i64 1, i64* %_5370
  %_5369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 0
  store i64 9, i64* %_5369
  %_5372 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5360, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5368, { i64, [0 x i64] }** %_5372
  %_raw_array5361 = call i64* @oat_alloc_array(i64 3)
  %_array5362 = bitcast i64* %_raw_array5361 to { i64, [0 x i64] }*
  %_5365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5362, i32 0, i32 1, i32 2
  store i64 3, i64* %_5365
  %_5364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5362, i32 0, i32 1, i32 1
  store i64 4, i64* %_5364
  %_5363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5362, i32 0, i32 1, i32 0
  store i64 1, i64* %_5363
  %_5366 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5360, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5362, { i64, [0 x i64] }** %_5366
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5360, { i64, [0 x { i64, [0 x i64] }*] }** %_5358
  %_raw_array5380 = call i64* @oat_alloc_array(i64 3)
  %_array5381 = bitcast i64* %_raw_array5380 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5394 = call i64* @oat_alloc_array(i64 3)
  %_array5395 = bitcast i64* %_raw_array5394 to { i64, [0 x i64] }*
  %_5398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5395, i32 0, i32 1, i32 2
  store i64 1, i64* %_5398
  %_5397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5395, i32 0, i32 1, i32 1
  store i64 1, i64* %_5397
  %_5396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5395, i32 0, i32 1, i32 0
  store i64 2, i64* %_5396
  %_5399 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5381, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5395, { i64, [0 x i64] }** %_5399
  %_raw_array5388 = call i64* @oat_alloc_array(i64 3)
  %_array5389 = bitcast i64* %_raw_array5388 to { i64, [0 x i64] }*
  %_5392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5389, i32 0, i32 1, i32 2
  store i64 2, i64* %_5392
  %_5391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5389, i32 0, i32 1, i32 1
  store i64 1, i64* %_5391
  %_5390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5389, i32 0, i32 1, i32 0
  store i64 1, i64* %_5390
  %_5393 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5381, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5389, { i64, [0 x i64] }** %_5393
  %_raw_array5382 = call i64* @oat_alloc_array(i64 3)
  %_array5383 = bitcast i64* %_raw_array5382 to { i64, [0 x i64] }*
  %_5386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5383, i32 0, i32 1, i32 2
  store i64 2, i64* %_5386
  %_5385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5383, i32 0, i32 1, i32 1
  store i64 0, i64* %_5385
  %_5384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5383, i32 0, i32 1, i32 0
  store i64 1, i64* %_5384
  %_5387 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5381, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5383, { i64, [0 x i64] }** %_5387
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5381, { i64, [0 x { i64, [0 x i64] }*] }** %_5379
  %_5402 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5358
  %_5403 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5379
  %_5401 = call { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %_5402, { i64, [0 x { i64, [0 x i64] }*] }* %_5403)
  call void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %_5401, i1 0)
  ret i64 0
}

define { i64, [0 x { i64, [0 x i64] }*] }* @new_mat() {
  %_raw_array5324 = call i64* @oat_alloc_array(i64 3)
  %_array5325 = bitcast i64* %_raw_array5324 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5332 = call i64* @oat_alloc_array(i64 3)
  %_array5333 = bitcast i64* %_raw_array5332 to { i64, [0 x i64] }*
  %_5334 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5325, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5333, { i64, [0 x i64] }** %_5334
  %_raw_array5329 = call i64* @oat_alloc_array(i64 3)
  %_array5330 = bitcast i64* %_raw_array5329 to { i64, [0 x i64] }*
  %_5331 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5325, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5330, { i64, [0 x i64] }** %_5331
  %_raw_array5326 = call i64* @oat_alloc_array(i64 3)
  %_array5327 = bitcast i64* %_raw_array5326 to { i64, [0 x i64] }*
  %_5328 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5325, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5327, { i64, [0 x i64] }** %_5328
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_array5325
}

define { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }* %matb) {
  %_5266 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }** %_5266
  %_5267 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %matb, { i64, [0 x { i64, [0 x i64] }*] }** %_5267
  %_5268 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_5270 = alloca i64
  %_5276 = alloca i64
  %_5282 = alloca i64
  %_5269 = call { i64, [0 x { i64, [0 x i64] }*] }* @new_mat()
  store { i64, [0 x { i64, [0 x i64] }*] }* %_5269, { i64, [0 x { i64, [0 x i64] }*] }** %_5268
  store i64 0, i64* %_5270
  br label %_5273
_5273:
  %_5271 = load i64, i64* %_5270
  %_5272 = icmp slt i64 %_5271, 3
  br i1 %_5272, label %_5274, label %_5275
_5274:
  store i64 0, i64* %_5276
  br label %_5279
_5279:
  %_5277 = load i64, i64* %_5276
  %_5278 = icmp slt i64 %_5277, 3
  br i1 %_5278, label %_5280, label %_5281
_5280:
  store i64 0, i64* %_5282
  br label %_5285
_5285:
  %_5283 = load i64, i64* %_5282
  %_5284 = icmp slt i64 %_5283, 3
  br i1 %_5284, label %_5286, label %_5287
_5286:
  %_5288 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5268
  %_5289 = load i64, i64* %_5270
  %_5290 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5288, i32 0, i32 1, i64 %_5289
  %_5291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5290
  %_5292 = load i64, i64* %_5276
  %_5293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5291, i32 0, i32 1, i64 %_5292
  %_5294 = load i64, i64* %_5293
  %_5295 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5266
  %_5296 = load i64, i64* %_5270
  %_5297 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5295, i32 0, i32 1, i64 %_5296
  %_5298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5297
  %_5299 = load i64, i64* %_5282
  %_5300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5298, i32 0, i32 1, i64 %_5299
  %_5301 = load i64, i64* %_5300
  %_5302 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5267
  %_5303 = load i64, i64* %_5282
  %_5304 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5302, i32 0, i32 1, i64 %_5303
  %_5305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5304
  %_5306 = load i64, i64* %_5276
  %_5307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5305, i32 0, i32 1, i64 %_5306
  %_5308 = load i64, i64* %_5307
  %_5309 = mul i64 %_5301, %_5308
  %_5310 = add i64 %_5294, %_5309
  %_5312 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5268
  %_5313 = load i64, i64* %_5270
  %_5314 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5312, i32 0, i32 1, i64 %_5313
  %_5315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5314
  %_5316 = load i64, i64* %_5276
  %_5311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5315, i32 0, i32 1, i64 %_5316
  store i64 %_5310, i64* %_5311
  %_5317 = load i64, i64* %_5282
  %_5318 = add i64 %_5317, 1
  store i64 %_5318, i64* %_5282
  br label %_5285
_5287:
  %_5319 = load i64, i64* %_5276
  %_5320 = add i64 %_5319, 1
  store i64 %_5320, i64* %_5276
  br label %_5279
_5281:
  %_5321 = load i64, i64* %_5270
  %_5322 = add i64 %_5321, 1
  store i64 %_5322, i64* %_5270
  br label %_5273
_5275:
  %_5323 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5268
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_5323
}

define void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %mat, i1 %pretty) {
  %_5223 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %mat, { i64, [0 x { i64, [0 x i64] }*] }** %_5223
  %_5224 = alloca i1
  store i1 %pretty, i1* %_5224
  %_5225 = alloca i64
  %_5238 = alloca i64
  store i64 0, i64* %_5225
  br label %_5228
_5228:
  %_5226 = load i64, i64* %_5225
  %_5227 = icmp slt i64 %_5226, 3
  br i1 %_5227, label %_5229, label %_5230
_5229:
  %_5231 = load i1, i1* %_5224
  br i1 %_5231, label %_5232, label %_5233
_5232:
  %_5237 = getelementptr [3 x i8], [3 x i8]* @_5236, i32 0, i32 0
  call void @print_string(i8* %_5237)
  br label %_5234
_5233:
  br label %_5234
_5234:
  store i64 0, i64* %_5238
  br label %_5241
_5241:
  %_5239 = load i64, i64* %_5238
  %_5240 = icmp slt i64 %_5239, 3
  br i1 %_5240, label %_5242, label %_5243
_5242:
  %_5245 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_5223
  %_5246 = load i64, i64* %_5225
  %_5247 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5245, i32 0, i32 1, i64 %_5246
  %_5248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5247
  %_5249 = load i64, i64* %_5238
  %_5250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5248, i32 0, i32 1, i64 %_5249
  %_5251 = load i64, i64* %_5250
  call void @print_int(i64 %_5251)
  %_5254 = getelementptr [2 x i8], [2 x i8]* @_5253, i32 0, i32 0
  call void @print_string(i8* %_5254)
  %_5255 = load i64, i64* %_5238
  %_5256 = add i64 %_5255, 1
  store i64 %_5256, i64* %_5238
  br label %_5241
_5243:
  %_5257 = load i1, i1* %_5224
  br i1 %_5257, label %_5258, label %_5259
_5258:
  %_5263 = getelementptr [4 x i8], [4 x i8]* @_5262, i32 0, i32 0
  call void @print_string(i8* %_5263)
  br label %_5260
_5259:
  br label %_5260
_5260:
  %_5264 = load i64, i64* %_5225
  %_5265 = add i64 %_5264, 1
  store i64 %_5265, i64* %_5225
  br label %_5228
_5230:
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
