; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_425 = alloca i64
  store i64 %argc, i64* %_425
  %_426 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_426
  %_427 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_451 = alloca i64
  %_452 = alloca i64
  %_458 = alloca i64
  %_raw_array428 = call i64* @oat_alloc_array(i64 3)
  %_array429 = bitcast i64* %_raw_array428 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array444 = call i64* @oat_alloc_array(i64 4)
  %_array445 = bitcast i64* %_raw_array444 to { i64, [0 x i64] }*
  %_449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array445, i32 0, i32 1, i32 3
  store i64 11, i64* %_449
  %_448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array445, i32 0, i32 1, i32 2
  store i64 10, i64* %_448
  %_447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array445, i32 0, i32 1, i32 1
  store i64 9, i64* %_447
  %_446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array445, i32 0, i32 1, i32 0
  store i64 8, i64* %_446
  %_450 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array429, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array445, { i64, [0 x i64] }** %_450
  %_raw_array437 = call i64* @oat_alloc_array(i64 4)
  %_array438 = bitcast i64* %_raw_array437 to { i64, [0 x i64] }*
  %_442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array438, i32 0, i32 1, i32 3
  store i64 7, i64* %_442
  %_441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array438, i32 0, i32 1, i32 2
  store i64 6, i64* %_441
  %_440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array438, i32 0, i32 1, i32 1
  store i64 5, i64* %_440
  %_439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array438, i32 0, i32 1, i32 0
  store i64 4, i64* %_439
  %_443 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array429, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array438, { i64, [0 x i64] }** %_443
  %_raw_array430 = call i64* @oat_alloc_array(i64 4)
  %_array431 = bitcast i64* %_raw_array430 to { i64, [0 x i64] }*
  %_435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array431, i32 0, i32 1, i32 3
  store i64 3, i64* %_435
  %_434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array431, i32 0, i32 1, i32 2
  store i64 2, i64* %_434
  %_433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array431, i32 0, i32 1, i32 1
  store i64 1, i64* %_433
  %_432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array431, i32 0, i32 1, i32 0
  store i64 0, i64* %_432
  %_436 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array429, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array431, { i64, [0 x i64] }** %_436
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array429, { i64, [0 x { i64, [0 x i64] }*] }** %_427
  store i64 0, i64* %_451
  store i64 0, i64* %_452
  br label %_455
_455:
  %_453 = load i64, i64* %_452
  %_454 = icmp slt i64 %_453, 3
  br i1 %_454, label %_456, label %_457
_456:
  store i64 0, i64* %_458
  br label %_461
_461:
  %_459 = load i64, i64* %_458
  %_460 = icmp slt i64 %_459, 4
  br i1 %_460, label %_462, label %_463
_462:
  %_464 = load i64, i64* %_451
  %_465 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_427
  %_466 = load i64, i64* %_452
  %_467 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_465, i32 0, i32 1, i64 %_466
  %_468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_467
  %_469 = load i64, i64* %_458
  %_470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_468, i32 0, i32 1, i64 %_469
  %_471 = load i64, i64* %_470
  %_472 = add i64 %_464, %_471
  store i64 %_472, i64* %_451
  %_473 = load i64, i64* %_458
  %_474 = add i64 %_473, 1
  store i64 %_474, i64* %_458
  br label %_461
_463:
  %_475 = load i64, i64* %_452
  %_476 = add i64 %_475, 1
  store i64 %_476, i64* %_452
  br label %_455
_457:
  %_477 = load i64, i64* %_451
  ret i64 %_477
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
