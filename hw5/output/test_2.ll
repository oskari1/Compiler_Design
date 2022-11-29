; generated from: ./dbernhard/equality.oat
target triple = "x86_64-unknown-linux"
%Info = type { i64 }
%Point = type { %Info*, i64 }

@info = global %Info* @_global_struct7481
@_global_struct7481 = global %Info { i64 7 }
@info2 = global %Info* @_global_struct7480
@_global_struct7480 = global %Info { i64 7 }
@_str_arr7471 = global [10 x i8] c"are equal\00"
@_str_arr7474 = global [10 x i8] c"not equal\00"

define i64 @program(i64 %_argc7433, { i64, [0 x i8*] }* %_argv7431) {
  %_argc7434 = alloca i64
  %_argv7432 = alloca { i64, [0 x i8*] }*
  %_tmp_a7437 = alloca { i64, [0 x %Point*] }*
  %_i7438 = alloca i64
  %_p7459 = alloca { i64, [0 x %Point*] }*
  store i64 %_argc7433, i64* %_argc7434
  store { i64, [0 x i8*] }* %_argv7431, { i64, [0 x i8*] }** %_argv7432
  %_raw_array7435 = call i64* @oat_alloc_array(i64 3)
  %_array7436 = bitcast i64* %_raw_array7435 to { i64, [0 x %Point*] }*
  store { i64, [0 x %Point*] }* %_array7436, { i64, [0 x %Point*] }** %_tmp_a7437
  store i64 0, i64* %_i7438
  br label %_cond7446
_cond7446:
  %_i7439 = load i64, i64* %_i7438
  %__tmp_a74377440 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_tmp_a7437
  %_len_addr7441 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %__tmp_a74377440, i32 0, i32 0
  %_arr_len7442 = load i64, i64* %_len_addr7441
  %_bop7443 = icmp slt i64 %_i7439, %_arr_len7442
  br i1 %_bop7443, label %_body7445, label %_post7444
_body7445:
  %__tmp_a74377447 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_tmp_a7437
  %_i7448 = load i64, i64* %_i7438
  %_ans7451 = bitcast { i64, [0 x %Point*] }* %__tmp_a74377447 to i64*
  call void @oat_assert_array_length(i64* %_ans7451, i64 %_i7448)
  %_index_ptr7450 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %__tmp_a74377447, i32 0, i32 1, i64 %_i7448
  %_raw_array7452 = call i64* @oat_malloc(i64 16)
  %_array7453 = bitcast i64* %_raw_array7452 to %Point*
  %_info7454 = load %Info*, %Info** @info
  %_ind7455 = getelementptr %Point, %Point* %_array7453, i32 0, i32 0
  store %Info* %_info7454, %Info** %_ind7455
  %_ind7456 = getelementptr %Point, %Point* %_array7453, i32 0, i32 1
  store i64 0, i64* %_ind7456
  store %Point* %_array7453, %Point** %_index_ptr7450
  %_i7457 = load i64, i64* %_i7438
  %_bop7458 = add i64 %_i7457, 1
  store i64 %_bop7458, i64* %_i7438
  br label %_cond7446
_post7444:
  store { i64, [0 x %Point*] }* %_array7436, { i64, [0 x %Point*] }** %_p7459
  %_p7460 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_p7459
  %_ans7463 = bitcast { i64, [0 x %Point*] }* %_p7460 to i64*
  call void @oat_assert_array_length(i64* %_ans7463, i64 1)
  %_index_ptr7462 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_p7460, i32 0, i32 1, i32 1
  %_index7464 = load %Point*, %Point** %_index_ptr7462
  %_p7465 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_p7459
  %_ans7468 = bitcast { i64, [0 x %Point*] }* %_p7465 to i64*
  call void @oat_assert_array_length(i64* %_ans7468, i64 0)
  %_index_ptr7467 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_p7465, i32 0, i32 1, i32 0
  %_index7469 = load %Point*, %Point** %_index_ptr7467
  %_result7470 = call i1 @are_equal(%Point* %_index7469, %Point* %_index7464)
  br i1 %_result7470, label %_then7479, label %_else7478
_then7479:
  %_str7472 = getelementptr [10 x i8], [10 x i8]* @_str_arr7471, i32 0, i32 0
  call void @print_string(i8* %_str7472)
  br label %_merge7477
_else7478:
  %_str7475 = getelementptr [10 x i8], [10 x i8]* @_str_arr7474, i32 0, i32 0
  call void @print_string(i8* %_str7475)
  br label %_merge7477
_merge7477:
  ret i64 0
}

define i1 @are_equal(%Point* %_p17412, %Point* %_p27410) {
  %_p17413 = alloca %Point*
  %_p27411 = alloca %Point*
  store %Point* %_p17412, %Point** %_p17413
  store %Point* %_p27410, %Point** %_p27411
  %_p17414 = load %Point*, %Point** %_p17413
  %_index_ptr7415 = getelementptr %Point, %Point* %_p17414, i32 0, i32 0
  %_proj7416 = load %Info*, %Info** %_index_ptr7415
  %_cast7417 = bitcast %Info* %_proj7416 to i64
  %_p27418 = load %Point*, %Point** %_p27411
  %_index_ptr7419 = getelementptr %Point, %Point* %_p27418, i32 0, i32 0
  %_proj7420 = load %Info*, %Info** %_index_ptr7419
  %_cast7421 = bitcast %Info* %_proj7420 to i64
  %_bop7422 = icmp eq i64 %_cast7417, %_cast7421
  %_p17423 = load %Point*, %Point** %_p17413
  %_index_ptr7424 = getelementptr %Point, %Point* %_p17423, i32 0, i32 1
  %_proj7425 = load i64, i64* %_index_ptr7424
  %_p27426 = load %Point*, %Point** %_p27411
  %_index_ptr7427 = getelementptr %Point, %Point* %_p27426, i32 0, i32 1
  %_proj7428 = load i64, i64* %_index_ptr7427
  %_bop7429 = icmp eq i64 %_proj7425, %_proj7428
  %_bop7430 = and i1 %_bop7422, %_bop7429
  ret i1 %_bop7430
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
