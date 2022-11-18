; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4877 = alloca i64
  store i64 %argc, i64* %_4877
  %_4878 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4878
  %_4879 = alloca { i64, [0 x i64] }*
  %_raw_array4880 = call i64* @oat_alloc_array(i64 10)
  %_array4881 = bitcast i64* %_raw_array4880 to { i64, [0 x i64] }*
  %_4891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i32 9
  store i64 117, i64* %_4891
  %_4890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i32 8
  store i64 118, i64* %_4890
  %_4889 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i32 7
  store i64 119, i64* %_4889
  %_4888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i32 6
  store i64 120, i64* %_4888
  %_4887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i32 5
  store i64 121, i64* %_4887
  %_4886 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i32 4
  store i64 122, i64* %_4886
  %_4885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i32 3
  store i64 123, i64* %_4885
  %_4884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i32 2
  store i64 124, i64* %_4884
  %_4883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i32 1
  store i64 125, i64* %_4883
  %_4882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i32 0
  store i64 126, i64* %_4882
  store { i64, [0 x i64] }* %_array4881, { i64, [0 x i64] }** %_4879
  %_4894 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4879
  %_4893 = call i8* @string_of_array({ i64, [0 x i64] }* %_4894)
  call void @print_string(i8* %_4893)
  ret i64 0
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
