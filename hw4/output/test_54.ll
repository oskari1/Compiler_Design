; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_794 = alloca i64
  store i64 %argc, i64* %_794
  %_795 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_795
  %_raw_array796 = call i64* @oat_alloc_array(i64 3)
  %_array797 = bitcast i64* %_raw_array796 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array808 = call i64* @oat_alloc_array(i64 2)
  %_array809 = bitcast i64* %_raw_array808 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array812 = call i64* @oat_alloc_array(i64 2)
  %_array813 = bitcast i64* %_raw_array812 to { i64, [0 x i64] }*
  %_raw_array810 = call i64* @oat_alloc_array(i64 2)
  %_array811 = bitcast i64* %_raw_array810 to { i64, [0 x i64] }*
  %_raw_array804 = call i64* @oat_alloc_array(i64 1)
  %_array805 = bitcast i64* %_raw_array804 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array806 = call i64* @oat_alloc_array(i64 1)
  %_array807 = bitcast i64* %_raw_array806 to { i64, [0 x i64] }*
  %_raw_array798 = call i64* @oat_alloc_array(i64 2)
  %_array799 = bitcast i64* %_raw_array798 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array802 = call i64* @oat_alloc_array(i64 2)
  %_array803 = bitcast i64* %_raw_array802 to { i64, [0 x i64] }*
  %_raw_array800 = call i64* @oat_alloc_array(i64 2)
  %_array801 = bitcast i64* %_raw_array800 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array797, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_814 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_815 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_814, i32 0, i32 1, i32 2
  %_816 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_815
  %_817 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_816, i32 0, i32 1, i32 0
  %_818 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_817
  %_819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_818, i32 0, i32 1, i32 1
  %_820 = load i64, i64* %_819
  ret i64 %_820
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
