; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_4517 to { i64, [0 x i64] }*)
@_4517 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_4445 = global [1 x i8] c"\00"
@_4424 = global [7 x i8] c"TOMATO\00"
@_4427 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_4433 = alloca i64
  store i64 %i, i64* %_4433
  %_4434 = alloca i64
  store i64 %j, i64* %_4434
  %_4435 = alloca i8*
  store i8* %a, i8** %_4435
  %_4436 = alloca i8*
  store i8* %b, i8** %_4436
  %_4447 = alloca { i64, [0 x i64] }*
  %_4450 = alloca { i64, [0 x i64] }*
  %_4453 = alloca i64
  %_4458 = alloca i64
  %_4469 = alloca i8*
  %_4483 = alloca i8*
  %_4489 = alloca i8*
  %_4496 = alloca i8*
  %_4503 = alloca i64
  %_4506 = alloca i64
  %_4437 = load i64, i64* %_4433
  %_4438 = icmp slt i64 %_4437, 0
  %_4439 = load i64, i64* %_4434
  %_4440 = icmp slt i64 %_4439, 0
  %_4441 = or i1 %_4438, %_4440
  br i1 %_4441, label %_4442, label %_4443
_4442:
  %_4446 = getelementptr [1 x i8], [1 x i8]* @_4445, i32 0, i32 0
  ret i8* %_4446
_4443:
  br label %_4444
_4444:
  %_4449 = load i8*, i8** %_4435
  %_4448 = call { i64, [0 x i64] }* @array_of_string(i8* %_4449)
  store { i64, [0 x i64] }* %_4448, { i64, [0 x i64] }** %_4447
  %_4452 = load i8*, i8** %_4436
  %_4451 = call { i64, [0 x i64] }* @array_of_string(i8* %_4452)
  store { i64, [0 x i64] }* %_4451, { i64, [0 x i64] }** %_4450
  %_4454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4447
  %_4455 = load i64, i64* %_4433
  %_4456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4454, i32 0, i32 1, i64 %_4455
  %_4457 = load i64, i64* %_4456
  store i64 %_4457, i64* %_4453
  %_4459 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4450
  %_4460 = load i64, i64* %_4434
  %_4461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4459, i32 0, i32 1, i64 %_4460
  %_4462 = load i64, i64* %_4461
  store i64 %_4462, i64* %_4458
  %_4463 = load i64, i64* %_4453
  %_4464 = load i64, i64* %_4458
  %_4465 = icmp eq i64 %_4463, %_4464
  br i1 %_4465, label %_4466, label %_4467
_4466:
  %_4471 = load i64, i64* %_4433
  %_4472 = sub i64 %_4471, 1
  %_4473 = load i64, i64* %_4434
  %_4474 = sub i64 %_4473, 1
  %_4475 = load i8*, i8** %_4435
  %_4476 = load i8*, i8** %_4436
  %_4470 = call i8* @lcs(i64 %_4472, i64 %_4474, i8* %_4475, i8* %_4476)
  store i8* %_4470, i8** %_4469
  %_4477 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4447
  %_4478 = load i64, i64* %_4433
  %_4479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4477, i32 0, i32 1, i64 %_4478
  %_4480 = load i64, i64* %_4479
  %_4482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_4481 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4482, i32 0, i32 1, i32 0
  store i64 %_4480, i64* %_4481
  %_4485 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_4484 = call i8* @string_of_array({ i64, [0 x i64] }* %_4485)
  store i8* %_4484, i8** %_4483
  %_4487 = load i8*, i8** %_4469
  %_4488 = load i8*, i8** %_4483
  %_4486 = call i8* @string_cat(i8* %_4487, i8* %_4488)
  ret i8* %_4486
_4467:
  br label %_4468
_4468:
  %_4491 = load i64, i64* %_4433
  %_4492 = load i64, i64* %_4434
  %_4493 = sub i64 %_4492, 1
  %_4494 = load i8*, i8** %_4435
  %_4495 = load i8*, i8** %_4436
  %_4490 = call i8* @lcs(i64 %_4491, i64 %_4493, i8* %_4494, i8* %_4495)
  store i8* %_4490, i8** %_4489
  %_4498 = load i64, i64* %_4433
  %_4499 = sub i64 %_4498, 1
  %_4500 = load i64, i64* %_4434
  %_4501 = load i8*, i8** %_4435
  %_4502 = load i8*, i8** %_4436
  %_4497 = call i8* @lcs(i64 %_4499, i64 %_4500, i8* %_4501, i8* %_4502)
  store i8* %_4497, i8** %_4496
  %_4505 = load i8*, i8** %_4489
  %_4504 = call i64 @length_of_string(i8* %_4505)
  store i64 %_4504, i64* %_4503
  %_4508 = load i8*, i8** %_4496
  %_4507 = call i64 @length_of_string(i8* %_4508)
  store i64 %_4507, i64* %_4506
  %_4509 = load i64, i64* %_4503
  %_4510 = load i64, i64* %_4506
  %_4511 = icmp slt i64 %_4509, %_4510
  br i1 %_4511, label %_4512, label %_4513
_4512:
  %_4515 = load i8*, i8** %_4496
  ret i8* %_4515
_4513:
  %_4516 = load i8*, i8** %_4489
  ret i8* %_4516
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4421 = alloca i64
  store i64 %argc, i64* %_4421
  %_4422 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4422
  %_4423 = alloca i8*
  %_4426 = alloca i8*
  %_4425 = getelementptr [7 x i8], [7 x i8]* @_4424, i32 0, i32 0
  store i8* %_4425, i8** %_4423
  %_4428 = getelementptr [8 x i8], [8 x i8]* @_4427, i32 0, i32 0
  store i8* %_4428, i8** %_4426
  %_4431 = load i8*, i8** %_4423
  %_4432 = load i8*, i8** %_4426
  %_4430 = call i8* @lcs(i64 5, i64 6, i8* %_4431, i8* %_4432)
  call void @print_string(i8* %_4430)
  ret i64 0
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
