; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_780 = alloca i64
  store i64 %argc, i64* %_780
  %_781 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_781
  %_782 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array783 = call i64* @oat_alloc_array(i64 2)
  %_array784 = bitcast i64* %_raw_array783 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array787 = call i64* @oat_alloc_array(i64 2)
  %_array788 = bitcast i64* %_raw_array787 to { i64, [0 x i64] }*
  %_raw_array785 = call i64* @oat_alloc_array(i64 2)
  %_array786 = bitcast i64* %_raw_array785 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array784, { i64, [0 x { i64, [0 x i64] }*] }** %_782
  %_789 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_782
  %_790 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_789, i32 0, i32 1, i32 0
  %_791 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_790
  %_792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_791, i32 0, i32 1, i32 0
  %_793 = load i64, i64* %_792
  ret i64 %_793
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
