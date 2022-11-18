; generated from: ./dbernhard/str_of_arr.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_7525 = alloca i64
  store i64 %argc, i64* %_7525
  %_7526 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7526
  %_7527 = alloca { i64, [0 x i64] }*
  %_7533 = alloca i8*
  %_raw_array7528 = call i64* @oat_alloc_array(i64 3)
  %_array7529 = bitcast i64* %_raw_array7528 to { i64, [0 x i64] }*
  %_7532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7529, i32 0, i32 1, i32 2
  store i64 100, i64* %_7532
  %_7531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7529, i32 0, i32 1, i32 1
  store i64 99, i64* %_7531
  %_7530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7529, i32 0, i32 1, i32 0
  store i64 98, i64* %_7530
  store { i64, [0 x i64] }* %_array7529, { i64, [0 x i64] }** %_7527
  %_7535 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7527
  %_7534 = call i8* @string_of_array({ i64, [0 x i64] }* %_7535)
  store i8* %_7534, i8** %_7533
  %_7537 = load i8*, i8** %_7533
  call void @print_string(i8* %_7537)
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
