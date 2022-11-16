; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_447 = alloca i64
  store i64 %argc, i64* %_447
  %_448 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_448
  %_457 = alloca i64
  %_458 = alloca i64
  %_464 = alloca i64
  %_raw_array449 = call i64* @oat_alloc_array(i64 3)
  %_array450 = bitcast i64* %_raw_array449 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array455 = call i64* @oat_alloc_array(i64 4)
  %_array456 = bitcast i64* %_raw_array455 to { i64, [0 x i64] }*
  %_raw_array453 = call i64* @oat_alloc_array(i64 4)
  %_array454 = bitcast i64* %_raw_array453 to { i64, [0 x i64] }*
  %_raw_array451 = call i64* @oat_alloc_array(i64 4)
  %_array452 = bitcast i64* %_raw_array451 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array450, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_457
  store i64 0, i64* %_458
  br label %_461
_461:
  %_459 = load i64, i64* %_458
  %_460 = icmp slt i64 %_459, 3
  br i1 %_460, label %_462, label %_463
_462:
  store i64 0, i64* %_464
  br label %_467
_467:
  %_465 = load i64, i64* %_464
  %_466 = icmp slt i64 %_465, 4
  br i1 %_466, label %_468, label %_469
_468:
  %_470 = load i64, i64* %_457
  %_471 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_472 = load i64, i64* %_458
  %_473 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_471, i32 0, i32 1, i64 %_472
  %_474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_473
  %_475 = load i64, i64* %_464
  %_476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_474, i32 0, i32 1, i64 %_475
  %_477 = load i64, i64* %_476
  %_478 = add i64 %_470, %_477
  store i64 %_478, i64* %_457
  %_479 = load i64, i64* %_464
  %_480 = add i64 %_479, 1
  store i64 %_480, i64* %_464
  br label %_467
_469:
  %_481 = load i64, i64* %_458
  %_482 = add i64 %_481, 1
  store i64 %_482, i64* %_458
  br label %_461
_463:
  %_483 = load i64, i64* %_457
  ret i64 %_483
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
