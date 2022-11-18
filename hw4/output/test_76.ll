; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3519 = alloca i64
  store i64 %argc, i64* %_3519
  %_3520 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3520
  %_3521 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3522 = call i64* @oat_alloc_array(i64 2)
  %_array3523 = bitcast i64* %_raw_array3522 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3529 = call i64* @oat_alloc_array(i64 2)
  %_array3530 = bitcast i64* %_raw_array3529 to { i64, [0 x i64] }*
  %_3532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3530, i32 0, i32 1, i32 1
  store i64 4, i64* %_3532
  %_3531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3530, i32 0, i32 1, i32 0
  store i64 3, i64* %_3531
  %_3533 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3523, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3530, { i64, [0 x i64] }** %_3533
  %_raw_array3524 = call i64* @oat_alloc_array(i64 2)
  %_array3525 = bitcast i64* %_raw_array3524 to { i64, [0 x i64] }*
  %_3527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3525, i32 0, i32 1, i32 1
  store i64 2, i64* %_3527
  %_3526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3525, i32 0, i32 1, i32 0
  store i64 1, i64* %_3526
  %_3528 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3523, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3525, { i64, [0 x i64] }** %_3528
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3523, { i64, [0 x { i64, [0 x i64] }*] }** %_3521
  %_3534 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3521
  %_3535 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3534, i32 0, i32 1, i32 0
  %_3536 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3535
  %_3537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3536, i32 0, i32 1, i32 0
  %_3538 = load i64, i64* %_3537
  ret i64 %_3538
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
