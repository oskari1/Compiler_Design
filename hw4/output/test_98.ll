; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4694 = alloca i64
  store i64 %argc, i64* %_4694
  %_4695 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4695
  %_4696 = alloca i8*
  %_raw_array4698 = call i64* @oat_alloc_array(i64 3)
  %_array4699 = bitcast i64* %_raw_array4698 to { i64, [0 x i64] }*
  %_4702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4699, i32 0, i32 1, i32 2
  store i64 110, i64* %_4702
  %_4701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4699, i32 0, i32 1, i32 1
  store i64 110, i64* %_4701
  %_4700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4699, i32 0, i32 1, i32 0
  store i64 110, i64* %_4700
  %_4697 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4699)
  store i8* %_4697, i8** %_4696
  %_4704 = load i8*, i8** %_4696
  call void @print_string(i8* %_4704)
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
