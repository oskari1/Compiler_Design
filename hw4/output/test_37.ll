; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_540 = alloca i64
  store i64 %argc, i64* %_540
  %_541 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_541
  %_542 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array543 = call i64* @oat_alloc_array(i64 2)
  %_array544 = bitcast i64* %_raw_array543 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array550 = call i64* @oat_alloc_array(i64 2)
  %_array551 = bitcast i64* %_raw_array550 to { i64, [0 x i64] }*
  %_553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array551, i32 0, i32 1, i32 1
  store i64 4, i64* %_553
  %_552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array551, i32 0, i32 1, i32 0
  store i64 3, i64* %_552
  %_554 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array544, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array551, { i64, [0 x i64] }** %_554
  %_raw_array545 = call i64* @oat_alloc_array(i64 2)
  %_array546 = bitcast i64* %_raw_array545 to { i64, [0 x i64] }*
  %_548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array546, i32 0, i32 1, i32 1
  store i64 2, i64* %_548
  %_547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array546, i32 0, i32 1, i32 0
  store i64 1, i64* %_547
  %_549 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array544, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array546, { i64, [0 x i64] }** %_549
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array544, { i64, [0 x { i64, [0 x i64] }*] }** %_542
  %_555 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_542
  %_556 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_555, i32 0, i32 1, i32 0
  %_557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_556
  %_558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_557, i32 0, i32 1, i32 1
  %_559 = load i64, i64* %_558
  ret i64 %_559
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
