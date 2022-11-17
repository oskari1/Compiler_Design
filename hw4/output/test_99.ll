; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_4026 to { i64, [0 x i1] }*)
@_4026 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_4011 = global [2 x i8] c"T\00"
@_4013 = global [2 x i8] c"F\00"
@_3984 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_4015 = alloca i1
  store i1 %x, i1* %_4015
  %_4016 = alloca i1
  store i1 %y, i1* %_4016
  %_4017 = load i1, i1* %_4015
  %_4018 = load i1, i1* %_4016
  %_4019 = icmp ne i1 %_4018, 0
  %_4020 = and i1 %_4017, %_4019
  %_4021 = load i1, i1* %_4015
  %_4022 = icmp ne i1 %_4021, 0
  %_4023 = load i1, i1* %_4016
  %_4024 = and i1 %_4022, %_4023
  %_4025 = or i1 %_4020, %_4024
  ret i1 %_4025
}

define i8* @string_of_bool(i1 %b) {
  %_4006 = alloca i1
  store i1 %b, i1* %_4006
  %_4007 = load i1, i1* %_4006
  br i1 %_4007, label %_4008, label %_4009
_4008:
  %_4012 = getelementptr [2 x i8], [2 x i8]* @_4011, i32 0, i32 0
  ret i8* %_4012
_4009:
  %_4014 = getelementptr [2 x i8], [2 x i8]* @_4013, i32 0, i32 0
  ret i8* %_4014
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_3989 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_3989
  %_3990 = alloca i64
  store i64 %len, i64* %_3990
  %_3991 = alloca i64
  store i64 0, i64* %_3991
  br label %_3995
_3995:
  %_3992 = load i64, i64* %_3991
  %_3993 = load i64, i64* %_3990
  %_3994 = icmp slt i64 %_3992, %_3993
  br i1 %_3994, label %_3996, label %_3997
_3996:
  %_4000 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3989
  %_4001 = load i64, i64* %_3991
  %_4002 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_4000, i32 0, i32 1, i64 %_4001
  %_4003 = load i1, i1* %_4002
  %_3999 = call i8* @string_of_bool(i1 %_4003)
  call void @print_string(i8* %_3999)
  %_4004 = load i64, i64* %_3991
  %_4005 = add i64 %_4004, 1
  store i64 %_4005, i64* %_3991
  br label %_3995
_3997:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3916 = alloca i64
  store i64 %argc, i64* %_3916
  %_3917 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3917
  %_3918 = alloca { i64, [0 x i1] }*
  %_3922 = alloca i64
  %_3938 = alloca i64
  %_3945 = alloca i1
  %_3957 = alloca i64
  %_3919 = load i64, i64* @lfsr_length
  %_raw_array3920 = call i64* @oat_alloc_array(i64 %_3919)
  %_array3921 = bitcast i64* %_raw_array3920 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3921, { i64, [0 x i1] }** %_3918
  store i64 0, i64* %_3922
  br label %_3926
_3926:
  %_3923 = load i64, i64* %_3922
  %_3924 = load i64, i64* @lfsr_length
  %_3925 = icmp slt i64 %_3923, %_3924
  br i1 %_3925, label %_3927, label %_3928
_3927:
  %_3929 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_3930 = load i64, i64* %_3922
  %_3931 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3929, i32 0, i32 1, i64 %_3930
  %_3932 = load i1, i1* %_3931
  %_3934 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3918
  %_3935 = load i64, i64* %_3922
  %_3933 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3934, i32 0, i32 1, i64 %_3935
  store i1 %_3932, i1* %_3933
  %_3936 = load i64, i64* %_3922
  %_3937 = add i64 %_3936, 1
  store i64 %_3937, i64* %_3922
  br label %_3926
_3928:
  store i64 0, i64* %_3938
  br label %_3942
_3942:
  %_3939 = load i64, i64* %_3938
  %_3940 = load i64, i64* @lfsr_iterations
  %_3941 = icmp slt i64 %_3939, %_3940
  br i1 %_3941, label %_3943, label %_3944
_3943:
  %_3947 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3918
  %_3948 = load i64, i64* @lfsr_length
  %_3949 = sub i64 %_3948, 1
  %_3950 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3947, i32 0, i32 1, i64 %_3949
  %_3951 = load i1, i1* %_3950
  %_3952 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3918
  %_3953 = load i64, i64* @lfsr_length
  %_3954 = sub i64 %_3953, 2
  %_3955 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3952, i32 0, i32 1, i64 %_3954
  %_3956 = load i1, i1* %_3955
  %_3946 = call i1 @xor(i1 %_3951, i1 %_3956)
  store i1 %_3946, i1* %_3945
  %_3958 = load i64, i64* @lfsr_length
  %_3959 = sub i64 %_3958, 1
  store i64 %_3959, i64* %_3957
  br label %_3962
_3962:
  %_3960 = load i64, i64* %_3957
  %_3961 = icmp sgt i64 %_3960, 0
  br i1 %_3961, label %_3963, label %_3964
_3963:
  %_3965 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3918
  %_3966 = load i64, i64* %_3957
  %_3967 = sub i64 %_3966, 1
  %_3968 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3965, i32 0, i32 1, i64 %_3967
  %_3969 = load i1, i1* %_3968
  %_3971 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3918
  %_3972 = load i64, i64* %_3957
  %_3970 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3971, i32 0, i32 1, i64 %_3972
  store i1 %_3969, i1* %_3970
  %_3973 = load i64, i64* %_3957
  %_3974 = sub i64 %_3973, 1
  store i64 %_3974, i64* %_3957
  br label %_3962
_3964:
  %_3975 = load i1, i1* %_3945
  %_3977 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3918
  %_3976 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_3977, i32 0, i32 1, i32 0
  store i1 %_3975, i1* %_3976
  %_3978 = load i64, i64* %_3938
  %_3979 = add i64 %_3978, 1
  store i64 %_3979, i64* %_3938
  br label %_3942
_3944:
  %_3981 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_3982 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_3981, i64 %_3982)
  %_3985 = getelementptr [2 x i8], [2 x i8]* @_3984, i32 0, i32 0
  call void @print_string(i8* %_3985)
  %_3987 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_3918
  %_3988 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_3987, i64 %_3988)
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
