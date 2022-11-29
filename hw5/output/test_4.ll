; generated from: ./dbernhard/init_array_subtype.oat
target triple = "x86_64-unknown-linux"
%A = type { i64 }
%B = type { i64, i1 }
%C = type { i64, i64 }

define i64 @program(i64 %_argc7649, { i64, [0 x i8*] }* %_argv7647) {
  %_argc7650 = alloca i64
  %_argv7648 = alloca { i64, [0 x i8*] }*
  %_b17655 = alloca %B*
  %_tmp_a7658 = alloca { i64, [0 x %A*] }*
  %_i7659 = alloca i64
  %_array7676 = alloca { i64, [0 x %A*] }*
  store i64 %_argc7649, i64* %_argc7650
  store { i64, [0 x i8*] }* %_argv7647, { i64, [0 x i8*] }** %_argv7648
  %_raw_array7651 = call i64* @oat_malloc(i64 16)
  %_array7652 = bitcast i64* %_raw_array7651 to %B*
  %_ind7653 = getelementptr %B, %B* %_array7652, i32 0, i32 0
  store i64 2, i64* %_ind7653
  %_ind7654 = getelementptr %B, %B* %_array7652, i32 0, i32 1
  store i1 0, i1* %_ind7654
  store %B* %_array7652, %B** %_b17655
  %_raw_array7656 = call i64* @oat_alloc_array(i64 10)
  %_array7657 = bitcast i64* %_raw_array7656 to { i64, [0 x %A*] }*
  store { i64, [0 x %A*] }* %_array7657, { i64, [0 x %A*] }** %_tmp_a7658
  store i64 0, i64* %_i7659
  br label %_cond7667
_cond7667:
  %_i7660 = load i64, i64* %_i7659
  %__tmp_a76587661 = load { i64, [0 x %A*] }*, { i64, [0 x %A*] }** %_tmp_a7658
  %_len_addr7662 = getelementptr { i64, [0 x %A*] }, { i64, [0 x %A*] }* %__tmp_a76587661, i32 0, i32 0
  %_arr_len7663 = load i64, i64* %_len_addr7662
  %_bop7664 = icmp slt i64 %_i7660, %_arr_len7663
  br i1 %_bop7664, label %_body7666, label %_post7665
_body7666:
  %__tmp_a76587668 = load { i64, [0 x %A*] }*, { i64, [0 x %A*] }** %_tmp_a7658
  %_i7669 = load i64, i64* %_i7659
  %_ans7672 = bitcast { i64, [0 x %A*] }* %__tmp_a76587668 to i64*
  call void @oat_assert_array_length(i64* %_ans7672, i64 %_i7669)
  %_index_ptr7671 = getelementptr { i64, [0 x %A*] }, { i64, [0 x %A*] }* %__tmp_a76587668, i32 0, i32 1, i64 %_i7669
  %_b17673 = load %B*, %B** %_b17655
  store %B* %_b17673, %B** %_index_ptr7671
  %_i7674 = load i64, i64* %_i7659
  %_bop7675 = add i64 %_i7674, 1
  store i64 %_bop7675, i64* %_i7659
  br label %_cond7667
_post7665:
  store { i64, [0 x %A*] }* %_array7657, { i64, [0 x %A*] }** %_array7676
  ret i64 0
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
