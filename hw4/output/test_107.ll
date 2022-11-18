; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_4902 = alloca i8*
  store i8* %str, i8** %_4902
  %_4903 = alloca i64
  store i64 %start, i64* %_4903
  %_4904 = alloca i64
  store i64 %len, i64* %_4904
  %_4905 = alloca { i64, [0 x i64] }*
  %_4908 = alloca { i64, [0 x i64] }*
  %_4912 = alloca i64
  %_4907 = load i8*, i8** %_4902
  %_4906 = call { i64, [0 x i64] }* @array_of_string(i8* %_4907)
  store { i64, [0 x i64] }* %_4906, { i64, [0 x i64] }** %_4905
  %_4909 = load i64, i64* %_4904
  %_raw_array4910 = call i64* @oat_alloc_array(i64 %_4909)
  %_array4911 = bitcast i64* %_raw_array4910 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4911, { i64, [0 x i64] }** %_4908
  store i64 0, i64* %_4912
  br label %_4916
_4916:
  %_4913 = load i64, i64* %_4912
  %_4914 = load i64, i64* %_4904
  %_4915 = icmp slt i64 %_4913, %_4914
  br i1 %_4915, label %_4917, label %_4918
_4917:
  %_4919 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4905
  %_4920 = load i64, i64* %_4912
  %_4921 = load i64, i64* %_4903
  %_4922 = add i64 %_4920, %_4921
  %_4923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4919, i32 0, i32 1, i64 %_4922
  %_4924 = load i64, i64* %_4923
  %_4926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4908
  %_4927 = load i64, i64* %_4912
  %_4925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4926, i32 0, i32 1, i64 %_4927
  store i64 %_4924, i64* %_4925
  %_4928 = load i64, i64* %_4912
  %_4929 = add i64 %_4928, 1
  store i64 %_4929, i64* %_4912
  br label %_4916
_4918:
  %_4931 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4908
  %_4930 = call i8* @string_of_array({ i64, [0 x i64] }* %_4931)
  ret i8* %_4930
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4895 = alloca i64
  store i64 %argc, i64* %_4895
  %_4896 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4896
  %_4899 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_4896
  %_4900 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_4899, i32 0, i32 1, i32 1
  %_4901 = load i8*, i8** %_4900
  %_4898 = call i8* @sub(i8* %_4901, i64 3, i64 5)
  call void @print_string(i8* %_4898)
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
