; generated from: ./dbernhard/sum_different_types.oat
target triple = "x86_64-unknown-linux"
%A = type { i64 }
%B = type { i64, i1 }
%C = type { i64, i64 }

define i1 @equal(%A* %_first7963, %A* %_second7961) {
  %_first7964 = alloca %A*
  %_second7962 = alloca %A*
  store %A* %_first7963, %A** %_first7964
  store %A* %_second7961, %A** %_second7962
  %_first7965 = load %A*, %A** %_first7964
  %_cast7966 = bitcast %A* %_first7965 to i64
  %_second7967 = load %A*, %A** %_second7962
  %_cast7968 = bitcast %A* %_second7967 to i64
  %_bop7969 = icmp eq i64 %_cast7966, %_cast7968
  ret i1 %_bop7969
}

define %A* @get(i64 %_x7936) {
  %_x7937 = alloca i64
  store i64 %_x7936, i64* %_x7937
  %_x7938 = load i64, i64* %_x7937
  %_bop7939 = icmp eq i64 %_x7938, 0
  br i1 %_bop7939, label %_then7960, label %_else7959
_then7960:
  %_raw_array7940 = call i64* @oat_malloc(i64 8)
  %_array7941 = bitcast i64* %_raw_array7940 to %A*
  %_ind7942 = getelementptr %A, %A* %_array7941, i32 0, i32 0
  store i64 1, i64* %_ind7942
  ret %A* %_array7941
_else7959:
  %_x7943 = load i64, i64* %_x7937
  %_bop7944 = icmp eq i64 %_x7943, 1
  br i1 %_bop7944, label %_then7957, label %_else7956
_then7957:
  %_raw_array7945 = call i64* @oat_malloc(i64 16)
  %_array7946 = bitcast i64* %_raw_array7945 to %B*
  %_ind7947 = getelementptr %B, %B* %_array7946, i32 0, i32 0
  store i64 2, i64* %_ind7947
  %_ind7948 = getelementptr %B, %B* %_array7946, i32 0, i32 1
  store i1 1, i1* %_ind7948
  %_cast7949 = bitcast %B* %_array7946 to %A*
  ret %A* %_cast7949
_else7956:
  %_raw_array7950 = call i64* @oat_malloc(i64 16)
  %_array7951 = bitcast i64* %_raw_array7950 to %C*
  %_ind7952 = getelementptr %C, %C* %_array7951, i32 0, i32 0
  store i64 3, i64* %_ind7952
  %_ind7953 = getelementptr %C, %C* %_array7951, i32 0, i32 1
  store i64 20, i64* %_ind7953
  %_cast7954 = bitcast %C* %_array7951 to %A*
  ret %A* %_cast7954
_merge7955:
  br label %_merge7958
_merge7958:
  ret %A* null
}

define i64 @program(i64 %_argc7882, { i64, [0 x i8*] }* %_argv7880) {
  %_argc7883 = alloca i64
  %_argv7881 = alloca { i64, [0 x i8*] }*
  %_tmp_a7886 = alloca { i64, [0 x %A*] }*
  %_i7887 = alloca i64
  %_array7905 = alloca { i64, [0 x %A*] }*
  %_sum7906 = alloca i64
  %_i7907 = alloca i64
  %_ptr7923 = alloca %A*
  store i64 %_argc7882, i64* %_argc7883
  store { i64, [0 x i8*] }* %_argv7880, { i64, [0 x i8*] }** %_argv7881
  %_raw_array7884 = call i64* @oat_alloc_array(i64 3)
  %_array7885 = bitcast i64* %_raw_array7884 to { i64, [0 x %A*] }*
  store { i64, [0 x %A*] }* %_array7885, { i64, [0 x %A*] }** %_tmp_a7886
  store i64 0, i64* %_i7887
  br label %_cond7895
_cond7895:
  %_i7888 = load i64, i64* %_i7887
  %__tmp_a78867889 = load { i64, [0 x %A*] }*, { i64, [0 x %A*] }** %_tmp_a7886
  %_len_addr7890 = getelementptr { i64, [0 x %A*] }, { i64, [0 x %A*] }* %__tmp_a78867889, i32 0, i32 0
  %_arr_len7891 = load i64, i64* %_len_addr7890
  %_bop7892 = icmp slt i64 %_i7888, %_arr_len7891
  br i1 %_bop7892, label %_body7894, label %_post7893
_body7894:
  %__tmp_a78867896 = load { i64, [0 x %A*] }*, { i64, [0 x %A*] }** %_tmp_a7886
  %_i7897 = load i64, i64* %_i7887
  %_ans7900 = bitcast { i64, [0 x %A*] }* %__tmp_a78867896 to i64*
  call void @oat_assert_array_length(i64* %_ans7900, i64 %_i7897)
  %_index_ptr7899 = getelementptr { i64, [0 x %A*] }, { i64, [0 x %A*] }* %__tmp_a78867896, i32 0, i32 1, i64 %_i7897
  %_i7901 = load i64, i64* %_i7887
  %_result7902 = call %A* @get(i64 %_i7901)
  store %A* %_result7902, %A** %_index_ptr7899
  %_i7903 = load i64, i64* %_i7887
  %_bop7904 = add i64 %_i7903, 1
  store i64 %_bop7904, i64* %_i7887
  br label %_cond7895
_post7893:
  store { i64, [0 x %A*] }* %_array7885, { i64, [0 x %A*] }** %_array7905
  store i64 0, i64* %_sum7906
  store i64 0, i64* %_i7907
  br label %_cond7915
_cond7915:
  %_i7908 = load i64, i64* %_i7907
  %_array7909 = load { i64, [0 x %A*] }*, { i64, [0 x %A*] }** %_array7905
  %_len_addr7910 = getelementptr { i64, [0 x %A*] }, { i64, [0 x %A*] }* %_array7909, i32 0, i32 0
  %_arr_len7911 = load i64, i64* %_len_addr7910
  %_bop7912 = icmp slt i64 %_i7908, %_arr_len7911
  br i1 %_bop7912, label %_body7914, label %_post7913
_body7914:
  %_array7916 = load { i64, [0 x %A*] }*, { i64, [0 x %A*] }** %_array7905
  %_i7917 = load i64, i64* %_i7907
  %_ans7920 = bitcast { i64, [0 x %A*] }* %_array7916 to i64*
  call void @oat_assert_array_length(i64* %_ans7920, i64 %_i7917)
  %_index_ptr7919 = getelementptr { i64, [0 x %A*] }, { i64, [0 x %A*] }* %_array7916, i32 0, i32 1, i64 %_i7917
  %_index7921 = load %A*, %A** %_index_ptr7919
  store %A* %_index7921, %A** %_ptr7923
  %_guard7922 = icmp ne %A* null, %_index7921
  br i1 %_guard7922, label %_notnull_branch7932, label %_null_branch7931
_notnull_branch7932:
  %_sum7924 = load i64, i64* %_sum7906
  %_a7925 = load %A*, %A** %_ptr7923
  %_index_ptr7926 = getelementptr %A, %A* %_a7925, i32 0, i32 0
  %_proj7927 = load i64, i64* %_index_ptr7926
  %_bop7928 = add i64 %_sum7924, %_proj7927
  store i64 %_bop7928, i64* %_sum7906
  br label %_merge7930
_null_branch7931:
  %_unop7929 = sub i64 0, 100
  store i64 %_unop7929, i64* %_sum7906
  br label %_merge7930
_merge7930:
  %_i7933 = load i64, i64* %_i7907
  %_bop7934 = add i64 %_i7933, 1
  store i64 %_bop7934, i64* %_i7907
  br label %_cond7915
_post7913:
  %_sum7935 = load i64, i64* %_sum7906
  ret i64 %_sum7935
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
