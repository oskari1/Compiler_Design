; generated from: ./nicdard/subtype_function_return.oat
target triple = "x86_64-unknown-linux"
%A = type { i64 }
%B = type { i64, i1 }
%C = type { i64, i1, i64 }

define %A* @getA() {
  %_raw_array8200 = call i64* @oat_malloc(i64 16)
  %_array8201 = bitcast i64* %_raw_array8200 to %B*
  %_ind8202 = getelementptr %B, %B* %_array8201, i32 0, i32 0
  store i64 10, i64* %_ind8202
  %_ind8203 = getelementptr %B, %B* %_array8201, i32 0, i32 1
  store i1 1, i1* %_ind8203
  %_cast8204 = bitcast %B* %_array8201 to %A*
  ret %A* %_cast8204
}

define %B* @getB() {
  %_raw_array8194 = call i64* @oat_malloc(i64 24)
  %_array8195 = bitcast i64* %_raw_array8194 to %C*
  %_ind8196 = getelementptr %C, %C* %_array8195, i32 0, i32 0
  store i64 20, i64* %_ind8196
  %_ind8197 = getelementptr %C, %C* %_array8195, i32 0, i32 1
  store i1 1, i1* %_ind8197
  %_ind8198 = getelementptr %C, %C* %_array8195, i32 0, i32 2
  store i64 4, i64* %_ind8198
  %_cast8199 = bitcast %C* %_array8195 to %B*
  ret %B* %_cast8199
}

define %C* @getC() {
  %_raw_array8189 = call i64* @oat_malloc(i64 24)
  %_array8190 = bitcast i64* %_raw_array8189 to %C*
  %_ind8191 = getelementptr %C, %C* %_array8190, i32 0, i32 0
  store i64 30, i64* %_ind8191
  %_ind8192 = getelementptr %C, %C* %_array8190, i32 0, i32 1
  store i1 0, i1* %_ind8192
  %_ind8193 = getelementptr %C, %C* %_array8190, i32 0, i32 2
  store i64 4, i64* %_ind8193
  ret %C* %_array8190
}

define i64 @program(i64 %_argc8172, { i64, [0 x i8*] }* %_argv8170) {
  %_argc8173 = alloca i64
  %_argv8171 = alloca { i64, [0 x i8*] }*
  %_b8175 = alloca %B*
  %_a8184 = alloca %A*
  store i64 %_argc8172, i64* %_argc8173
  store { i64, [0 x i8*] }* %_argv8170, { i64, [0 x i8*] }** %_argv8171
  %_result8174 = call %B* @getB()
  store %B* %_result8174, %B** %_b8175
  %_b8176 = load %B*, %B** %_b8175
  %_index_ptr8177 = getelementptr %B, %B* %_b8176, i32 0, i32 1
  %_proj8178 = load i1, i1* %_index_ptr8177
  br i1 %_proj8178, label %_then8182, label %_else8181
_then8182:
  %_result8179 = call %C* @getC()
  store %C* %_result8179, %C** %_b8175
  br label %_merge8180
_else8181:
  br label %_merge8180
_merge8180:
  %_result8183 = call %A* @getA()
  store %A* %_result8183, %A** %_a8184
  %_b8185 = load %B*, %B** %_b8175
  store %B* %_b8185, %B** %_a8184
  %_a8186 = load %A*, %A** %_a8184
  %_index_ptr8187 = getelementptr %A, %A* %_a8186, i32 0, i32 0
  %_proj8188 = load i64, i64* %_index_ptr8187
  ret i64 %_proj8188
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
