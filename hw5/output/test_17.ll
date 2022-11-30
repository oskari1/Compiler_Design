; generated from: ./nicdard/subtype_checked_cast.oat
target triple = "x86_64-unknown-linux"
%A = type { i64 }
%B = type { i64, i1 }
%C = type { i64, i64 }

define %B* @get() {
  %_raw_array8237 = call i64* @oat_malloc(i64 16)
  %_array8238 = bitcast i64* %_raw_array8237 to %B*
  %_ind8239 = getelementptr %B, %B* %_array8238, i32 0, i32 0
  store i64 20, i64* %_ind8239
  %_ind8240 = getelementptr %B, %B* %_array8238, i32 0, i32 1
  store i1 0, i1* %_ind8240
  ret %B* %_array8238
}

define i64 @program(i64 %_argc8215, { i64, [0 x i8*] }* %_argv8213) {
  %_argc8216 = alloca i64
  %_argv8214 = alloca { i64, [0 x i8*] }*
  %_a8220 = alloca %A*
  %_ptr8223 = alloca %B*
  %_c8229 = alloca %C*
  store i64 %_argc8215, i64* %_argc8216
  store { i64, [0 x i8*] }* %_argv8213, { i64, [0 x i8*] }** %_argv8214
  %_raw_array8217 = call i64* @oat_malloc(i64 8)
  %_array8218 = bitcast i64* %_raw_array8217 to %A*
  %_ind8219 = getelementptr %A, %A* %_array8218, i32 0, i32 0
  store i64 10, i64* %_ind8219
  store %A* %_array8218, %A** %_a8220
  %_result8221 = call %B* @get()
  store %B* %_result8221, %B** %_ptr8223
  %_guard8222 = icmp ne %B* null, %_result8221
  br i1 %_guard8222, label %_notnull_branch8233, label %_null_branch8232
_notnull_branch8233:
  %_b18224 = load %B*, %B** %_ptr8223
  store %B* %_b18224, %B** %_a8220
  br label %_merge8231
_null_branch8232:
  %_raw_array8225 = call i64* @oat_malloc(i64 16)
  %_array8226 = bitcast i64* %_raw_array8225 to %C*
  %_ind8227 = getelementptr %C, %C* %_array8226, i32 0, i32 0
  store i64 30, i64* %_ind8227
  %_ind8228 = getelementptr %C, %C* %_array8226, i32 0, i32 1
  store i64 0, i64* %_ind8228
  store %C* %_array8226, %C** %_c8229
  %_c8230 = load %C*, %C** %_c8229
  store %C* %_c8230, %C** %_a8220
  br label %_merge8231
_merge8231:
  %_a8234 = load %A*, %A** %_a8220
  %_index_ptr8235 = getelementptr %A, %A* %_a8234, i32 0, i32 0
  %_proj8236 = load i64, i64* %_index_ptr8235
  ret i64 %_proj8236
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
