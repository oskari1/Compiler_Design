; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_2984 to { i64, [0 x i64] }*)
@_2984 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_2983 to { i64, [0 x i64] }*)
@_2983 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_2985 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_2985
  %_2986 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_2986
  %_2987 = alloca i1
  store i1 %b, i1* %_2987
  %_2988 = load i1, i1* %_2987
  br i1 %_2988, label %_2989, label %_2990
_2989:
  %_2992 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2985
  ret { i64, [0 x i64] }* %_2992
_2990:
  %_2993 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2986
  ret { i64, [0 x i64] }* %_2993
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2964 = alloca i64
  store i64 %argc, i64* %_2964
  %_2965 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2965
  %_2970 = alloca i64
  %_2968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_2969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_2967 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_2968, { i64, [0 x i64] }* %_2969, i1 1)
  %_2966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2967, i32 0, i32 1, i32 0
  store i64 17, i64* %_2966
  %_2972 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_2973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_2971 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_2972, { i64, [0 x i64] }* %_2973, i1 1)
  %_2974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2971, i32 0, i32 1, i32 0
  %_2975 = load i64, i64* %_2974
  %_2977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_2978 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_2976 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_2977, { i64, [0 x i64] }* %_2978, i1 0)
  %_2979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2976, i32 0, i32 1, i32 0
  %_2980 = load i64, i64* %_2979
  %_2981 = add i64 %_2975, %_2980
  store i64 %_2981, i64* %_2970
  %_2982 = load i64, i64* %_2970
  ret i64 %_2982
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
