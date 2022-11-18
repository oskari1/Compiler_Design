; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3482 = alloca i64
  store i64 %argc, i64* %_3482
  %_3483 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3483
  %_raw_array3484 = call i64* @oat_alloc_array(i64 2)
  %_array3485 = bitcast i64* %_raw_array3484 to { i64, [0 x i64] }*
  %_3487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3485, i32 0, i32 1, i32 1
  store i64 2, i64* %_3487
  %_3486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3485, i32 0, i32 1, i32 0
  store i64 1, i64* %_3486
  store { i64, [0 x i64] }* %_array3485, { i64, [0 x i64] }** @arr
  %_3488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_3489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3488, i32 0, i32 1, i32 1
  %_3490 = load i64, i64* %_3489
  ret i64 %_3490
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
