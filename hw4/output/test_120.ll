; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_6411 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_6411
  %_6412 = alloca i64
  store i64 %i, i64* %_6412
  %_6413 = alloca i64
  store i64 %len, i64* %_6413
  %_6414 = alloca i64
  %_6417 = alloca i64
  %_6420 = alloca i64
  %_6421 = alloca i64
  %_6415 = load i64, i64* %_6412
  %_6416 = mul i64 %_6415, 2
  store i64 %_6416, i64* %_6414
  %_6418 = load i64, i64* %_6412
  %_6419 = add i64 %_6418, 1
  store i64 %_6419, i64* %_6417
  store i64 0, i64* %_6420
  %_6422 = load i64, i64* %_6412
  store i64 %_6422, i64* %_6421
  %_6423 = load i64, i64* %_6414
  %_6424 = load i64, i64* %_6413
  %_6425 = icmp slt i64 %_6423, %_6424
  br i1 %_6425, label %_6426, label %_6427
_6426:
  %_6429 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6411
  %_6430 = load i64, i64* %_6414
  %_6431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6429, i32 0, i32 1, i64 %_6430
  %_6432 = load i64, i64* %_6431
  %_6433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6411
  %_6434 = load i64, i64* %_6421
  %_6435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6433, i32 0, i32 1, i64 %_6434
  %_6436 = load i64, i64* %_6435
  %_6437 = icmp sgt i64 %_6432, %_6436
  br i1 %_6437, label %_6438, label %_6439
_6438:
  %_6441 = load i64, i64* %_6414
  store i64 %_6441, i64* %_6421
  br label %_6440
_6439:
  br label %_6440
_6440:
  br label %_6428
_6427:
  br label %_6428
_6428:
  %_6442 = load i64, i64* %_6417
  %_6443 = load i64, i64* %_6413
  %_6444 = icmp slt i64 %_6442, %_6443
  br i1 %_6444, label %_6445, label %_6446
_6445:
  %_6448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6411
  %_6449 = load i64, i64* %_6417
  %_6450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6448, i32 0, i32 1, i64 %_6449
  %_6451 = load i64, i64* %_6450
  %_6452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6411
  %_6453 = load i64, i64* %_6421
  %_6454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6452, i32 0, i32 1, i64 %_6453
  %_6455 = load i64, i64* %_6454
  %_6456 = icmp sgt i64 %_6451, %_6455
  br i1 %_6456, label %_6457, label %_6458
_6457:
  %_6460 = load i64, i64* %_6417
  store i64 %_6460, i64* %_6421
  br label %_6459
_6458:
  br label %_6459
_6459:
  br label %_6447
_6446:
  br label %_6447
_6447:
  %_6461 = load i64, i64* %_6421
  %_6462 = load i64, i64* %_6412
  %_6463 = icmp ne i64 %_6461, %_6462
  br i1 %_6463, label %_6464, label %_6465
_6464:
  %_6467 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6411
  %_6468 = load i64, i64* %_6412
  %_6469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6467, i32 0, i32 1, i64 %_6468
  %_6470 = load i64, i64* %_6469
  store i64 %_6470, i64* %_6420
  %_6471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6411
  %_6472 = load i64, i64* %_6421
  %_6473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6471, i32 0, i32 1, i64 %_6472
  %_6474 = load i64, i64* %_6473
  %_6476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6411
  %_6477 = load i64, i64* %_6412
  %_6475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6476, i32 0, i32 1, i64 %_6477
  store i64 %_6474, i64* %_6475
  %_6478 = load i64, i64* %_6420
  %_6480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6411
  %_6481 = load i64, i64* %_6421
  %_6479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6480, i32 0, i32 1, i64 %_6481
  store i64 %_6478, i64* %_6479
  %_6483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6411
  %_6484 = load i64, i64* %_6421
  %_6485 = load i64, i64* %_6413
  call void @min_heapify({ i64, [0 x i64] }* %_6483, i64 %_6484, i64 %_6485)
  br label %_6466
_6465:
  br label %_6466
_6466:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_6396 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_6396
  %_6397 = alloca i64
  store i64 %len, i64* %_6397
  %_6398 = alloca i64
  %_6399 = load i64, i64* %_6397
  store i64 %_6399, i64* %_6398
  br label %_6402
_6402:
  %_6400 = load i64, i64* %_6398
  %_6401 = icmp sge i64 %_6400, 1
  br i1 %_6401, label %_6403, label %_6404
_6403:
  %_6406 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6396
  %_6407 = load i64, i64* %_6398
  %_6408 = load i64, i64* %_6397
  call void @min_heapify({ i64, [0 x i64] }* %_6406, i64 %_6407, i64 %_6408)
  %_6409 = load i64, i64* %_6398
  %_6410 = sub i64 %_6409, 1
  store i64 %_6410, i64* %_6398
  br label %_6402
_6404:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6342 = alloca i64
  store i64 %argc, i64* %_6342
  %_6343 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6343
  %_6344 = alloca { i64, [0 x i64] }*
  %_6358 = alloca { i64, [0 x i64] }*
  %_6374 = alloca i64
  %_6375 = alloca i64
  %_raw_array6345 = call i64* @oat_alloc_array(i64 11)
  %_array6346 = bitcast i64* %_raw_array6345 to { i64, [0 x i64] }*
  %_6357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 10
  store i64 5, i64* %_6357
  %_6356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 9
  store i64 4, i64* %_6356
  %_6355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 8
  store i64 6, i64* %_6355
  %_6354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 7
  store i64 3, i64* %_6354
  %_6353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 6
  store i64 7, i64* %_6353
  %_6352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 5
  store i64 10, i64* %_6352
  %_6351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 4
  store i64 8, i64* %_6351
  %_6350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 3
  store i64 2, i64* %_6350
  %_6349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 2
  store i64 1, i64* %_6349
  %_6348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 1
  store i64 9, i64* %_6348
  %_6347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6346, i32 0, i32 1, i32 0
  store i64 0, i64* %_6347
  store { i64, [0 x i64] }* %_array6346, { i64, [0 x i64] }** %_6344
  %_raw_array6359 = call i64* @oat_alloc_array(i64 11)
  %_array6360 = bitcast i64* %_raw_array6359 to { i64, [0 x i64] }*
  %_6371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 10
  store i64 10, i64* %_6371
  %_6370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 9
  store i64 9, i64* %_6370
  %_6369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 8
  store i64 6, i64* %_6369
  %_6368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 7
  store i64 3, i64* %_6368
  %_6367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 6
  store i64 7, i64* %_6367
  %_6366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 5
  store i64 5, i64* %_6366
  %_6365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 4
  store i64 8, i64* %_6365
  %_6364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 3
  store i64 2, i64* %_6364
  %_6363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 2
  store i64 4, i64* %_6363
  %_6362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 1
  store i64 1, i64* %_6362
  %_6361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6360, i32 0, i32 1, i32 0
  store i64 0, i64* %_6361
  store { i64, [0 x i64] }* %_array6360, { i64, [0 x i64] }** %_6358
  %_6373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6344
  call void @make_min_heap({ i64, [0 x i64] }* %_6373, i64 10)
  store i64 0, i64* %_6374
  store i64 0, i64* %_6375
  br label %_6378
_6378:
  %_6376 = load i64, i64* %_6375
  %_6377 = icmp slt i64 %_6376, 11
  br i1 %_6377, label %_6379, label %_6380
_6379:
  %_6381 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6344
  %_6382 = load i64, i64* %_6375
  %_6383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6381, i32 0, i32 1, i64 %_6382
  %_6384 = load i64, i64* %_6383
  %_6385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6358
  %_6386 = load i64, i64* %_6375
  %_6387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6385, i32 0, i32 1, i64 %_6386
  %_6388 = load i64, i64* %_6387
  %_6389 = icmp ne i64 %_6384, %_6388
  br i1 %_6389, label %_6390, label %_6391
_6390:
  store i64 1, i64* %_6374
  br label %_6392
_6391:
  br label %_6392
_6392:
  %_6393 = load i64, i64* %_6375
  %_6394 = add i64 %_6393, 1
  store i64 %_6394, i64* %_6375
  br label %_6378
_6380:
  %_6395 = load i64, i64* %_6374
  ret i64 %_6395
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
