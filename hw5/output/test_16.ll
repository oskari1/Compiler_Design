; generated from: ./nicdard/subtype_ass.oat
target triple = "x86_64-unknown-linux"
%A = type { i64 }
%B = type { i64, i1 }
%C = type { i64, i64 }

define i64 @program(i64 %_argc8188, { i64, [0 x i8*] }* %_argv8186) {
  %_argc8189 = alloca i64
  %_argv8187 = alloca { i64, [0 x i8*] }*
  %_b8194 = alloca %B*
  %_a8198 = alloca %A*
  %_c8204 = alloca %C*
  store i64 %_argc8188, i64* %_argc8189
  store { i64, [0 x i8*] }* %_argv8186, { i64, [0 x i8*] }** %_argv8187
  %_raw_array8190 = call i64* @oat_malloc(i64 16)
  %_array8191 = bitcast i64* %_raw_array8190 to %B*
  %_ind8192 = getelementptr %B, %B* %_array8191, i32 0, i32 0
  store i64 2, i64* %_ind8192
  %_ind8193 = getelementptr %B, %B* %_array8191, i32 0, i32 1
  store i1 0, i1* %_ind8193
  store %B* %_array8191, %B** %_b8194
  %_raw_array8195 = call i64* @oat_malloc(i64 8)
  %_array8196 = bitcast i64* %_raw_array8195 to %A*
  %_ind8197 = getelementptr %A, %A* %_array8196, i32 0, i32 0
  store i64 10, i64* %_ind8197
  store %A* %_array8196, %A** %_a8198
  %_b8199 = load %B*, %B** %_b8194
  store %B* %_b8199, %B** %_a8198
  %_raw_array8200 = call i64* @oat_malloc(i64 16)
  %_array8201 = bitcast i64* %_raw_array8200 to %C*
  %_ind8202 = getelementptr %C, %C* %_array8201, i32 0, i32 0
  store i64 20, i64* %_ind8202
  %_ind8203 = getelementptr %C, %C* %_array8201, i32 0, i32 1
  store i64 0, i64* %_ind8203
  store %C* %_array8201, %C** %_c8204
  %_c8205 = load %C*, %C** %_c8204
  store %C* %_c8205, %C** %_a8198
  %_a8206 = load %A*, %A** %_a8198
  %_index_ptr8207 = getelementptr %A, %A* %_a8206, i32 0, i32 0
  %_proj8208 = load i64, i64* %_index_ptr8207
  %_b8209 = load %B*, %B** %_b8194
  %_index_ptr8210 = getelementptr %B, %B* %_b8209, i32 0, i32 0
  %_proj8211 = load i64, i64* %_index_ptr8210
  %_bop8212 = add i64 %_proj8208, %_proj8211
  ret i64 %_bop8212
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
