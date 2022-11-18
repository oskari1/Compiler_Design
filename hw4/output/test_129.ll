; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_7313 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_7313
  %_7314 = alloca i64
  store i64 %size, i64* %_7314
  %_7315 = alloca { i64, [0 x i64] }*
  %_7319 = alloca i64
  %_7325 = alloca i64
  %_7332 = alloca i64
  %_7316 = load i64, i64* %_7314
  %_raw_array7317 = call i64* @oat_alloc_array(i64 %_7316)
  %_array7318 = bitcast i64* %_raw_array7317 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7318, { i64, [0 x i64] }** %_7315
  store i64 0, i64* %_7319
  %_7320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7313
  %_7321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7320, i32 0, i32 1, i32 0
  %_7322 = load i64, i64* %_7321
  %_7324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7315
  %_7323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7324, i32 0, i32 1, i32 0
  store i64 %_7322, i64* %_7323
  store i64 0, i64* %_7325
  br label %_7329
_7329:
  %_7326 = load i64, i64* %_7325
  %_7327 = load i64, i64* %_7314
  %_7328 = icmp slt i64 %_7326, %_7327
  br i1 %_7328, label %_7330, label %_7331
_7330:
  store i64 0, i64* %_7332
  br label %_7336
_7336:
  %_7333 = load i64, i64* %_7332
  %_7334 = load i64, i64* %_7325
  %_7335 = icmp slt i64 %_7333, %_7334
  br i1 %_7335, label %_7337, label %_7338
_7337:
  %_7339 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7313
  %_7340 = load i64, i64* %_7325
  %_7341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7339, i32 0, i32 1, i64 %_7340
  %_7342 = load i64, i64* %_7341
  %_7343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7313
  %_7344 = load i64, i64* %_7332
  %_7345 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7343, i32 0, i32 1, i64 %_7344
  %_7346 = load i64, i64* %_7345
  %_7347 = icmp sgt i64 %_7342, %_7346
  %_7348 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7315
  %_7349 = load i64, i64* %_7325
  %_7350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7348, i32 0, i32 1, i64 %_7349
  %_7351 = load i64, i64* %_7350
  %_7352 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7315
  %_7353 = load i64, i64* %_7332
  %_7354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7352, i32 0, i32 1, i64 %_7353
  %_7355 = load i64, i64* %_7354
  %_7356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7313
  %_7357 = load i64, i64* %_7325
  %_7358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7356, i32 0, i32 1, i64 %_7357
  %_7359 = load i64, i64* %_7358
  %_7360 = add i64 %_7355, %_7359
  %_7361 = icmp slt i64 %_7351, %_7360
  %_7362 = and i1 %_7347, %_7361
  br i1 %_7362, label %_7363, label %_7364
_7363:
  %_7366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7315
  %_7367 = load i64, i64* %_7332
  %_7368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7366, i32 0, i32 1, i64 %_7367
  %_7369 = load i64, i64* %_7368
  %_7370 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7313
  %_7371 = load i64, i64* %_7325
  %_7372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7370, i32 0, i32 1, i64 %_7371
  %_7373 = load i64, i64* %_7372
  %_7374 = add i64 %_7369, %_7373
  %_7376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7315
  %_7377 = load i64, i64* %_7325
  %_7375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7376, i32 0, i32 1, i64 %_7377
  store i64 %_7374, i64* %_7375
  br label %_7365
_7364:
  br label %_7365
_7365:
  %_7378 = load i64, i64* %_7332
  %_7379 = add i64 %_7378, 1
  store i64 %_7379, i64* %_7332
  br label %_7336
_7338:
  %_7380 = load i64, i64* %_7319
  %_7381 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7315
  %_7382 = load i64, i64* %_7325
  %_7383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7381, i32 0, i32 1, i64 %_7382
  %_7384 = load i64, i64* %_7383
  %_7385 = icmp slt i64 %_7380, %_7384
  br i1 %_7385, label %_7386, label %_7387
_7386:
  %_7389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7315
  %_7390 = load i64, i64* %_7325
  %_7391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7389, i32 0, i32 1, i64 %_7390
  %_7392 = load i64, i64* %_7391
  store i64 %_7392, i64* %_7319
  br label %_7388
_7387:
  br label %_7388
_7388:
  %_7393 = load i64, i64* %_7325
  %_7394 = add i64 %_7393, 1
  store i64 %_7394, i64* %_7325
  br label %_7329
_7331:
  %_7395 = load i64, i64* %_7319
  ret i64 %_7395
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_7297 = alloca i64
  store i64 %argc, i64* %_7297
  %_7298 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7298
  %_7299 = alloca { i64, [0 x i64] }*
  %_7309 = alloca i64
  %_raw_array7300 = call i64* @oat_alloc_array(i64 7)
  %_array7301 = bitcast i64* %_raw_array7300 to { i64, [0 x i64] }*
  %_7308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7301, i32 0, i32 1, i32 6
  store i64 5, i64* %_7308
  %_7307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7301, i32 0, i32 1, i32 5
  store i64 4, i64* %_7307
  %_7306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7301, i32 0, i32 1, i32 4
  store i64 101, i64* %_7306
  %_7305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7301, i32 0, i32 1, i32 3
  store i64 3, i64* %_7305
  %_7304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7301, i32 0, i32 1, i32 2
  store i64 2, i64* %_7304
  %_7303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7301, i32 0, i32 1, i32 1
  store i64 101, i64* %_7303
  %_7302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7301, i32 0, i32 1, i32 0
  store i64 1, i64* %_7302
  store { i64, [0 x i64] }* %_array7301, { i64, [0 x i64] }** %_7299
  %_7311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7299
  %_7310 = call i64 @maxsum({ i64, [0 x i64] }* %_7311, i64 7)
  store i64 %_7310, i64* %_7309
  %_7312 = load i64, i64* %_7309
  ret i64 %_7312
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
