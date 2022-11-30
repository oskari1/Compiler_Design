; generated from: ./dbernhard/equality.oat
target triple = "x86_64-unknown-linux"
%Info = type { i64 }
%Point = type { %Info*, i64 }

@info = global %Info* @_global_struct7503
@_global_struct7503 = global %Info { i64 7 }
@info2 = global %Info* @_global_struct7502
@_global_struct7502 = global %Info { i64 7 }
@_str_arr7493 = global [10 x i8] c"are equal\00"
@_str_arr7496 = global [10 x i8] c"not equal\00"

define i64 @program(i64 %_argc7455, { i64, [0 x i8*] }* %_argv7453) {
  %_argc7456 = alloca i64
  %_argv7454 = alloca { i64, [0 x i8*] }*
  %_tmp_a7459 = alloca { i64, [0 x %Point*] }*
  %_i7460 = alloca i64
  %_p7481 = alloca { i64, [0 x %Point*] }*
  store i64 %_argc7455, i64* %_argc7456
  store { i64, [0 x i8*] }* %_argv7453, { i64, [0 x i8*] }** %_argv7454
  %_raw_array7457 = call i64* @oat_alloc_array(i64 3)
  %_array7458 = bitcast i64* %_raw_array7457 to { i64, [0 x %Point*] }*
  store { i64, [0 x %Point*] }* %_array7458, { i64, [0 x %Point*] }** %_tmp_a7459
  store i64 0, i64* %_i7460
  br label %_cond7468
_cond7468:
  %_i7461 = load i64, i64* %_i7460
  %__tmp_a74597462 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_tmp_a7459
  %_len_addr7463 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %__tmp_a74597462, i32 0, i32 0
  %_arr_len7464 = load i64, i64* %_len_addr7463
  %_bop7465 = icmp slt i64 %_i7461, %_arr_len7464
  br i1 %_bop7465, label %_body7467, label %_post7466
_body7467:
  %__tmp_a74597469 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_tmp_a7459
  %_i7470 = load i64, i64* %_i7460
  %_ans7473 = bitcast { i64, [0 x %Point*] }* %__tmp_a74597469 to i64*
  call void @oat_assert_array_length(i64* %_ans7473, i64 %_i7470)
  %_index_ptr7472 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %__tmp_a74597469, i32 0, i32 1, i64 %_i7470
  %_raw_array7474 = call i64* @oat_malloc(i64 16)
  %_array7475 = bitcast i64* %_raw_array7474 to %Point*
  %_info7476 = load %Info*, %Info** @info
  %_ind7477 = getelementptr %Point, %Point* %_array7475, i32 0, i32 0
  store %Info* %_info7476, %Info** %_ind7477
  %_ind7478 = getelementptr %Point, %Point* %_array7475, i32 0, i32 1
  store i64 0, i64* %_ind7478
  store %Point* %_array7475, %Point** %_index_ptr7472
  %_i7479 = load i64, i64* %_i7460
  %_bop7480 = add i64 %_i7479, 1
  store i64 %_bop7480, i64* %_i7460
  br label %_cond7468
_post7466:
  store { i64, [0 x %Point*] }* %_array7458, { i64, [0 x %Point*] }** %_p7481
  %_p7482 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_p7481
  %_ans7485 = bitcast { i64, [0 x %Point*] }* %_p7482 to i64*
  call void @oat_assert_array_length(i64* %_ans7485, i64 1)
  %_index_ptr7484 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_p7482, i32 0, i32 1, i32 1
  %_index7486 = load %Point*, %Point** %_index_ptr7484
  %_p7487 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** %_p7481
  %_ans7490 = bitcast { i64, [0 x %Point*] }* %_p7487 to i64*
  call void @oat_assert_array_length(i64* %_ans7490, i64 0)
  %_index_ptr7489 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_p7487, i32 0, i32 1, i32 0
  %_index7491 = load %Point*, %Point** %_index_ptr7489
  %_result7492 = call i1 @are_equal(%Point* %_index7491, %Point* %_index7486)
  br i1 %_result7492, label %_then7501, label %_else7500
_then7501:
  %_str7494 = getelementptr [10 x i8], [10 x i8]* @_str_arr7493, i32 0, i32 0
  call void @print_string(i8* %_str7494)
  br label %_merge7499
_else7500:
  %_str7497 = getelementptr [10 x i8], [10 x i8]* @_str_arr7496, i32 0, i32 0
  call void @print_string(i8* %_str7497)
  br label %_merge7499
_merge7499:
  ret i64 0
}

define i1 @are_equal(%Point* %_p17434, %Point* %_p27432) {
  %_p17435 = alloca %Point*
  %_p27433 = alloca %Point*
  store %Point* %_p17434, %Point** %_p17435
  store %Point* %_p27432, %Point** %_p27433
  %_p17436 = load %Point*, %Point** %_p17435
  %_index_ptr7437 = getelementptr %Point, %Point* %_p17436, i32 0, i32 0
  %_proj7438 = load %Info*, %Info** %_index_ptr7437
  %_cast7439 = bitcast %Info* %_proj7438 to i64
  %_p27440 = load %Point*, %Point** %_p27433
  %_index_ptr7441 = getelementptr %Point, %Point* %_p27440, i32 0, i32 0
  %_proj7442 = load %Info*, %Info** %_index_ptr7441
  %_cast7443 = bitcast %Info* %_proj7442 to i64
  %_bop7444 = icmp eq i64 %_cast7439, %_cast7443
  %_p17445 = load %Point*, %Point** %_p17435
  %_index_ptr7446 = getelementptr %Point, %Point* %_p17445, i32 0, i32 1
  %_proj7447 = load i64, i64* %_index_ptr7446
  %_p27448 = load %Point*, %Point** %_p27433
  %_index_ptr7449 = getelementptr %Point, %Point* %_p27448, i32 0, i32 1
  %_proj7450 = load i64, i64* %_index_ptr7449
  %_bop7451 = icmp eq i64 %_proj7447, %_proj7450
  %_bop7452 = and i1 %_bop7444, %_bop7451
  ret i1 %_bop7452
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
