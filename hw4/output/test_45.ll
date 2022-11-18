; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_2955 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_2955
  %_2956 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_2956
  %_2957 = alloca i1
  store i1 %b, i1* %_2957
  %_2958 = load i1, i1* %_2957
  br i1 %_2958, label %_2959, label %_2960
_2959:
  %_2962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2955
  ret { i64, [0 x i64] }* %_2962
_2960:
  %_2963 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2956
  ret { i64, [0 x i64] }* %_2963
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2940 = alloca i64
  store i64 %argc, i64* %_2940
  %_2941 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2941
  %_2942 = alloca { i64, [0 x i64] }*
  %_2945 = alloca { i64, [0 x i64] }*
  %_raw_array2943 = call i64* @oat_alloc_array(i64 3)
  %_array2944 = bitcast i64* %_raw_array2943 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2944, { i64, [0 x i64] }** %_2942
  %_raw_array2946 = call i64* @oat_alloc_array(i64 3)
  %_array2947 = bitcast i64* %_raw_array2946 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2947, { i64, [0 x i64] }** %_2945
  %_2950 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2942
  %_2951 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2945
  %_2949 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_2950, { i64, [0 x i64] }* %_2951, i1 1)
  %_2948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2949, i32 0, i32 1, i32 0
  store i64 17, i64* %_2948
  %_2952 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2942
  %_2953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2952, i32 0, i32 1, i32 0
  %_2954 = load i64, i64* %_2953
  ret i64 %_2954
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
