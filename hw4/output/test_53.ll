; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_869 = alloca i64
  store i64 %argc, i64* %_869
  %_870 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_870
  %_871 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array872 = call i64* @oat_alloc_array(i64 2)
  %_array873 = bitcast i64* %_raw_array872 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array879 = call i64* @oat_alloc_array(i64 2)
  %_array880 = bitcast i64* %_raw_array879 to { i64, [0 x i64] }*
  %_882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array880, i32 0, i32 1, i32 1
  store i64 4, i64* %_882
  %_881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array880, i32 0, i32 1, i32 0
  store i64 3, i64* %_881
  %_883 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array873, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array880, { i64, [0 x i64] }** %_883
  %_raw_array874 = call i64* @oat_alloc_array(i64 2)
  %_array875 = bitcast i64* %_raw_array874 to { i64, [0 x i64] }*
  %_877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array875, i32 0, i32 1, i32 1
  store i64 2, i64* %_877
  %_876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array875, i32 0, i32 1, i32 0
  store i64 1, i64* %_876
  %_878 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array873, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array875, { i64, [0 x i64] }** %_878
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array873, { i64, [0 x { i64, [0 x i64] }*] }** %_871
  %_884 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_871
  %_885 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_884, i32 0, i32 1, i32 0
  %_886 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_885
  %_887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_886, i32 0, i32 1, i32 0
  %_888 = load i64, i64* %_887
  ret i64 %_888
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
