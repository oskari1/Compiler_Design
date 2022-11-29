; generated from: ./dbernhard_hw4/advanced_add.oat
target triple = "x86_64-unknown-linux"
@mat_1 = global { i64, [3 x { i64, [0 x i64] }*] }* @_global_arr7038
@_global_arr7038 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [3 x i64] }* @_global_arr7037, { i64, [3 x i64] }* @_global_arr7036, { i64, [3 x i64] }* @_global_arr7035 ] }
@_global_arr7037 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 4, i64 3 ] }
@_global_arr7036 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 9, i64 1, i64 2 ] }
@_global_arr7035 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 2, i64 0, i64 1 ] }

define { i64, [0 x i64] }* @get() {
  %_mat_17030 = load { i64, [3 x { i64, [0 x i64] }*] }*, { i64, [3 x { i64, [0 x i64] }*] }** @mat_1
  %_ans7033 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_mat_17030 to i64*
  call void @oat_assert_array_length(i64* %_ans7033, i64 0)
  %_index_ptr7032 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_mat_17030, i32 0, i32 1, i32 0
  %_index7034 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr7032
  ret { i64, [0 x i64] }* %_index7034
}

define i64 @program(i64 %_argc7001, { i64, [0 x i8*] }* %_args6999) {
  %_argc7002 = alloca i64
  %_args7000 = alloca { i64, [0 x i8*] }*
  %_x7028 = alloca i64
  store i64 %_argc7001, i64* %_argc7002
  store { i64, [0 x i8*] }* %_args6999, { i64, [0 x i8*] }** %_args7000
  %_mat_17003 = load { i64, [3 x { i64, [0 x i64] }*] }*, { i64, [3 x { i64, [0 x i64] }*] }** @mat_1
  %_ans7006 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_mat_17003 to i64*
  call void @oat_assert_array_length(i64* %_ans7006, i64 1)
  %_index_ptr7005 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_mat_17003, i32 0, i32 1, i32 1
  %_index7007 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr7005
  %_ans7010 = bitcast { i64, [0 x i64] }* %_index7007 to i64*
  call void @oat_assert_array_length(i64* %_ans7010, i64 1)
  %_index_ptr7009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index7007, i32 0, i32 1, i32 1
  %_index7011 = load i64, i64* %_index_ptr7009
  %_mat_17012 = load { i64, [3 x { i64, [0 x i64] }*] }*, { i64, [3 x { i64, [0 x i64] }*] }** @mat_1
  %_ans7015 = bitcast { i64, [3 x { i64, [0 x i64] }*] }* %_mat_17012 to i64*
  call void @oat_assert_array_length(i64* %_ans7015, i64 2)
  %_index_ptr7014 = getelementptr { i64, [3 x { i64, [0 x i64] }*] }, { i64, [3 x { i64, [0 x i64] }*] }* %_mat_17012, i32 0, i32 1, i32 2
  %_index7016 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr7014
  %_ans7019 = bitcast { i64, [0 x i64] }* %_index7016 to i64*
  call void @oat_assert_array_length(i64* %_ans7019, i64 0)
  %_index_ptr7018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index7016, i32 0, i32 1, i32 0
  %_index7020 = load i64, i64* %_index_ptr7018
  %_bop7021 = add i64 %_index7011, %_index7020
  %_result7022 = call { i64, [0 x i64] }* @get()
  %_ans7025 = bitcast { i64, [0 x i64] }* %_result7022 to i64*
  call void @oat_assert_array_length(i64* %_ans7025, i64 0)
  %_index_ptr7024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result7022, i32 0, i32 1, i32 0
  %_index7026 = load i64, i64* %_index_ptr7024
  %_bop7027 = add i64 %_bop7021, %_index7026
  store i64 %_bop7027, i64* %_x7028
  %_x7029 = load i64, i64* %_x7028
  ret i64 %_x7029
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
