; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_409 = alloca i64
  store i64 %argc, i64* %_409
  %_410 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_410
  %_411 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_420 = alloca i64
  %_421 = alloca i64
  %_427 = alloca i64
  %_raw_array412 = call i64* @oat_alloc_array(i64 3)
  %_array413 = bitcast i64* %_raw_array412 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array418 = call i64* @oat_alloc_array(i64 4)
  %_array419 = bitcast i64* %_raw_array418 to { i64, [0 x i64] }*
  %_raw_array416 = call i64* @oat_alloc_array(i64 4)
  %_array417 = bitcast i64* %_raw_array416 to { i64, [0 x i64] }*
  %_raw_array414 = call i64* @oat_alloc_array(i64 4)
  %_array415 = bitcast i64* %_raw_array414 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array413, { i64, [0 x { i64, [0 x i64] }*] }** %_411
  store i64 0, i64* %_420
  store i64 0, i64* %_421
  br label %_424
_424:
  %_422 = load i64, i64* %_421
  %_423 = icmp slt i64 %_422, 3
  br i1 %_423, label %_425, label %_426
_425:
  store i64 0, i64* %_427
  br label %_430
_430:
  %_428 = load i64, i64* %_427
  %_429 = icmp slt i64 %_428, 4
  br i1 %_429, label %_431, label %_432
_431:
  %_433 = load i64, i64* %_420
  %_434 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_411
  %_435 = load i64, i64* %_421
  %_436 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_434, i32 0, i32 1, i64 %_435
  %_437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_436
  %_438 = load i64, i64* %_427
  %_439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_437, i32 0, i32 1, i64 %_438
  %_440 = load i64, i64* %_439
  %_441 = add i64 %_433, %_440
  store i64 %_441, i64* %_420
  %_442 = load i64, i64* %_427
  %_443 = add i64 %_442, 1
  store i64 %_443, i64* %_427
  br label %_430
_432:
  %_444 = load i64, i64* %_421
  %_445 = add i64 %_444, 1
  store i64 %_445, i64* %_421
  br label %_424
_426:
  %_446 = load i64, i64* %_420
  ret i64 %_446
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
