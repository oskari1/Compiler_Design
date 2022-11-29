; generated from: ./dbernhard/mat_mult.oat
target triple = "x86_64-unknown-linux"
@eye = global { i64, [3 x { i64, [0 x i64] }*] }* @_global_arr7375
@_global_arr7375 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [3 x i64] }* @_global_arr7374, { i64, [3 x i64] }* @_global_arr7373, { i64, [3 x i64] }* @_global_arr7372 ] }
@_global_arr7374 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 0, i64 0 ] }
@_global_arr7373 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 1, i64 0 ] }
@_global_arr7372 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 1 ] }
@_str_arr7125 = global [3 x i8] c"| \00"
@_str_arr7149 = global [2 x i8] c" \00"
@_str_arr7155 = global [4 x i8] c" |
\00"

define i64 @program(i64 %_argc7303, { i64, [0 x i8*] }* %_argv7301) {
  %_argc7304 = alloca i64
  %_argv7302 = alloca { i64, [0 x i8*] }*
  %_eye7325 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_mat_17346 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_mat_27367 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc7303, i64* %_argc7304
  store { i64, [0 x i8*] }* %_argv7301, { i64, [0 x i8*] }** %_argv7302
  %_raw_array7305 = call i64* @oat_alloc_array(i64 3)
  %_array7306 = bitcast i64* %_raw_array7305 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7307 = call i64* @oat_alloc_array(i64 3)
  %_array7308 = bitcast i64* %_raw_array7307 to { i64, [0 x i64] }*
  %_ind7309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7308, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind7309
  %_ind7310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7308, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind7310
  %_ind7311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7308, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind7311
  %_ind7312 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7306, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7308, { i64, [0 x i64] }** %_ind7312
  %_raw_array7313 = call i64* @oat_alloc_array(i64 3)
  %_array7314 = bitcast i64* %_raw_array7313 to { i64, [0 x i64] }*
  %_ind7315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7314, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind7315
  %_ind7316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7314, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind7316
  %_ind7317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7314, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind7317
  %_ind7318 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7306, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7314, { i64, [0 x i64] }** %_ind7318
  %_raw_array7319 = call i64* @oat_alloc_array(i64 3)
  %_array7320 = bitcast i64* %_raw_array7319 to { i64, [0 x i64] }*
  %_ind7321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7320, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind7321
  %_ind7322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7320, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind7322
  %_ind7323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7320, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind7323
  %_ind7324 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7306, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array7320, { i64, [0 x i64] }** %_ind7324
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7306, { i64, [0 x { i64, [0 x i64] }*] }** %_eye7325
  %_raw_array7326 = call i64* @oat_alloc_array(i64 3)
  %_array7327 = bitcast i64* %_raw_array7326 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7328 = call i64* @oat_alloc_array(i64 3)
  %_array7329 = bitcast i64* %_raw_array7328 to { i64, [0 x i64] }*
  %_ind7330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7329, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind7330
  %_ind7331 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7329, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind7331
  %_ind7332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7329, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind7332
  %_ind7333 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7327, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7329, { i64, [0 x i64] }** %_ind7333
  %_raw_array7334 = call i64* @oat_alloc_array(i64 3)
  %_array7335 = bitcast i64* %_raw_array7334 to { i64, [0 x i64] }*
  %_ind7336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7335, i32 0, i32 1, i32 0
  store i64 9, i64* %_ind7336
  %_ind7337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7335, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind7337
  %_ind7338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7335, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind7338
  %_ind7339 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7327, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7335, { i64, [0 x i64] }** %_ind7339
  %_raw_array7340 = call i64* @oat_alloc_array(i64 3)
  %_array7341 = bitcast i64* %_raw_array7340 to { i64, [0 x i64] }*
  %_ind7342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7341, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind7342
  %_ind7343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7341, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind7343
  %_ind7344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7341, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind7344
  %_ind7345 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7327, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array7341, { i64, [0 x i64] }** %_ind7345
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7327, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_17346
  %_raw_array7347 = call i64* @oat_alloc_array(i64 3)
  %_array7348 = bitcast i64* %_raw_array7347 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7349 = call i64* @oat_alloc_array(i64 3)
  %_array7350 = bitcast i64* %_raw_array7349 to { i64, [0 x i64] }*
  %_ind7351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7350, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind7351
  %_ind7352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7350, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind7352
  %_ind7353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7350, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind7353
  %_ind7354 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7348, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7350, { i64, [0 x i64] }** %_ind7354
  %_raw_array7355 = call i64* @oat_alloc_array(i64 3)
  %_array7356 = bitcast i64* %_raw_array7355 to { i64, [0 x i64] }*
  %_ind7357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7356, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind7357
  %_ind7358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7356, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind7358
  %_ind7359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7356, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind7359
  %_ind7360 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7348, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7356, { i64, [0 x i64] }** %_ind7360
  %_raw_array7361 = call i64* @oat_alloc_array(i64 3)
  %_array7362 = bitcast i64* %_raw_array7361 to { i64, [0 x i64] }*
  %_ind7363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7362, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind7363
  %_ind7364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7362, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind7364
  %_ind7365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7362, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind7365
  %_ind7366 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7348, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array7362, { i64, [0 x i64] }** %_ind7366
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7348, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_27367
  %_mat_27368 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_27367
  %_mat_17369 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_17346
  %_result7370 = call { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %_mat_17369, { i64, [0 x { i64, [0 x i64] }*] }* %_mat_27368)
  call void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %_result7370, i1 0)
  ret i64 0
}

define { i64, [0 x { i64, [0 x i64] }*] }* @new_mat() {
  %_tmp_a7243 = alloca { i64, [0 x i64] }*
  %_i7244 = alloca i64
  %_tmp_a7263 = alloca { i64, [0 x i64] }*
  %_i7264 = alloca i64
  %_tmp_a7283 = alloca { i64, [0 x i64] }*
  %_i7284 = alloca i64
  %_raw_array7239 = call i64* @oat_alloc_array(i64 3)
  %_array7240 = bitcast i64* %_raw_array7239 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7241 = call i64* @oat_alloc_array(i64 3)
  %_array7242 = bitcast i64* %_raw_array7241 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7242, { i64, [0 x i64] }** %_tmp_a7243
  store i64 0, i64* %_i7244
  br label %_cond7252
_cond7252:
  %_i7245 = load i64, i64* %_i7244
  %__tmp_a72437246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_tmp_a7243
  %_len_addr7247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__tmp_a72437246, i32 0, i32 0
  %_arr_len7248 = load i64, i64* %_len_addr7247
  %_bop7249 = icmp slt i64 %_i7245, %_arr_len7248
  br i1 %_bop7249, label %_body7251, label %_post7250
_body7251:
  %__tmp_a72437253 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_tmp_a7243
  %_i7254 = load i64, i64* %_i7244
  %_ans7257 = bitcast { i64, [0 x i64] }* %__tmp_a72437253 to i64*
  call void @oat_assert_array_length(i64* %_ans7257, i64 %_i7254)
  %_index_ptr7256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__tmp_a72437253, i32 0, i32 1, i64 %_i7254
  store i64 0, i64* %_index_ptr7256
  %_i7258 = load i64, i64* %_i7244
  %_bop7259 = add i64 %_i7258, 1
  store i64 %_bop7259, i64* %_i7244
  br label %_cond7252
_post7250:
  %_ind7260 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7240, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7242, { i64, [0 x i64] }** %_ind7260
  %_raw_array7261 = call i64* @oat_alloc_array(i64 3)
  %_array7262 = bitcast i64* %_raw_array7261 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7262, { i64, [0 x i64] }** %_tmp_a7263
  store i64 0, i64* %_i7264
  br label %_cond7272
_cond7272:
  %_i7265 = load i64, i64* %_i7264
  %__tmp_a72637266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_tmp_a7263
  %_len_addr7267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__tmp_a72637266, i32 0, i32 0
  %_arr_len7268 = load i64, i64* %_len_addr7267
  %_bop7269 = icmp slt i64 %_i7265, %_arr_len7268
  br i1 %_bop7269, label %_body7271, label %_post7270
_body7271:
  %__tmp_a72637273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_tmp_a7263
  %_i7274 = load i64, i64* %_i7264
  %_ans7277 = bitcast { i64, [0 x i64] }* %__tmp_a72637273 to i64*
  call void @oat_assert_array_length(i64* %_ans7277, i64 %_i7274)
  %_index_ptr7276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__tmp_a72637273, i32 0, i32 1, i64 %_i7274
  store i64 0, i64* %_index_ptr7276
  %_i7278 = load i64, i64* %_i7264
  %_bop7279 = add i64 %_i7278, 1
  store i64 %_bop7279, i64* %_i7264
  br label %_cond7272
_post7270:
  %_ind7280 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7240, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7262, { i64, [0 x i64] }** %_ind7280
  %_raw_array7281 = call i64* @oat_alloc_array(i64 3)
  %_array7282 = bitcast i64* %_raw_array7281 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7282, { i64, [0 x i64] }** %_tmp_a7283
  store i64 0, i64* %_i7284
  br label %_cond7292
_cond7292:
  %_i7285 = load i64, i64* %_i7284
  %__tmp_a72837286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_tmp_a7283
  %_len_addr7287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__tmp_a72837286, i32 0, i32 0
  %_arr_len7288 = load i64, i64* %_len_addr7287
  %_bop7289 = icmp slt i64 %_i7285, %_arr_len7288
  br i1 %_bop7289, label %_body7291, label %_post7290
_body7291:
  %__tmp_a72837293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_tmp_a7283
  %_i7294 = load i64, i64* %_i7284
  %_ans7297 = bitcast { i64, [0 x i64] }* %__tmp_a72837293 to i64*
  call void @oat_assert_array_length(i64* %_ans7297, i64 %_i7294)
  %_index_ptr7296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__tmp_a72837293, i32 0, i32 1, i64 %_i7294
  store i64 0, i64* %_index_ptr7296
  %_i7298 = load i64, i64* %_i7284
  %_bop7299 = add i64 %_i7298, 1
  store i64 %_bop7299, i64* %_i7284
  br label %_cond7292
_post7290:
  %_ind7300 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7240, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array7282, { i64, [0 x i64] }** %_ind7300
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_array7240
}

define { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %_mata7165, { i64, [0 x { i64, [0 x i64] }*] }* %_matb7163) {
  %_mata7166 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_matb7164 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_res7168 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i7169 = alloca i64
  %_j7175 = alloca i64
  %_k7181 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_mata7165, { i64, [0 x { i64, [0 x i64] }*] }** %_mata7166
  store { i64, [0 x { i64, [0 x i64] }*] }* %_matb7163, { i64, [0 x { i64, [0 x i64] }*] }** %_matb7164
  %_result7167 = call { i64, [0 x { i64, [0 x i64] }*] }* @new_mat()
  store { i64, [0 x { i64, [0 x i64] }*] }* %_result7167, { i64, [0 x { i64, [0 x i64] }*] }** %_res7168
  store i64 0, i64* %_i7169
  br label %_cond7174
_cond7174:
  %_i7170 = load i64, i64* %_i7169
  %_bop7171 = icmp slt i64 %_i7170, 3
  br i1 %_bop7171, label %_body7173, label %_post7172
_body7173:
  store i64 0, i64* %_j7175
  br label %_cond7180
_cond7180:
  %_j7176 = load i64, i64* %_j7175
  %_bop7177 = icmp slt i64 %_j7176, 3
  br i1 %_bop7177, label %_body7179, label %_post7178
_body7179:
  store i64 0, i64* %_k7181
  br label %_cond7186
_cond7186:
  %_k7182 = load i64, i64* %_k7181
  %_bop7183 = icmp slt i64 %_k7182, 3
  br i1 %_bop7183, label %_body7185, label %_post7184
_body7185:
  %_res7187 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res7168
  %_i7188 = load i64, i64* %_i7169
  %_ans7191 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_res7187 to i64*
  call void @oat_assert_array_length(i64* %_ans7191, i64 %_i7188)
  %_index_ptr7190 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_res7187, i32 0, i32 1, i64 %_i7188
  %_index7192 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr7190
  %_j7193 = load i64, i64* %_j7175
  %_ans7196 = bitcast { i64, [0 x i64] }* %_index7192 to i64*
  call void @oat_assert_array_length(i64* %_ans7196, i64 %_j7193)
  %_index_ptr7195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index7192, i32 0, i32 1, i64 %_j7193
  %_res7197 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res7168
  %_i7198 = load i64, i64* %_i7169
  %_ans7201 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_res7197 to i64*
  call void @oat_assert_array_length(i64* %_ans7201, i64 %_i7198)
  %_index_ptr7200 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_res7197, i32 0, i32 1, i64 %_i7198
  %_index7202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr7200
  %_j7203 = load i64, i64* %_j7175
  %_ans7206 = bitcast { i64, [0 x i64] }* %_index7202 to i64*
  call void @oat_assert_array_length(i64* %_ans7206, i64 %_j7203)
  %_index_ptr7205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index7202, i32 0, i32 1, i64 %_j7203
  %_index7207 = load i64, i64* %_index_ptr7205
  %_mata7208 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mata7166
  %_i7209 = load i64, i64* %_i7169
  %_ans7212 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_mata7208 to i64*
  call void @oat_assert_array_length(i64* %_ans7212, i64 %_i7209)
  %_index_ptr7211 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_mata7208, i32 0, i32 1, i64 %_i7209
  %_index7213 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr7211
  %_k7214 = load i64, i64* %_k7181
  %_ans7217 = bitcast { i64, [0 x i64] }* %_index7213 to i64*
  call void @oat_assert_array_length(i64* %_ans7217, i64 %_k7214)
  %_index_ptr7216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index7213, i32 0, i32 1, i64 %_k7214
  %_index7218 = load i64, i64* %_index_ptr7216
  %_matb7219 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matb7164
  %_k7220 = load i64, i64* %_k7181
  %_ans7223 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_matb7219 to i64*
  call void @oat_assert_array_length(i64* %_ans7223, i64 %_k7220)
  %_index_ptr7222 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matb7219, i32 0, i32 1, i64 %_k7220
  %_index7224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr7222
  %_j7225 = load i64, i64* %_j7175
  %_ans7228 = bitcast { i64, [0 x i64] }* %_index7224 to i64*
  call void @oat_assert_array_length(i64* %_ans7228, i64 %_j7225)
  %_index_ptr7227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index7224, i32 0, i32 1, i64 %_j7225
  %_index7229 = load i64, i64* %_index_ptr7227
  %_bop7230 = mul i64 %_index7218, %_index7229
  %_bop7231 = add i64 %_index7207, %_bop7230
  store i64 %_bop7231, i64* %_index_ptr7195
  %_k7232 = load i64, i64* %_k7181
  %_bop7233 = add i64 %_k7232, 1
  store i64 %_bop7233, i64* %_k7181
  br label %_cond7186
_post7184:
  %_j7234 = load i64, i64* %_j7175
  %_bop7235 = add i64 %_j7234, 1
  store i64 %_bop7235, i64* %_j7175
  br label %_cond7180
_post7178:
  %_i7236 = load i64, i64* %_i7169
  %_bop7237 = add i64 %_i7236, 1
  store i64 %_bop7237, i64* %_i7169
  br label %_cond7174
_post7172:
  %_res7238 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res7168
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_res7238
}

define void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %_mat7116, i1 %_pretty7114) {
  %_mat7117 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_pretty7115 = alloca i1
  %_i7118 = alloca i64
  %_j7131 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_mat7116, { i64, [0 x { i64, [0 x i64] }*] }** %_mat7117
  store i1 %_pretty7114, i1* %_pretty7115
  store i64 0, i64* %_i7118
  br label %_cond7123
_cond7123:
  %_i7119 = load i64, i64* %_i7118
  %_bop7120 = icmp slt i64 %_i7119, 3
  br i1 %_bop7120, label %_body7122, label %_post7121
_body7122:
  %_pretty7124 = load i1, i1* %_pretty7115
  br i1 %_pretty7124, label %_then7130, label %_else7129
_then7130:
  %_str7126 = getelementptr [3 x i8], [3 x i8]* @_str_arr7125, i32 0, i32 0
  call void @print_string(i8* %_str7126)
  br label %_merge7128
_else7129:
  br label %_merge7128
_merge7128:
  store i64 0, i64* %_j7131
  br label %_cond7136
_cond7136:
  %_j7132 = load i64, i64* %_j7131
  %_bop7133 = icmp slt i64 %_j7132, 3
  br i1 %_bop7133, label %_body7135, label %_post7134
_body7135:
  %_mat7137 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat7117
  %_i7138 = load i64, i64* %_i7118
  %_ans7141 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_mat7137 to i64*
  call void @oat_assert_array_length(i64* %_ans7141, i64 %_i7138)
  %_index_ptr7140 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_mat7137, i32 0, i32 1, i64 %_i7138
  %_index7142 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr7140
  %_j7143 = load i64, i64* %_j7131
  %_ans7146 = bitcast { i64, [0 x i64] }* %_index7142 to i64*
  call void @oat_assert_array_length(i64* %_ans7146, i64 %_j7143)
  %_index_ptr7145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index7142, i32 0, i32 1, i64 %_j7143
  %_index7147 = load i64, i64* %_index_ptr7145
  call void @print_int(i64 %_index7147)
  %_str7150 = getelementptr [2 x i8], [2 x i8]* @_str_arr7149, i32 0, i32 0
  call void @print_string(i8* %_str7150)
  %_j7152 = load i64, i64* %_j7131
  %_bop7153 = add i64 %_j7152, 1
  store i64 %_bop7153, i64* %_j7131
  br label %_cond7136
_post7134:
  %_pretty7154 = load i1, i1* %_pretty7115
  br i1 %_pretty7154, label %_then7160, label %_else7159
_then7160:
  %_str7156 = getelementptr [4 x i8], [4 x i8]* @_str_arr7155, i32 0, i32 0
  call void @print_string(i8* %_str7156)
  br label %_merge7158
_else7159:
  br label %_merge7158
_merge7158:
  %_i7161 = load i64, i64* %_i7118
  %_bop7162 = add i64 %_i7161, 1
  store i64 %_bop7162, i64* %_i7118
  br label %_cond7123
_post7121:
  ret void
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
