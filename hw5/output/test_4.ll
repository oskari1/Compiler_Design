; generated from: ./dbernhard/init_array_subtype.oat
target triple = "x86_64-unknown-linux"
%A = type { i64 }
%B = type { i64, i1 }
%C = type { i64, i64 }

define i64 @program(i64 %_argc7671, { i64, [0 x i8*] }* %_argv7669) {
  %_argc7672 = alloca i64
  %_argv7670 = alloca { i64, [0 x i8*] }*
  %_b17677 = alloca %B*
  %_tmp_a7680 = alloca { i64, [0 x %A*] }*
  %_i7681 = alloca i64
  %_array7698 = alloca { i64, [0 x %A*] }*
  store i64 %_argc7671, i64* %_argc7672
  store { i64, [0 x i8*] }* %_argv7669, { i64, [0 x i8*] }** %_argv7670
  %_raw_array7673 = call i64* @oat_malloc(i64 16)
  %_array7674 = bitcast i64* %_raw_array7673 to %B*
  %_ind7675 = getelementptr %B, %B* %_array7674, i32 0, i32 0
  store i64 2, i64* %_ind7675
  %_ind7676 = getelementptr %B, %B* %_array7674, i32 0, i32 1
  store i1 0, i1* %_ind7676
  store %B* %_array7674, %B** %_b17677
  %_raw_array7678 = call i64* @oat_alloc_array(i64 10)
  %_array7679 = bitcast i64* %_raw_array7678 to { i64, [0 x %A*] }*
  store { i64, [0 x %A*] }* %_array7679, { i64, [0 x %A*] }** %_tmp_a7680
  store i64 0, i64* %_i7681
  br label %_cond7689
_cond7689:
  %_i7682 = load i64, i64* %_i7681
  %__tmp_a76807683 = load { i64, [0 x %A*] }*, { i64, [0 x %A*] }** %_tmp_a7680
  %_len_addr7684 = getelementptr { i64, [0 x %A*] }, { i64, [0 x %A*] }* %__tmp_a76807683, i32 0, i32 0
  %_arr_len7685 = load i64, i64* %_len_addr7684
  %_bop7686 = icmp slt i64 %_i7682, %_arr_len7685
  br i1 %_bop7686, label %_body7688, label %_post7687
_body7688:
  %__tmp_a76807690 = load { i64, [0 x %A*] }*, { i64, [0 x %A*] }** %_tmp_a7680
  %_i7691 = load i64, i64* %_i7681
  %_ans7694 = bitcast { i64, [0 x %A*] }* %__tmp_a76807690 to i64*
  call void @oat_assert_array_length(i64* %_ans7694, i64 %_i7691)
  %_index_ptr7693 = getelementptr { i64, [0 x %A*] }, { i64, [0 x %A*] }* %__tmp_a76807690, i32 0, i32 1, i64 %_i7691
  %_b17695 = load %B*, %B** %_b17677
  store %B* %_b17695, %B** %_index_ptr7693
  %_i7696 = load i64, i64* %_i7681
  %_bop7697 = add i64 %_i7696, 1
  store i64 %_bop7697, i64* %_i7681
  br label %_cond7689
_post7687:
  store { i64, [0 x %A*] }* %_array7679, { i64, [0 x %A*] }** %_array7698
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
