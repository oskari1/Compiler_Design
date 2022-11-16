; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_478 = alloca i64
  store i64 %argc, i64* %_478
  %_479 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_479
  %_503 = alloca i64
  %_504 = alloca i64
  %_510 = alloca i64
  %_raw_array480 = call i64* @oat_alloc_array(i64 3)
  %_array481 = bitcast i64* %_raw_array480 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array496 = call i64* @oat_alloc_array(i64 4)
  %_array497 = bitcast i64* %_raw_array496 to { i64, [0 x i64] }*
  %_501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array497, i32 0, i32 1, i32 3
  store i64 11, i64* %_501
  %_500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array497, i32 0, i32 1, i32 2
  store i64 10, i64* %_500
  %_499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array497, i32 0, i32 1, i32 1
  store i64 9, i64* %_499
  %_498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array497, i32 0, i32 1, i32 0
  store i64 8, i64* %_498
  %_502 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array481, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array497, { i64, [0 x i64] }** %_502
  %_raw_array489 = call i64* @oat_alloc_array(i64 4)
  %_array490 = bitcast i64* %_raw_array489 to { i64, [0 x i64] }*
  %_494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array490, i32 0, i32 1, i32 3
  store i64 7, i64* %_494
  %_493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array490, i32 0, i32 1, i32 2
  store i64 6, i64* %_493
  %_492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array490, i32 0, i32 1, i32 1
  store i64 5, i64* %_492
  %_491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array490, i32 0, i32 1, i32 0
  store i64 4, i64* %_491
  %_495 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array481, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array490, { i64, [0 x i64] }** %_495
  %_raw_array482 = call i64* @oat_alloc_array(i64 4)
  %_array483 = bitcast i64* %_raw_array482 to { i64, [0 x i64] }*
  %_487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array483, i32 0, i32 1, i32 3
  store i64 3, i64* %_487
  %_486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array483, i32 0, i32 1, i32 2
  store i64 2, i64* %_486
  %_485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array483, i32 0, i32 1, i32 1
  store i64 1, i64* %_485
  %_484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array483, i32 0, i32 1, i32 0
  store i64 0, i64* %_484
  %_488 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array481, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array483, { i64, [0 x i64] }** %_488
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array481, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_503
  store i64 0, i64* %_504
  br label %_507
_507:
  %_505 = load i64, i64* %_504
  %_506 = icmp slt i64 %_505, 3
  br i1 %_506, label %_508, label %_509
_508:
  store i64 0, i64* %_510
  br label %_513
_513:
  %_511 = load i64, i64* %_510
  %_512 = icmp slt i64 %_511, 4
  br i1 %_512, label %_514, label %_515
_514:
  %_516 = load i64, i64* %_503
  %_517 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_518 = load i64, i64* %_504
  %_519 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_517, i32 0, i32 1, i64 %_518
  %_520 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_519
  %_521 = load i64, i64* %_510
  %_522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_520, i32 0, i32 1, i64 %_521
  %_523 = load i64, i64* %_522
  %_524 = add i64 %_516, %_523
  store i64 %_524, i64* %_503
  %_525 = load i64, i64* %_510
  %_526 = add i64 %_525, 1
  store i64 %_526, i64* %_510
  br label %_513
_515:
  %_527 = load i64, i64* %_504
  %_528 = add i64 %_527, 1
  store i64 %_528, i64* %_504
  br label %_507
_509:
  %_529 = load i64, i64* %_503
  ret i64 %_529
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
