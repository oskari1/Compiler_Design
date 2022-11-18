; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_5496 = global [2 x i8] c" \00"
@_5502 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5474 = alloca i64
  store i64 %argc, i64* %_5474
  %_5475 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5475
  %_5476 = alloca { i64, [0 x i64] }*
  %_5489 = alloca i64
  %_raw_array5477 = call i64* @oat_alloc_array(i64 10)
  %_array5478 = bitcast i64* %_raw_array5477 to { i64, [0 x i64] }*
  %_5488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5478, i32 0, i32 1, i32 9
  store i64 117, i64* %_5488
  %_5487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5478, i32 0, i32 1, i32 8
  store i64 118, i64* %_5487
  %_5486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5478, i32 0, i32 1, i32 7
  store i64 119, i64* %_5486
  %_5485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5478, i32 0, i32 1, i32 6
  store i64 120, i64* %_5485
  %_5484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5478, i32 0, i32 1, i32 5
  store i64 121, i64* %_5484
  %_5483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5478, i32 0, i32 1, i32 4
  store i64 122, i64* %_5483
  %_5482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5478, i32 0, i32 1, i32 3
  store i64 123, i64* %_5482
  %_5481 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5478, i32 0, i32 1, i32 2
  store i64 124, i64* %_5481
  %_5480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5478, i32 0, i32 1, i32 1
  store i64 125, i64* %_5480
  %_5479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5478, i32 0, i32 1, i32 0
  store i64 126, i64* %_5479
  store { i64, [0 x i64] }* %_array5478, { i64, [0 x i64] }** %_5476
  store i64 0, i64* %_5489
  %_5492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5476
  %_5491 = call i8* @string_of_array({ i64, [0 x i64] }* %_5492)
  call void @print_string(i8* %_5491)
  %_5494 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5476
  call void @oat_mergesort({ i64, [0 x i64] }* %_5494, i64 0, i64 9)
  %_5497 = getelementptr [2 x i8], [2 x i8]* @_5496, i32 0, i32 0
  call void @print_string(i8* %_5497)
  %_5500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5476
  %_5499 = call i8* @string_of_array({ i64, [0 x i64] }* %_5500)
  call void @print_string(i8* %_5499)
  %_5503 = getelementptr [2 x i8], [2 x i8]* @_5502, i32 0, i32 0
  call void @print_string(i8* %_5503)
  %_5504 = load i64, i64* %_5489
  ret i64 %_5504
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_5446 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_5446
  %_5447 = alloca i64
  store i64 %low, i64* %_5447
  %_5448 = alloca i64
  store i64 %high, i64* %_5448
  %_5449 = alloca i64
  store i64 0, i64* %_5449
  %_5450 = load i64, i64* %_5447
  %_5451 = load i64, i64* %_5448
  %_5452 = icmp slt i64 %_5450, %_5451
  br i1 %_5452, label %_5453, label %_5454
_5453:
  %_5456 = load i64, i64* %_5447
  %_5457 = load i64, i64* %_5448
  %_5458 = add i64 %_5456, %_5457
  %_5459 = lshr i64 %_5458, 1
  store i64 %_5459, i64* %_5449
  %_5461 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5446
  %_5462 = load i64, i64* %_5447
  %_5463 = load i64, i64* %_5449
  call void @oat_mergesort({ i64, [0 x i64] }* %_5461, i64 %_5462, i64 %_5463)
  %_5465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5446
  %_5466 = load i64, i64* %_5449
  %_5467 = add i64 %_5466, 1
  %_5468 = load i64, i64* %_5448
  call void @oat_mergesort({ i64, [0 x i64] }* %_5465, i64 %_5467, i64 %_5468)
  %_5470 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5446
  %_5471 = load i64, i64* %_5447
  %_5472 = load i64, i64* %_5448
  %_5473 = load i64, i64* %_5449
  call void @merge({ i64, [0 x i64] }* %_5470, i64 %_5471, i64 %_5472, i64 %_5473)
  br label %_5455
_5454:
  br label %_5455
_5455:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_5338 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_5338
  %_5339 = alloca i64
  store i64 %low, i64* %_5339
  %_5340 = alloca i64
  store i64 %high, i64* %_5340
  %_5341 = alloca i64
  store i64 %mid, i64* %_5341
  %_5342 = alloca i64
  %_5343 = alloca i64
  %_5344 = alloca i64
  %_5345 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_5342
  store i64 0, i64* %_5343
  store i64 0, i64* %_5344
  %_raw_array5346 = call i64* @oat_alloc_array(i64 50)
  %_array5347 = bitcast i64* %_raw_array5346 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5347, { i64, [0 x i64] }** %_5345
  %_5348 = load i64, i64* %_5339
  store i64 %_5348, i64* %_5342
  %_5349 = load i64, i64* %_5341
  %_5350 = add i64 %_5349, 1
  store i64 %_5350, i64* %_5343
  %_5351 = load i64, i64* %_5339
  store i64 %_5351, i64* %_5344
  br label %_5359
_5359:
  %_5352 = load i64, i64* %_5342
  %_5353 = load i64, i64* %_5341
  %_5354 = icmp sle i64 %_5352, %_5353
  %_5355 = load i64, i64* %_5343
  %_5356 = load i64, i64* %_5340
  %_5357 = icmp sle i64 %_5355, %_5356
  %_5358 = and i1 %_5354, %_5357
  br i1 %_5358, label %_5360, label %_5361
_5360:
  %_5362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5338
  %_5363 = load i64, i64* %_5342
  %_5364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5362, i32 0, i32 1, i64 %_5363
  %_5365 = load i64, i64* %_5364
  %_5366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5338
  %_5367 = load i64, i64* %_5343
  %_5368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5366, i32 0, i32 1, i64 %_5367
  %_5369 = load i64, i64* %_5368
  %_5370 = icmp slt i64 %_5365, %_5369
  br i1 %_5370, label %_5371, label %_5372
_5371:
  %_5374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5338
  %_5375 = load i64, i64* %_5342
  %_5376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5374, i32 0, i32 1, i64 %_5375
  %_5377 = load i64, i64* %_5376
  %_5379 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5345
  %_5380 = load i64, i64* %_5344
  %_5378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5379, i32 0, i32 1, i64 %_5380
  store i64 %_5377, i64* %_5378
  %_5381 = load i64, i64* %_5344
  %_5382 = add i64 %_5381, 1
  store i64 %_5382, i64* %_5344
  %_5383 = load i64, i64* %_5342
  %_5384 = add i64 %_5383, 1
  store i64 %_5384, i64* %_5342
  br label %_5373
_5372:
  %_5385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5338
  %_5386 = load i64, i64* %_5343
  %_5387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5385, i32 0, i32 1, i64 %_5386
  %_5388 = load i64, i64* %_5387
  %_5390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5345
  %_5391 = load i64, i64* %_5344
  %_5389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5390, i32 0, i32 1, i64 %_5391
  store i64 %_5388, i64* %_5389
  %_5392 = load i64, i64* %_5344
  %_5393 = add i64 %_5392, 1
  store i64 %_5393, i64* %_5344
  %_5394 = load i64, i64* %_5343
  %_5395 = add i64 %_5394, 1
  store i64 %_5395, i64* %_5343
  br label %_5373
_5373:
  br label %_5359
_5361:
  br label %_5399
_5399:
  %_5396 = load i64, i64* %_5342
  %_5397 = load i64, i64* %_5341
  %_5398 = icmp sle i64 %_5396, %_5397
  br i1 %_5398, label %_5400, label %_5401
_5400:
  %_5402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5338
  %_5403 = load i64, i64* %_5342
  %_5404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5402, i32 0, i32 1, i64 %_5403
  %_5405 = load i64, i64* %_5404
  %_5407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5345
  %_5408 = load i64, i64* %_5344
  %_5406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5407, i32 0, i32 1, i64 %_5408
  store i64 %_5405, i64* %_5406
  %_5409 = load i64, i64* %_5344
  %_5410 = add i64 %_5409, 1
  store i64 %_5410, i64* %_5344
  %_5411 = load i64, i64* %_5342
  %_5412 = add i64 %_5411, 1
  store i64 %_5412, i64* %_5342
  br label %_5399
_5401:
  br label %_5416
_5416:
  %_5413 = load i64, i64* %_5343
  %_5414 = load i64, i64* %_5340
  %_5415 = icmp sle i64 %_5413, %_5414
  br i1 %_5415, label %_5417, label %_5418
_5417:
  %_5419 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5338
  %_5420 = load i64, i64* %_5343
  %_5421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5419, i32 0, i32 1, i64 %_5420
  %_5422 = load i64, i64* %_5421
  %_5424 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5345
  %_5425 = load i64, i64* %_5344
  %_5423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5424, i32 0, i32 1, i64 %_5425
  store i64 %_5422, i64* %_5423
  %_5426 = load i64, i64* %_5344
  %_5427 = add i64 %_5426, 1
  store i64 %_5427, i64* %_5344
  %_5428 = load i64, i64* %_5343
  %_5429 = add i64 %_5428, 1
  store i64 %_5429, i64* %_5343
  br label %_5416
_5418:
  %_5430 = load i64, i64* %_5339
  store i64 %_5430, i64* %_5342
  br label %_5434
_5434:
  %_5431 = load i64, i64* %_5342
  %_5432 = load i64, i64* %_5344
  %_5433 = icmp slt i64 %_5431, %_5432
  br i1 %_5433, label %_5435, label %_5436
_5435:
  %_5437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5345
  %_5438 = load i64, i64* %_5342
  %_5439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5437, i32 0, i32 1, i64 %_5438
  %_5440 = load i64, i64* %_5439
  %_5442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5338
  %_5443 = load i64, i64* %_5342
  %_5441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5442, i32 0, i32 1, i64 %_5443
  store i64 %_5440, i64* %_5441
  %_5444 = load i64, i64* %_5342
  %_5445 = add i64 %_5444, 1
  store i64 %_5445, i64* %_5342
  br label %_5434
_5436:
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
