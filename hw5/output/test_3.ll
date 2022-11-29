; generated from: ./dbernhard/non_equality.oat
target triple = "x86_64-unknown-linux"
%Info = type { i64 }
%Point = type { %Info*, i64 }

@info = global %Info* @_global_struct7560
@_global_struct7560 = global %Info { i64 7 }
@info2 = global %Info* @_global_struct7559
@_global_struct7559 = global %Info { i64 7 }
@_str_arr7550 = global [10 x i8] c"are equal\00"
@_str_arr7553 = global [10 x i8] c"not equal\00"

define i64 @program(i64 %_argc7505, { i64, [0 x i8*] }* %_argv7503) {
  %_argc7506 = alloca i64
  %_argv7504 = alloca { i64, [0 x i8*] }*
  %_tmp_a7509 = alloca { i64, [0 x %Point*] }*
  %_i7510 = alloca i64
  %_p7531 = alloca { i64, [0 x %Point*] }*
  store i64 %_argc7505, i64* %_argc7506
  store { i64, [0 x i8*] }* %_argv7503, { i64, [0 x i8*] }** %_argv7504
  %_raw_array7507 = call i64* @oat_alloc_array(i64 3)
  %_array7508 = bitcast i64* %_raw_array7507 to { i64, [0 x %Point*] }*
  store { i64, [0 x %Point*] }* %_array7508, { i64, [0 x %Point*] }** %_tmp_a7509
  store i64 0, i64* %_i7510
  br label %_cond7518
_cond7518:
  %_i7511 = load i64, i64* %_i7510
  %__tmp_a75097512 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_tmp_a7509
  %_len_addr7513 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %__tmp_a75097512, i32 0, i32 0
  %_arr_len7514 = load i64, i64* %_len_addr7513
  %_bop7515 = icmp slt i64 %_i7511, %_arr_len7514
  br i1 %_bop7515, label %_body7517, label %_post7516
_body7517:
  %__tmp_a75097519 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_tmp_a7509
  %_i7520 = load i64, i64* %_i7510
  %_ans7523 = bitcast { i64, [0 x %Point*] }* %__tmp_a75097519 to i64*
  call void @oat_assert_array_length(i64* %_ans7523, i64 %_i7520)
  %_index_ptr7522 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %__tmp_a75097519, i32 0, i32 1, i64 %_i7520
  %_raw_array7524 = call i64* @oat_malloc(i64 16)
  %_array7525 = bitcast i64* %_raw_array7524 to %Point*
  %_info7526 = load %Info*, %Info** @info
  %_ind7527 = getelementptr %Point, %Point* %_array7525, i32 0, i32 0
  store %Info* %_info7526, %Info** %_ind7527
  %_ind7528 = getelementptr %Point, %Point* %_array7525, i32 0, i32 1
  store i64 0, i64* %_ind7528
  store %Point* %_array7525, %Point** %_index_ptr7522
  %_i7529 = load i64, i64* %_i7510
  %_bop7530 = add i64 %_i7529, 1
  store i64 %_bop7530, i64* %_i7510
  br label %_cond7518
_post7516:
  store { i64, [0 x %Point*] }* %_array7508, { i64, [0 x %Point*] }** %_p7531
  %_p7532 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_p7531
  %_ans7535 = bitcast { i64, [0 x %Point*] }* %_p7532 to i64*
  call void @oat_assert_array_length(i64* %_ans7535, i64 0)
  %_index_ptr7534 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_p7532, i32 0, i32 1, i32 0
  %_index7536 = load %Point*, %Point** %_index_ptr7534
  %_index_ptr7537 = getelementptr %Point, %Point* %_index7536, i32 0, i32 0
  %_info27538 = load %Info*, %Info** @info2
  store %Info* %_info27538, %Info** %_index_ptr7537
  %_p7539 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_p7531
  %_ans7542 = bitcast { i64, [0 x %Point*] }* %_p7539 to i64*
  call void @oat_assert_array_length(i64* %_ans7542, i64 1)
  %_index_ptr7541 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_p7539, i32 0, i32 1, i32 1
  %_index7543 = load %Point*, %Point** %_index_ptr7541
  %_p7544 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_p7531
  %_ans7547 = bitcast { i64, [0 x %Point*] }* %_p7544 to i64*
  call void @oat_assert_array_length(i64* %_ans7547, i64 0)
  %_index_ptr7546 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_p7544, i32 0, i32 1, i32 0
  %_index7548 = load %Point*, %Point** %_index_ptr7546
  %_result7549 = call i1 @are_equal(%Point* %_index7548, %Point* %_index7543)
  br i1 %_result7549, label %_then7558, label %_else7557
_then7558:
  %_str7551 = getelementptr [10 x i8], [10 x i8]* @_str_arr7550, i32 0, i32 0
  call void @print_string(i8* %_str7551)
  br label %_merge7556
_else7557:
  %_str7554 = getelementptr [10 x i8], [10 x i8]* @_str_arr7553, i32 0, i32 0
  call void @print_string(i8* %_str7554)
  br label %_merge7556
_merge7556:
  ret i64 0
}

define i1 @are_equal(%Point* %_p17484, %Point* %_p27482) {
  %_p17485 = alloca %Point*
  %_p27483 = alloca %Point*
  store %Point* %_p17484, %Point** %_p17485
  store %Point* %_p27482, %Point** %_p27483
  %_p17486 = load %Point*, %Point** %_p17485
  %_index_ptr7487 = getelementptr %Point, %Point* %_p17486, i32 0, i32 0
  %_proj7488 = load %Info*, %Info** %_index_ptr7487
  %_cast7489 = bitcast %Info* %_proj7488 to i64
  %_p27490 = load %Point*, %Point** %_p27483
  %_index_ptr7491 = getelementptr %Point, %Point* %_p27490, i32 0, i32 0
  %_proj7492 = load %Info*, %Info** %_index_ptr7491
  %_cast7493 = bitcast %Info* %_proj7492 to i64
  %_bop7494 = icmp eq i64 %_cast7489, %_cast7493
  %_p17495 = load %Point*, %Point** %_p17485
  %_index_ptr7496 = getelementptr %Point, %Point* %_p17495, i32 0, i32 1
  %_proj7497 = load i64, i64* %_index_ptr7496
  %_p27498 = load %Point*, %Point** %_p27483
  %_index_ptr7499 = getelementptr %Point, %Point* %_p27498, i32 0, i32 1
  %_proj7500 = load i64, i64* %_index_ptr7499
  %_bop7501 = icmp eq i64 %_proj7497, %_proj7500
  %_bop7502 = and i1 %_bop7494, %_bop7501
  ret i1 %_bop7502
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
