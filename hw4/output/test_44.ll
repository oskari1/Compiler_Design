; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_2930 to { i64, [0 x i64] }*)
@_2930 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_2929 to { i64, [0 x i64] }*)
@_2929 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_2931 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_2931
  %_2932 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_2932
  %_2933 = alloca i1
  store i1 %b, i1* %_2933
  %_2934 = load i1, i1* %_2933
  br i1 %_2934, label %_2935, label %_2936
_2935:
  %_2938 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2931
  ret { i64, [0 x i64] }* %_2938
_2936:
  %_2939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2932
  ret { i64, [0 x i64] }* %_2939
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2920 = alloca i64
  store i64 %argc, i64* %_2920
  %_2921 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2921
  %_2924 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_2925 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_2923 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_2924, { i64, [0 x i64] }* %_2925, i1 1)
  %_2922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2923, i32 0, i32 1, i32 0
  store i64 17, i64* %_2922
  %_2926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_2927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2926, i32 0, i32 1, i32 0
  %_2928 = load i64, i64* %_2927
  ret i64 %_2928
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
