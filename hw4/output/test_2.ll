; generated from: oatprograms/calculator.oat
target triple = "x86_64-unknown-linux"
@_324 = global [2 x i8] c"
\00"

define { i64, [0 x i64] }* @new_stack() {
  %_610 = alloca { i64, [0 x i64] }*
  %_raw_array611 = call i64* @oat_alloc_array(i64 7)
  %_array612 = bitcast i64* %_raw_array611 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array612, { i64, [0 x i64] }** %_610
  %_614 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_610
  %_613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_614, i32 0, i32 1, i32 0
  store i64 5, i64* %_613
  %_616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_610
  %_615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_616, i32 0, i32 1, i32 1
  store i64 0, i64* %_615
  %_617 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_610
  ret { i64, [0 x i64] }* %_617
}

define i64 @peek_stack({ i64, [0 x i64] }* %s) {
  %_600 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_600
  %_601 = alloca i64
  %_602 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_600
  %_603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_602, i32 0, i32 1, i32 1
  %_604 = load i64, i64* %_603
  %_605 = add i64 1, %_604
  store i64 %_605, i64* %_601
  %_606 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_600
  %_607 = load i64, i64* %_601
  %_608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_606, i32 0, i32 1, i64 %_607
  %_609 = load i64, i64* %_608
  ret i64 %_609
}

define { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %s) {
  %_583 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_583
  %_584 = alloca i64
  %_585 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_583
  %_586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_585, i32 0, i32 1, i32 1
  %_587 = load i64, i64* %_586
  store i64 %_587, i64* %_584
  %_588 = load i64, i64* %_584
  %_589 = icmp sgt i64 %_588, 0
  br i1 %_589, label %_590, label %_591
_590:
  %_593 = load i64, i64* %_584
  %_594 = sub i64 %_593, 1
  store i64 %_594, i64* %_584
  br label %_592
_591:
  br label %_592
_592:
  %_595 = load i64, i64* %_584
  %_597 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_583
  %_596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_597, i32 0, i32 1, i32 1
  store i64 %_595, i64* %_596
  %_599 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_583
  %_598 = call { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %_599)
  ret { i64, [0 x i64] }* %_598
}

define { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %s, i64 %v) {
  %_566 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_566
  %_567 = alloca i64
  store i64 %v, i64* %_567
  %_568 = alloca i64
  %_569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_566
  %_570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_569, i32 0, i32 1, i32 1
  %_571 = load i64, i64* %_570
  %_572 = add i64 2, %_571
  store i64 %_572, i64* %_568
  %_573 = load i64, i64* %_567
  %_575 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_566
  %_576 = load i64, i64* %_568
  %_574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_575, i32 0, i32 1, i64 %_576
  store i64 %_573, i64* %_574
  %_577 = load i64, i64* %_568
  %_578 = sub i64 %_577, 1
  %_580 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_566
  %_579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_580, i32 0, i32 1, i32 1
  store i64 %_578, i64* %_579
  %_582 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_566
  %_581 = call { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %_582)
  ret { i64, [0 x i64] }* %_581
}

define { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %s) {
  %_468 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_468
  %_470 = alloca i64
  %_474 = alloca i64
  %_491 = alloca { i64, [0 x i64] }*
  %_505 = alloca i64
  %_532 = alloca { i64, [0 x i64] }*
  %_546 = alloca i64
  %_469 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_468
  ret { i64, [0 x i64] }* %_469
_480:
  %_483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_468
  ret { i64, [0 x i64] }* %_483
_481:
  br label %_482
_482:
  %_484 = load i64, i64* %_470
  %_485 = load i64, i64* %_474
  %_486 = shl i64 %_485, 1
  %_487 = icmp sgt i64 %_484, %_486
  br i1 %_487, label %_488, label %_489
_488:
  %_492 = load i64, i64* %_474
  %_493 = mul i64 %_492, 2
  %_494 = add i64 2, %_493
  %_raw_array495 = call i64* @oat_alloc_array(i64 %_494)
  %_array496 = bitcast i64* %_raw_array495 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array496, { i64, [0 x i64] }** %_491
  %_497 = load i64, i64* %_474
  %_498 = mul i64 %_497, 2
  store i64 %_498, i64* %_474
  %_499 = load i64, i64* %_474
  %_501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_491
  %_500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_501, i32 0, i32 1, i32 0
  store i64 %_499, i64* %_500
  %_502 = load i64, i64* %_470
  %_504 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_491
  %_503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_504, i32 0, i32 1, i32 1
  store i64 %_502, i64* %_503
  store i64 0, i64* %_505
  br label %_509
_509:
  %_506 = load i64, i64* %_505
  %_507 = load i64, i64* %_470
  %_508 = icmp sle i64 %_506, %_507
  br i1 %_508, label %_510, label %_511
_510:
  %_512 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_468
  %_513 = load i64, i64* %_505
  %_514 = add i64 2, %_513
  %_515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_512, i32 0, i32 1, i64 %_514
  %_516 = load i64, i64* %_515
  %_518 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_491
  %_519 = load i64, i64* %_505
  %_520 = add i64 2, %_519
  %_517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_518, i32 0, i32 1, i64 %_520
  store i64 %_516, i64* %_517
  %_521 = load i64, i64* %_505
  %_522 = add i64 %_521, 1
  store i64 %_522, i64* %_505
  br label %_509
_511:
  %_523 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_491
  ret { i64, [0 x i64] }* %_523
_489:
  %_524 = load i64, i64* %_470
  %_525 = load i64, i64* %_474
  %_526 = shl i64 %_525, 1
  %_527 = shl i64 %_526, 1
  %_528 = icmp slt i64 %_524, %_527
  br i1 %_528, label %_529, label %_530
_529:
  %_533 = load i64, i64* %_474
  %_534 = add i64 2, %_533
  %_535 = shl i64 %_534, 1
  %_raw_array536 = call i64* @oat_alloc_array(i64 %_535)
  %_array537 = bitcast i64* %_raw_array536 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array537, { i64, [0 x i64] }** %_532
  %_538 = load i64, i64* %_474
  %_539 = shl i64 %_538, 1
  store i64 %_539, i64* %_474
  %_540 = load i64, i64* %_474
  %_542 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_532
  %_541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_542, i32 0, i32 1, i32 0
  store i64 %_540, i64* %_541
  %_543 = load i64, i64* %_470
  %_545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_532
  %_544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_545, i32 0, i32 1, i32 1
  store i64 %_543, i64* %_544
  store i64 0, i64* %_546
  br label %_550
_550:
  %_547 = load i64, i64* %_546
  %_548 = load i64, i64* %_470
  %_549 = icmp sle i64 %_547, %_548
  br i1 %_549, label %_551, label %_552
_551:
  %_553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_468
  %_554 = load i64, i64* %_546
  %_555 = add i64 2, %_554
  %_556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_553, i32 0, i32 1, i64 %_555
  %_557 = load i64, i64* %_556
  %_559 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_532
  %_560 = load i64, i64* %_546
  %_561 = add i64 2, %_560
  %_558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_559, i32 0, i32 1, i64 %_561
  store i64 %_557, i64* %_558
  %_562 = load i64, i64* %_546
  %_563 = add i64 %_562, 1
  store i64 %_563, i64* %_546
  br label %_550
_552:
  %_564 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_532
  ret { i64, [0 x i64] }* %_564
_530:
  br label %_531
_531:
  br label %_490
_490:
  %_565 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_468
  ret { i64, [0 x i64] }* %_565
}

define i64 @get_val(i64 %i) {
  %_465 = alloca i64
  store i64 %i, i64* %_465
  %_466 = load i64, i64* %_465
  %_467 = sub i64 %_466, 48
  ret i64 %_467
}

define i64 @int_of_string(i8* %s) {
  %_436 = alloca i8*
  store i8* %s, i8** %_436
  %_437 = alloca { i64, [0 x i64] }*
  %_440 = alloca i64
  %_443 = alloca i64
  %_444 = alloca i64
  %_453 = alloca i64
  %_439 = load i8*, i8** %_436
  %_438 = call { i64, [0 x i64] }* @array_of_string(i8* %_439)
  store { i64, [0 x i64] }* %_438, { i64, [0 x i64] }** %_437
  %_442 = load i8*, i8** %_436
  %_441 = call i64 @length_of_string(i8* %_442)
  store i64 %_441, i64* %_440
  store i64 0, i64* %_443
  store i64 0, i64* %_444
  br label %_448
_448:
  %_445 = load i64, i64* %_444
  %_446 = load i64, i64* %_440
  %_447 = icmp slt i64 %_445, %_446
  br i1 %_447, label %_449, label %_450
_449:
  %_451 = load i64, i64* %_443
  %_452 = mul i64 %_451, 10
  store i64 %_452, i64* %_443
  %_455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_437
  %_456 = load i64, i64* %_444
  %_457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_455, i32 0, i32 1, i64 %_456
  %_458 = load i64, i64* %_457
  %_454 = call i64 @get_val(i64 %_458)
  store i64 %_454, i64* %_453
  %_459 = load i64, i64* %_443
  %_460 = load i64, i64* %_453
  %_461 = add i64 %_459, %_460
  store i64 %_461, i64* %_443
  %_462 = load i64, i64* %_444
  %_463 = add i64 %_462, 1
  store i64 %_463, i64* %_444
  br label %_448
_450:
  %_464 = load i64, i64* %_443
  ret i64 %_464
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_321 = alloca i64
  store i64 %argc, i64* %_321
  %_322 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_322
  %_323 = alloca i8*
  %_326 = alloca { i64, [0 x i64] }*
  %_328 = alloca i64
  %_335 = alloca i8*
  %_340 = alloca i1
  %_341 = alloca i64
  %_349 = alloca { i64, [0 x i64] }*
  %_359 = alloca i64
  %_364 = alloca i64
  %_381 = alloca i64
  %_386 = alloca i64
  %_403 = alloca i64
  %_408 = alloca i64
  %_423 = alloca i64
  %_325 = getelementptr [2 x i8], [2 x i8]* @_324, i32 0, i32 0
  store i8* %_325, i8** %_323
  %_327 = call { i64, [0 x i64] }* @new_stack()
  store { i64, [0 x i64] }* %_327, { i64, [0 x i64] }** %_326
  store i64 1, i64* %_328
  br label %_332
_332:
  %_329 = load i64, i64* %_328
  %_330 = load i64, i64* %_321
  %_331 = icmp slt i64 %_329, %_330
  br i1 %_331, label %_333, label %_334
_333:
  %_336 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_322
  %_337 = load i64, i64* %_328
  %_338 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_336, i32 0, i32 1, i64 %_337
  %_339 = load i8*, i8** %_338
  store i8* %_339, i8** %_335
  store i1 0, i1* %_340
  %_343 = load i8*, i8** %_335
  %_342 = call i64 @length_of_string(i8* %_343)
  store i64 %_342, i64* %_341
  %_344 = load i64, i64* %_341
  %_345 = icmp eq i64 %_344, 1
  br i1 %_345, label %_346, label %_347
_346:
  %_351 = load i8*, i8** %_335
  %_350 = call { i64, [0 x i64] }* @array_of_string(i8* %_351)
  store { i64, [0 x i64] }* %_350, { i64, [0 x i64] }** %_349
  store i1 1, i1* %_340
  %_352 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_349
  %_353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_352, i32 0, i32 1, i32 0
  %_354 = load i64, i64* %_353
  %_355 = icmp eq i64 %_354, 43
  br i1 %_355, label %_356, label %_357
_356:
  %_361 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_360 = call i64 @peek_stack({ i64, [0 x i64] }* %_361)
  store i64 %_360, i64* %_359
  %_363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_362 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_363)
  store { i64, [0 x i64] }* %_362, { i64, [0 x i64] }** %_326
  %_366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_365 = call i64 @peek_stack({ i64, [0 x i64] }* %_366)
  store i64 %_365, i64* %_364
  %_368 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_367 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_368)
  store { i64, [0 x i64] }* %_367, { i64, [0 x i64] }** %_326
  %_370 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_371 = load i64, i64* %_359
  %_372 = load i64, i64* %_364
  %_373 = add i64 %_371, %_372
  %_369 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_370, i64 %_373)
  store { i64, [0 x i64] }* %_369, { i64, [0 x i64] }** %_326
  br label %_358
_357:
  %_374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_349
  %_375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_374, i32 0, i32 1, i32 0
  %_376 = load i64, i64* %_375
  %_377 = icmp eq i64 %_376, 45
  br i1 %_377, label %_378, label %_379
_378:
  %_383 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_382 = call i64 @peek_stack({ i64, [0 x i64] }* %_383)
  store i64 %_382, i64* %_381
  %_385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_384 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_385)
  store { i64, [0 x i64] }* %_384, { i64, [0 x i64] }** %_326
  %_388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_387 = call i64 @peek_stack({ i64, [0 x i64] }* %_388)
  store i64 %_387, i64* %_386
  %_390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_389 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_390)
  store { i64, [0 x i64] }* %_389, { i64, [0 x i64] }** %_326
  %_392 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_393 = load i64, i64* %_381
  %_394 = load i64, i64* %_386
  %_395 = sub i64 %_393, %_394
  %_391 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_392, i64 %_395)
  store { i64, [0 x i64] }* %_391, { i64, [0 x i64] }** %_326
  br label %_380
_379:
  %_396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_349
  %_397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_396, i32 0, i32 1, i32 0
  %_398 = load i64, i64* %_397
  %_399 = icmp eq i64 %_398, 120
  br i1 %_399, label %_400, label %_401
_400:
  %_405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_404 = call i64 @peek_stack({ i64, [0 x i64] }* %_405)
  store i64 %_404, i64* %_403
  %_407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_406 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_407)
  store { i64, [0 x i64] }* %_406, { i64, [0 x i64] }** %_326
  %_410 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_409 = call i64 @peek_stack({ i64, [0 x i64] }* %_410)
  store i64 %_409, i64* %_408
  %_412 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_411 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_412)
  store { i64, [0 x i64] }* %_411, { i64, [0 x i64] }** %_326
  %_414 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_415 = load i64, i64* %_403
  %_416 = load i64, i64* %_408
  %_417 = mul i64 %_415, %_416
  %_413 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_414, i64 %_417)
  store { i64, [0 x i64] }* %_413, { i64, [0 x i64] }** %_326
  br label %_402
_401:
  store i1 0, i1* %_340
  br label %_402
_402:
  br label %_380
_380:
  br label %_358
_358:
  br label %_348
_347:
  br label %_348
_348:
  %_418 = load i1, i1* %_340
  %_419 = icmp eq i1 %_418, 0
  br i1 %_419, label %_420, label %_421
_420:
  %_425 = load i8*, i8** %_335
  %_424 = call i64 @int_of_string(i8* %_425)
  store i64 %_424, i64* %_423
  %_427 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_428 = load i64, i64* %_423
  %_426 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_427, i64 %_428)
  store { i64, [0 x i64] }* %_426, { i64, [0 x i64] }** %_326
  br label %_422
_421:
  br label %_422
_422:
  %_429 = load i64, i64* %_328
  %_430 = add i64 %_429, 1
  store i64 %_430, i64* %_328
  br label %_332
_334:
  %_433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_432 = call i64 @peek_stack({ i64, [0 x i64] }* %_433)
  call void @print_int(i64 %_432)
  %_435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_326
  %_434 = call i64 @peek_stack({ i64, [0 x i64] }* %_435)
  ret i64 %_434
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
