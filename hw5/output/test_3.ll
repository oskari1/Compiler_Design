; generated from: ./dbernhard/non_equality.oat
target triple = "x86_64-unknown-linux"
%Info = type { i64 }
%Point = type { %Info*, i64 }

@info = global %Info* @_global_struct7582
@_global_struct7582 = global %Info { i64 7 }
@info2 = global %Info* @_global_struct7581
@_global_struct7581 = global %Info { i64 7 }
@_str_arr7572 = global [10 x i8] c"are equal\00"
@_str_arr7575 = global [10 x i8] c"not equal\00"

define i64 @program(i64 %_argc7527, { i64, [0 x i8*] }* %_argv7525) {
  %_argc7528 = alloca i64
  %_argv7526 = alloca { i64, [0 x i8*] }*
  %_tmp_a7531 = alloca { i64, [0 x %Point*] }*
  %_i7532 = alloca i64
  %_p7553 = alloca { i64, [0 x %Point*] }*
  store i64 %_argc7527, i64* %_argc7528
  store { i64, [0 x i8*] }* %_argv7525, { i64, [0 x i8*] }** %_argv7526
  %_raw_array7529 = call i64* @oat_alloc_array(i64 3)
  %_array7530 = bitcast i64* %_raw_array7529 to { i64, [0 x %Point*] }*
  store { i64, [0 x %Point*] }* %_array7530, { i64, [0 x %Point*] }** %_tmp_a7531
  store i64 0, i64* %_i7532
  br label %_cond7540
_cond7540:
  %_i7533 = load i64, i64* %_i7532
  %__tmp_a75317534 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_tmp_a7531
  %_len_addr7535 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %__tmp_a75317534, i32 0, i32 0
  %_arr_len7536 = load i64, i64* %_len_addr7535
  %_bop7537 = icmp slt i64 %_i7533, %_arr_len7536
  br i1 %_bop7537, label %_body7539, label %_post7538
_body7539:
  %__tmp_a75317541 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_tmp_a7531
  %_i7542 = load i64, i64* %_i7532
  %_ans7545 = bitcast { i64, [0 x %Point*] }* %__tmp_a75317541 to i64*
  call void @oat_assert_array_length(i64* %_ans7545, i64 %_i7542)
  %_index_ptr7544 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %__tmp_a75317541, i32 0, i32 1, i64 %_i7542
  %_raw_array7546 = call i64* @oat_malloc(i64 16)
  %_array7547 = bitcast i64* %_raw_array7546 to %Point*
  %_info7548 = load %Info*, %Info** @info
  %_ind7549 = getelementptr %Point, %Point* %_array7547, i32 0, i32 0
  store %Info* %_info7548, %Info** %_ind7549
  %_ind7550 = getelementptr %Point, %Point* %_array7547, i32 0, i32 1
  store i64 0, i64* %_ind7550
  store %Point* %_array7547, %Point** %_index_ptr7544
  %_i7551 = load i64, i64* %_i7532
  %_bop7552 = add i64 %_i7551, 1
  store i64 %_bop7552, i64* %_i7532
  br label %_cond7540
_post7538:
  store { i64, [0 x %Point*] }* %_array7530, { i64, [0 x %Point*] }** %_p7553
  %_p7554 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_p7553
  %_ans7557 = bitcast { i64, [0 x %Point*] }* %_p7554 to i64*
  call void @oat_assert_array_length(i64* %_ans7557, i64 0)
  %_index_ptr7556 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_p7554, i32 0, i32 1, i32 0
  %_index7558 = load %Point*, %Point** %_index_ptr7556
  %_index_ptr7559 = getelementptr %Point, %Point* %_index7558, i32 0, i32 0
  %_info27560 = load %Info*, %Info** @info2
  store %Info* %_info27560, %Info** %_index_ptr7559
  %_p7561 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_p7553
  %_ans7564 = bitcast { i64, [0 x %Point*] }* %_p7561 to i64*
  call void @oat_assert_array_length(i64* %_ans7564, i64 1)
  %_index_ptr7563 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_p7561, i32 0, i32 1, i32 1
  %_index7565 = load %Point*, %Point** %_index_ptr7563
  %_p7566 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_p7553
  %_ans7569 = bitcast { i64, [0 x %Point*] }* %_p7566 to i64*
  call void @oat_assert_array_length(i64* %_ans7569, i64 0)
  %_index_ptr7568 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_p7566, i32 0, i32 1, i32 0
  %_index7570 = load %Point*, %Point** %_index_ptr7568
  %_result7571 = call i1 @are_equal(%Point* %_index7570, %Point* %_index7565)
  br i1 %_result7571, label %_then7580, label %_else7579
_then7580:
  %_str7573 = getelementptr [10 x i8], [10 x i8]* @_str_arr7572, i32 0, i32 0
  call void @print_string(i8* %_str7573)
  br label %_merge7578
_else7579:
  %_str7576 = getelementptr [10 x i8], [10 x i8]* @_str_arr7575, i32 0, i32 0
  call void @print_string(i8* %_str7576)
  br label %_merge7578
_merge7578:
  ret i64 0
}

define i1 @are_equal(%Point* %_p17506, %Point* %_p27504) {
  %_p17507 = alloca %Point*
  %_p27505 = alloca %Point*
  store %Point* %_p17506, %Point** %_p17507
  store %Point* %_p27504, %Point** %_p27505
  %_p17508 = load %Point*, %Point** %_p17507
  %_index_ptr7509 = getelementptr %Point, %Point* %_p17508, i32 0, i32 0
  %_proj7510 = load %Info*, %Info** %_index_ptr7509
  %_cast7511 = bitcast %Info* %_proj7510 to i64
  %_p27512 = load %Point*, %Point** %_p27505
  %_index_ptr7513 = getelementptr %Point, %Point* %_p27512, i32 0, i32 0
  %_proj7514 = load %Info*, %Info** %_index_ptr7513
  %_cast7515 = bitcast %Info* %_proj7514 to i64
  %_bop7516 = icmp eq i64 %_cast7511, %_cast7515
  %_p17517 = load %Point*, %Point** %_p17507
  %_index_ptr7518 = getelementptr %Point, %Point* %_p17517, i32 0, i32 1
  %_proj7519 = load i64, i64* %_index_ptr7518
  %_p27520 = load %Point*, %Point** %_p27505
  %_index_ptr7521 = getelementptr %Point, %Point* %_p27520, i32 0, i32 1
  %_proj7522 = load i64, i64* %_index_ptr7521
  %_bop7523 = icmp eq i64 %_proj7519, %_proj7522
  %_bop7524 = and i1 %_bop7516, %_bop7523
  ret i1 %_bop7524
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
