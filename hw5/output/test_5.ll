; generated from: ./nicdard/subtype_ass.oat
target triple = "x86_64-unknown-linux"
%A = type { i64 }
%B = type { i64, i1 }
%C = type { i64, i64 }

define i64 @program(i64 %_argc8100, { i64, [0 x i8*] }* %_argv8098) {
  %_argc8101 = alloca i64
  %_argv8099 = alloca { i64, [0 x i8*] }*
  %_b8106 = alloca %B*
  %_a8110 = alloca %A*
  %_c8116 = alloca %C*
  store i64 %_argc8100, i64* %_argc8101
  store { i64, [0 x i8*] }* %_argv8098, { i64, [0 x i8*] }** %_argv8099
  %_raw_array8102 = call i64* @oat_malloc(i64 16)
  %_array8103 = bitcast i64* %_raw_array8102 to %B*
  %_ind8104 = getelementptr %B, %B* %_array8103, i32 0, i32 0
  store i64 2, i64* %_ind8104
  %_ind8105 = getelementptr %B, %B* %_array8103, i32 0, i32 1
  store i1 0, i1* %_ind8105
  store %B* %_array8103, %B** %_b8106
  %_raw_array8107 = call i64* @oat_malloc(i64 8)
  %_array8108 = bitcast i64* %_raw_array8107 to %A*
  %_ind8109 = getelementptr %A, %A* %_array8108, i32 0, i32 0
  store i64 10, i64* %_ind8109
  store %A* %_array8108, %A** %_a8110
  %_b8111 = load %B*, %B** %_b8106
  store %B* %_b8111, %B** %_a8110
  %_raw_array8112 = call i64* @oat_malloc(i64 16)
  %_array8113 = bitcast i64* %_raw_array8112 to %C*
  %_ind8114 = getelementptr %C, %C* %_array8113, i32 0, i32 0
  store i64 20, i64* %_ind8114
  %_ind8115 = getelementptr %C, %C* %_array8113, i32 0, i32 1
  store i64 0, i64* %_ind8115
  store %C* %_array8113, %C** %_c8116
  %_c8117 = load %C*, %C** %_c8116
  store %C* %_c8117, %C** %_a8110
  %_a8118 = load %A*, %A** %_a8110
  %_index_ptr8119 = getelementptr %A, %A* %_a8118, i32 0, i32 0
  %_proj8120 = load i64, i64* %_index_ptr8119
  %_b8121 = load %B*, %B** %_b8106
  %_index_ptr8122 = getelementptr %B, %B* %_b8121, i32 0, i32 0
  %_proj8123 = load i64, i64* %_index_ptr8122
  %_bop8124 = add i64 %_proj8120, %_proj8123
  ret i64 %_bop8124
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
