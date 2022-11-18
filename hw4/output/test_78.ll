; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3583 = alloca i64
  store i64 %argc, i64* %_3583
  %_3584 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3584
  %_3585 = alloca { i64, [0 x i64] }*
  %_raw_array3586 = call i64* @oat_alloc_array(i64 2)
  %_array3587 = bitcast i64* %_raw_array3586 to { i64, [0 x i64] }*
  %_3589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3587, i32 0, i32 1, i32 1
  store i64 2, i64* %_3589
  %_3588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3587, i32 0, i32 1, i32 0
  store i64 1, i64* %_3588
  store { i64, [0 x i64] }* %_array3587, { i64, [0 x i64] }** %_3585
  %_3590 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3585
  %_3591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3590, i32 0, i32 1, i32 1
  %_3592 = load i64, i64* %_3591
  ret i64 %_3592
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
