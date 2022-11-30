; generated from: ./nicdard/subtype_function_return.oat
target triple = "x86_64-unknown-linux"
%A = type { i64 }
%B = type { i64, i1 }
%C = type { i64, i1, i64 }

define %A* @getA() {
  %_raw_array8308 = call i64* @oat_malloc(i64 16)
  %_array8309 = bitcast i64* %_raw_array8308 to %B*
  %_ind8310 = getelementptr %B, %B* %_array8309, i32 0, i32 0
  store i64 10, i64* %_ind8310
  %_ind8311 = getelementptr %B, %B* %_array8309, i32 0, i32 1
  store i1 1, i1* %_ind8311
  %_cast8312 = bitcast %B* %_array8309 to %A*
  ret %A* %_cast8312
}

define %B* @getB() {
  %_raw_array8302 = call i64* @oat_malloc(i64 24)
  %_array8303 = bitcast i64* %_raw_array8302 to %C*
  %_ind8304 = getelementptr %C, %C* %_array8303, i32 0, i32 0
  store i64 20, i64* %_ind8304
  %_ind8305 = getelementptr %C, %C* %_array8303, i32 0, i32 1
  store i1 1, i1* %_ind8305
  %_ind8306 = getelementptr %C, %C* %_array8303, i32 0, i32 2
  store i64 4, i64* %_ind8306
  %_cast8307 = bitcast %C* %_array8303 to %B*
  ret %B* %_cast8307
}

define %C* @getC() {
  %_raw_array8297 = call i64* @oat_malloc(i64 24)
  %_array8298 = bitcast i64* %_raw_array8297 to %C*
  %_ind8299 = getelementptr %C, %C* %_array8298, i32 0, i32 0
  store i64 30, i64* %_ind8299
  %_ind8300 = getelementptr %C, %C* %_array8298, i32 0, i32 1
  store i1 0, i1* %_ind8300
  %_ind8301 = getelementptr %C, %C* %_array8298, i32 0, i32 2
  store i64 4, i64* %_ind8301
  ret %C* %_array8298
}

define i64 @program(i64 %_argc8280, { i64, [0 x i8*] }* %_argv8278) {
  %_argc8281 = alloca i64
  %_argv8279 = alloca { i64, [0 x i8*] }*
  %_b8283 = alloca %B*
  %_a8292 = alloca %A*
  store i64 %_argc8280, i64* %_argc8281
  store { i64, [0 x i8*] }* %_argv8278, { i64, [0 x i8*] }** %_argv8279
  %_result8282 = call %B* @getB()
  store %B* %_result8282, %B** %_b8283
  %_b8284 = load %B*, %B** %_b8283
  %_index_ptr8285 = getelementptr %B, %B* %_b8284, i32 0, i32 1
  %_proj8286 = load i1, i1* %_index_ptr8285
  br i1 %_proj8286, label %_then8290, label %_else8289
_then8290:
  %_result8287 = call %C* @getC()
  store %C* %_result8287, %C** %_b8283
  br label %_merge8288
_else8289:
  br label %_merge8288
_merge8288:
  %_result8291 = call %A* @getA()
  store %A* %_result8291, %A** %_a8292
  %_b8293 = load %B*, %B** %_b8283
  store %B* %_b8293, %B** %_a8292
  %_a8294 = load %A*, %A** %_a8292
  %_index_ptr8295 = getelementptr %A, %A* %_a8294, i32 0, i32 0
  %_proj8296 = load i64, i64* %_index_ptr8295
  ret i64 %_proj8296
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
