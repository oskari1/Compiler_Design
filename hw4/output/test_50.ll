; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_753 = alloca i64
  store i64 %argc, i64* %_753
  %_754 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_754
  %_raw_array755 = call i64* @oat_alloc_array(i64 2)
  %_array756 = bitcast i64* %_raw_array755 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array756, { i64, [0 x i64] }** @arr
  %_757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_757, i32 0, i32 1, i32 1
  %_759 = load i64, i64* %_758
  ret i64 %_759
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
