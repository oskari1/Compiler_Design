; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_760 = alloca i64
  store i64 %argc, i64* %_760
  %_761 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_761
  %_raw_array762 = call i64* @oat_alloc_array(i64 2)
  %_array763 = bitcast i64* %_raw_array762 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array763, { i64, [0 x i64] }** @arr
  %_764 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_764, i32 0, i32 1, i32 1
  %_766 = load i64, i64* %_765
  ret i64 %_766
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
