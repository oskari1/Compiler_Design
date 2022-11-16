; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_850 = alloca i64
  store i64 %argc, i64* %_850
  %_851 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_851
  %_raw_array852 = call i64* @oat_alloc_array(i64 2)
  %_array853 = bitcast i64* %_raw_array852 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array859 = call i64* @oat_alloc_array(i64 2)
  %_array860 = bitcast i64* %_raw_array859 to { i64, [0 x i64] }*
  %_862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array860, i32 0, i32 1, i32 1
  store i64 4, i64* %_862
  %_861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array860, i32 0, i32 1, i32 0
  store i64 3, i64* %_861
  %_863 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array853, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array860, { i64, [0 x i64] }** %_863
  %_raw_array854 = call i64* @oat_alloc_array(i64 2)
  %_array855 = bitcast i64* %_raw_array854 to { i64, [0 x i64] }*
  %_857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array855, i32 0, i32 1, i32 1
  store i64 2, i64* %_857
  %_856 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array855, i32 0, i32 1, i32 0
  store i64 1, i64* %_856
  %_858 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array853, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array855, { i64, [0 x i64] }** %_858
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array853, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_864 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_865 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_864, i32 0, i32 1, i32 1
  %_866 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_865
  %_867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_866, i32 0, i32 1, i32 1
  %_868 = load i64, i64* %_867
  ret i64 %_868
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
