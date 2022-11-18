; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_3454 = alloca i64
  store i64 %x, i64* %_3454
  %_3455 = load i64, i64* %_3454
  ret i64 %_3455
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_3450 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_3450
  %_3451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3450
  %_3452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3451, i32 0, i32 1, i32 2
  %_3453 = load i64, i64* %_3452
  ret i64 %_3453
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3397 = alloca i64
  store i64 %argc, i64* %_3397
  %_3398 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3398
  %_3399 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_3412 = alloca { i64, [0 x i64] }*
  %_3419 = alloca i64
  %_3420 = alloca i64
  %_raw_array3400 = call i64* @oat_alloc_array(i64 2)
  %_array3401 = bitcast i64* %_raw_array3400 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3407 = call i64* @oat_alloc_array(i64 2)
  %_array3408 = bitcast i64* %_raw_array3407 to { i64, [0 x i64] }*
  %_3410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3408, i32 0, i32 1, i32 1
  store i64 4, i64* %_3410
  %_3409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3408, i32 0, i32 1, i32 0
  store i64 3, i64* %_3409
  %_3411 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3401, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3408, { i64, [0 x i64] }** %_3411
  %_raw_array3402 = call i64* @oat_alloc_array(i64 2)
  %_array3403 = bitcast i64* %_raw_array3402 to { i64, [0 x i64] }*
  %_3405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3403, i32 0, i32 1, i32 1
  store i64 2, i64* %_3405
  %_3404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3403, i32 0, i32 1, i32 0
  store i64 1, i64* %_3404
  %_3406 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3401, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3403, { i64, [0 x i64] }** %_3406
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3401, { i64, [0 x { i64, [0 x i64] }*] }** %_3399
  %_raw_array3413 = call i64* @oat_alloc_array(i64 4)
  %_array3414 = bitcast i64* %_raw_array3413 to { i64, [0 x i64] }*
  %_3418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3414, i32 0, i32 1, i32 3
  store i64 4, i64* %_3418
  %_3417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3414, i32 0, i32 1, i32 2
  store i64 3, i64* %_3417
  %_3416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3414, i32 0, i32 1, i32 1
  store i64 2, i64* %_3416
  %_3415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3414, i32 0, i32 1, i32 0
  store i64 1, i64* %_3415
  store { i64, [0 x i64] }* %_array3414, { i64, [0 x i64] }** %_3412
  store i64 0, i64* %_3419
  store i64 0, i64* %_3420
  br label %_3423
_3423:
  %_3421 = load i64, i64* %_3420
  %_3422 = icmp slt i64 %_3421, 100
  br i1 %_3422, label %_3424, label %_3425
_3424:
  %_3426 = load i64, i64* %_3419
  %_3427 = add i64 %_3426, 1
  store i64 %_3427, i64* %_3419
  %_3428 = load i64, i64* %_3420
  %_3429 = add i64 %_3428, 1
  store i64 %_3429, i64* %_3420
  br label %_3423
_3425:
  %_3431 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3412
  %_3430 = call i64 @g({ i64, [0 x i64] }* %_3431)
  %_3433 = load i64, i64* @i
  %_3432 = call i64 @f(i64 %_3433)
  %_3434 = add i64 %_3430, %_3432
  %_3436 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3412
  %_3437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3436, i32 0, i32 1, i32 3
  %_3438 = load i64, i64* %_3437
  %_3435 = call i64 @f(i64 %_3438)
  %_3439 = add i64 %_3434, %_3435
  %_3441 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3399
  %_3442 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3441, i32 0, i32 1, i32 1
  %_3443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3442
  %_3444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3443, i32 0, i32 1, i32 1
  %_3445 = load i64, i64* %_3444
  %_3440 = call i64 @f(i64 %_3445)
  %_3446 = add i64 %_3439, %_3440
  %_3448 = load i64, i64* %_3419
  %_3447 = call i64 @f(i64 %_3448)
  %_3449 = add i64 %_3446, %_3447
  ret i64 %_3449
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
