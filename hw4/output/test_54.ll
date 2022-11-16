; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_889 = alloca i64
  store i64 %argc, i64* %_889
  %_890 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_890
  %_raw_array891 = call i64* @oat_alloc_array(i64 3)
  %_array892 = bitcast i64* %_raw_array891 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array913 = call i64* @oat_alloc_array(i64 2)
  %_array914 = bitcast i64* %_raw_array913 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array920 = call i64* @oat_alloc_array(i64 2)
  %_array921 = bitcast i64* %_raw_array920 to { i64, [0 x i64] }*
  %_923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array921, i32 0, i32 1, i32 1
  store i64 40, i64* %_923
  %_922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array921, i32 0, i32 1, i32 0
  store i64 30, i64* %_922
  %_924 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array914, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array921, { i64, [0 x i64] }** %_924
  %_raw_array915 = call i64* @oat_alloc_array(i64 2)
  %_array916 = bitcast i64* %_raw_array915 to { i64, [0 x i64] }*
  %_918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array916, i32 0, i32 1, i32 1
  store i64 20, i64* %_918
  %_917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array916, i32 0, i32 1, i32 0
  store i64 10, i64* %_917
  %_919 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array914, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array916, { i64, [0 x i64] }** %_919
  %_925 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array892, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array914, { i64, [0 x { i64, [0 x i64] }*] }** %_925
  %_raw_array906 = call i64* @oat_alloc_array(i64 1)
  %_array907 = bitcast i64* %_raw_array906 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array908 = call i64* @oat_alloc_array(i64 1)
  %_array909 = bitcast i64* %_raw_array908 to { i64, [0 x i64] }*
  %_910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array909, i32 0, i32 1, i32 0
  store i64 5, i64* %_910
  %_911 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array907, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array909, { i64, [0 x i64] }** %_911
  %_912 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array892, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array907, { i64, [0 x { i64, [0 x i64] }*] }** %_912
  %_raw_array893 = call i64* @oat_alloc_array(i64 2)
  %_array894 = bitcast i64* %_raw_array893 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array900 = call i64* @oat_alloc_array(i64 2)
  %_array901 = bitcast i64* %_raw_array900 to { i64, [0 x i64] }*
  %_903 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array901, i32 0, i32 1, i32 1
  store i64 4, i64* %_903
  %_902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array901, i32 0, i32 1, i32 0
  store i64 3, i64* %_902
  %_904 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array894, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array901, { i64, [0 x i64] }** %_904
  %_raw_array895 = call i64* @oat_alloc_array(i64 2)
  %_array896 = bitcast i64* %_raw_array895 to { i64, [0 x i64] }*
  %_898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array896, i32 0, i32 1, i32 1
  store i64 2, i64* %_898
  %_897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array896, i32 0, i32 1, i32 0
  store i64 1, i64* %_897
  %_899 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array894, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array896, { i64, [0 x i64] }** %_899
  %_905 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array892, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array894, { i64, [0 x { i64, [0 x i64] }*] }** %_905
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array892, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_926 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_927 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_926, i32 0, i32 1, i32 2
  %_928 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_927
  %_929 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_928, i32 0, i32 1, i32 0
  %_930 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_929
  %_931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_930, i32 0, i32 1, i32 1
  %_932 = load i64, i64* %_931
  ret i64 %_932
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
