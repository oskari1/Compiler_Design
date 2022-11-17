; generated from: ./dbernhard/arr_of_string.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4853 = alloca i64
  store i64 %argc, i64* %_4853
  %_4854 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4854
  %_4855 = alloca { i64, [0 x i64] }*
  %_4857 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_4854
  %_4858 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_4857, i32 0, i32 1, i32 1
  %_4859 = load i8*, i8** %_4858
  %_4856 = call { i64, [0 x i64] }* @array_of_string(i8* %_4859)
  store { i64, [0 x i64] }* %_4856, { i64, [0 x i64] }** %_4855
  %_4860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4855
  %_4861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4860, i32 0, i32 1, i32 1
  %_4862 = load i64, i64* %_4861
  ret i64 %_4862
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
