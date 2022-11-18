; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3539 = alloca i64
  store i64 %argc, i64* %_3539
  %_3540 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3540
  %_raw_array3541 = call i64* @oat_alloc_array(i64 3)
  %_array3542 = bitcast i64* %_raw_array3541 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array3563 = call i64* @oat_alloc_array(i64 2)
  %_array3564 = bitcast i64* %_raw_array3563 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3570 = call i64* @oat_alloc_array(i64 2)
  %_array3571 = bitcast i64* %_raw_array3570 to { i64, [0 x i64] }*
  %_3573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3571, i32 0, i32 1, i32 1
  store i64 40, i64* %_3573
  %_3572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3571, i32 0, i32 1, i32 0
  store i64 30, i64* %_3572
  %_3574 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3564, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3571, { i64, [0 x i64] }** %_3574
  %_raw_array3565 = call i64* @oat_alloc_array(i64 2)
  %_array3566 = bitcast i64* %_raw_array3565 to { i64, [0 x i64] }*
  %_3568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3566, i32 0, i32 1, i32 1
  store i64 20, i64* %_3568
  %_3567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3566, i32 0, i32 1, i32 0
  store i64 10, i64* %_3567
  %_3569 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3564, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3566, { i64, [0 x i64] }** %_3569
  %_3575 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array3542, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3564, { i64, [0 x { i64, [0 x i64] }*] }** %_3575
  %_raw_array3556 = call i64* @oat_alloc_array(i64 1)
  %_array3557 = bitcast i64* %_raw_array3556 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3558 = call i64* @oat_alloc_array(i64 1)
  %_array3559 = bitcast i64* %_raw_array3558 to { i64, [0 x i64] }*
  %_3560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3559, i32 0, i32 1, i32 0
  store i64 5, i64* %_3560
  %_3561 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3557, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3559, { i64, [0 x i64] }** %_3561
  %_3562 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array3542, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3557, { i64, [0 x { i64, [0 x i64] }*] }** %_3562
  %_raw_array3543 = call i64* @oat_alloc_array(i64 2)
  %_array3544 = bitcast i64* %_raw_array3543 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3550 = call i64* @oat_alloc_array(i64 2)
  %_array3551 = bitcast i64* %_raw_array3550 to { i64, [0 x i64] }*
  %_3553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3551, i32 0, i32 1, i32 1
  store i64 4, i64* %_3553
  %_3552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3551, i32 0, i32 1, i32 0
  store i64 3, i64* %_3552
  %_3554 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3544, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3551, { i64, [0 x i64] }** %_3554
  %_raw_array3545 = call i64* @oat_alloc_array(i64 2)
  %_array3546 = bitcast i64* %_raw_array3545 to { i64, [0 x i64] }*
  %_3548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3546, i32 0, i32 1, i32 1
  store i64 2, i64* %_3548
  %_3547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3546, i32 0, i32 1, i32 0
  store i64 1, i64* %_3547
  %_3549 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3544, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3546, { i64, [0 x i64] }** %_3549
  %_3555 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array3542, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3544, { i64, [0 x { i64, [0 x i64] }*] }** %_3555
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array3542, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_3576 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_3577 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_3576, i32 0, i32 1, i32 2
  %_3578 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3577
  %_3579 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3578, i32 0, i32 1, i32 0
  %_3580 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3579
  %_3581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3580, i32 0, i32 1, i32 1
  %_3582 = load i64, i64* %_3581
  ret i64 %_3582
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
