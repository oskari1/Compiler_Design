; generated from: ./dbernhard/length.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4845 = alloca i64
  store i64 %argc, i64* %_4845
  %_4846 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4846
  %_4847 = alloca i64
  %_4849 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_4846
  %_4850 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_4849, i32 0, i32 1, i32 1
  %_4851 = load i8*, i8** %_4850
  %_4848 = call i64 @length_of_string(i8* %_4851)
  store i64 %_4848, i64* %_4847
  %_4852 = load i64, i64* %_4847
  ret i64 %_4852
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
