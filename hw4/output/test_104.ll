; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_4002 to { i64, [0 x i64] }*)
@_4002 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_3930 = global [1 x i8] c"\00"
@_3909 = global [7 x i8] c"TOMATO\00"
@_3912 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_3918 = alloca i64
  store i64 %i, i64* %_3918
  %_3919 = alloca i64
  store i64 %j, i64* %_3919
  %_3920 = alloca i8*
  store i8* %a, i8** %_3920
  %_3921 = alloca i8*
  store i8* %b, i8** %_3921
  %_3932 = alloca { i64, [0 x i64] }*
  %_3935 = alloca { i64, [0 x i64] }*
  %_3938 = alloca i64
  %_3943 = alloca i64
  %_3954 = alloca i8*
  %_3968 = alloca i8*
  %_3974 = alloca i8*
  %_3981 = alloca i8*
  %_3988 = alloca i64
  %_3991 = alloca i64
  %_3922 = load i64, i64* %_3918
  %_3923 = icmp slt i64 %_3922, 0
  %_3924 = load i64, i64* %_3919
  %_3925 = icmp slt i64 %_3924, 0
  %_3926 = or i1 %_3923, %_3925
  br i1 %_3926, label %_3927, label %_3928
_3927:
  %_3931 = getelementptr [1 x i8], [1 x i8]* @_3930, i32 0, i32 0
  ret i8* %_3931
_3928:
  br label %_3929
_3929:
  %_3934 = load i8*, i8** %_3920
  %_3933 = call { i64, [0 x i64] }* @array_of_string(i8* %_3934)
  store { i64, [0 x i64] }* %_3933, { i64, [0 x i64] }** %_3932
  %_3937 = load i8*, i8** %_3921
  %_3936 = call { i64, [0 x i64] }* @array_of_string(i8* %_3937)
  store { i64, [0 x i64] }* %_3936, { i64, [0 x i64] }** %_3935
  %_3939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3932
  %_3940 = load i64, i64* %_3918
  %_3941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3939, i32 0, i32 1, i64 %_3940
  %_3942 = load i64, i64* %_3941
  store i64 %_3942, i64* %_3938
  %_3944 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3935
  %_3945 = load i64, i64* %_3919
  %_3946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3944, i32 0, i32 1, i64 %_3945
  %_3947 = load i64, i64* %_3946
  store i64 %_3947, i64* %_3943
  %_3948 = load i64, i64* %_3938
  %_3949 = load i64, i64* %_3943
  %_3950 = icmp eq i64 %_3948, %_3949
  br i1 %_3950, label %_3951, label %_3952
_3951:
  %_3956 = load i64, i64* %_3918
  %_3957 = sub i64 %_3956, 1
  %_3958 = load i64, i64* %_3919
  %_3959 = sub i64 %_3958, 1
  %_3960 = load i8*, i8** %_3920
  %_3961 = load i8*, i8** %_3921
  %_3955 = call i8* @lcs(i64 %_3957, i64 %_3959, i8* %_3960, i8* %_3961)
  store i8* %_3955, i8** %_3954
  %_3962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3932
  %_3963 = load i64, i64* %_3918
  %_3964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3962, i32 0, i32 1, i64 %_3963
  %_3965 = load i64, i64* %_3964
  %_3967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_3966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3967, i32 0, i32 1, i32 0
  store i64 %_3965, i64* %_3966
  %_3970 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_3969 = call i8* @string_of_array({ i64, [0 x i64] }* %_3970)
  store i8* %_3969, i8** %_3968
  %_3972 = load i8*, i8** %_3954
  %_3973 = load i8*, i8** %_3968
  %_3971 = call i8* @string_cat(i8* %_3972, i8* %_3973)
  ret i8* %_3971
_3952:
  br label %_3953
_3953:
  %_3976 = load i64, i64* %_3918
  %_3977 = load i64, i64* %_3919
  %_3978 = sub i64 %_3977, 1
  %_3979 = load i8*, i8** %_3920
  %_3980 = load i8*, i8** %_3921
  %_3975 = call i8* @lcs(i64 %_3976, i64 %_3978, i8* %_3979, i8* %_3980)
  store i8* %_3975, i8** %_3974
  %_3983 = load i64, i64* %_3918
  %_3984 = sub i64 %_3983, 1
  %_3985 = load i64, i64* %_3919
  %_3986 = load i8*, i8** %_3920
  %_3987 = load i8*, i8** %_3921
  %_3982 = call i8* @lcs(i64 %_3984, i64 %_3985, i8* %_3986, i8* %_3987)
  store i8* %_3982, i8** %_3981
  %_3990 = load i8*, i8** %_3974
  %_3989 = call i64 @length_of_string(i8* %_3990)
  store i64 %_3989, i64* %_3988
  %_3993 = load i8*, i8** %_3981
  %_3992 = call i64 @length_of_string(i8* %_3993)
  store i64 %_3992, i64* %_3991
  %_3994 = load i64, i64* %_3988
  %_3995 = load i64, i64* %_3991
  %_3996 = icmp slt i64 %_3994, %_3995
  br i1 %_3996, label %_3997, label %_3998
_3997:
  %_4000 = load i8*, i8** %_3981
  ret i8* %_4000
_3998:
  %_4001 = load i8*, i8** %_3974
  ret i8* %_4001
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3906 = alloca i64
  store i64 %argc, i64* %_3906
  %_3907 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3907
  %_3908 = alloca i8*
  %_3911 = alloca i8*
  %_3910 = getelementptr [7 x i8], [7 x i8]* @_3909, i32 0, i32 0
  store i8* %_3910, i8** %_3908
  %_3913 = getelementptr [8 x i8], [8 x i8]* @_3912, i32 0, i32 0
  store i8* %_3913, i8** %_3911
  %_3916 = load i8*, i8** %_3908
  %_3917 = load i8*, i8** %_3911
  %_3915 = call i8* @lcs(i64 5, i64 6, i8* %_3916, i8* %_3917)
  call void @print_string(i8* %_3915)
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
