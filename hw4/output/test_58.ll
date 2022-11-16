; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_916 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_916
  %_917 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_916
  %_918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_917, i32 0, i32 1, i32 3
  %_919 = load i64, i64* %_918
  ret i64 %_919
}

define { i64, [0 x i64] }* @g() {
  %_912 = alloca { i64, [0 x i64] }*
  %_raw_array913 = call i64* @oat_alloc_array(i64 4)
  %_array914 = bitcast i64* %_raw_array913 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array914, { i64, [0 x i64] }** %_912
  %_915 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_912
  ret { i64, [0 x i64] }* %_915
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_862 = alloca i64
  store i64 %argc, i64* %_862
  %_863 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_863
  %_864 = alloca { i64, [0 x i64] }*
  %_867 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_876 = alloca i64
  %_877 = alloca { i64, [0 x i64] }*
  %_879 = alloca { i64, [0 x i64] }*
  %_raw_array865 = call i64* @oat_alloc_array(i64 3)
  %_array866 = bitcast i64* %_raw_array865 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array866, { i64, [0 x i64] }** %_864
  %_raw_array868 = call i64* @oat_alloc_array(i64 3)
  %_array869 = bitcast i64* %_raw_array868 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array874 = call i64* @oat_alloc_array(i64 3)
  %_array875 = bitcast i64* %_raw_array874 to { i64, [0 x i64] }*
  %_raw_array872 = call i64* @oat_alloc_array(i64 3)
  %_array873 = bitcast i64* %_raw_array872 to { i64, [0 x i64] }*
  %_raw_array870 = call i64* @oat_alloc_array(i64 3)
  %_array871 = bitcast i64* %_raw_array870 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array869, { i64, [0 x { i64, [0 x i64] }*] }** %_867
  store i64 1, i64* %_876
  %_878 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_878, { i64, [0 x i64] }** %_877
  %_raw_array880 = call i64* @oat_alloc_array(i64 4)
  %_array881 = bitcast i64* %_raw_array880 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array881, { i64, [0 x i64] }** %_879
  %_882 = load i64, i64* %_876
  %_883 = load i64, i64* @i
  %_884 = add i64 %_882, %_883
  store i64 %_884, i64* %_876
  %_885 = load i64, i64* %_876
  %_886 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_864
  %_887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_886, i32 0, i32 1, i32 1
  %_888 = load i64, i64* %_887
  %_889 = add i64 %_885, %_888
  store i64 %_889, i64* %_876
  %_890 = load i64, i64* %_876
  %_891 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_867
  %_892 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_891, i32 0, i32 1, i32 1
  %_893 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_892
  %_894 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_893, i32 0, i32 1, i32 1
  %_895 = load i64, i64* %_894
  %_896 = add i64 %_890, %_895
  store i64 %_896, i64* %_876
  %_897 = load i64, i64* %_876
  %_898 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_879
  %_899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_898, i32 0, i32 1, i32 3
  %_900 = load i64, i64* %_899
  %_901 = add i64 %_897, %_900
  store i64 %_901, i64* %_876
  %_902 = load i64, i64* %_876
  %_904 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_879
  %_903 = call i64 @f({ i64, [0 x i64] }* %_904)
  %_905 = add i64 %_902, %_903
  store i64 %_905, i64* %_876
  %_906 = load i64, i64* %_876
  %_907 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_877
  %_908 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_907, i32 0, i32 1, i32 1
  %_909 = load i64, i64* %_908
  %_910 = add i64 %_906, %_909
  store i64 %_910, i64* %_876
  %_911 = load i64, i64* %_876
  ret i64 %_911
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
