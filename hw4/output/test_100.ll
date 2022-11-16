; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_4057 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_4057
  %_4058 = alloca i64
  store i64 %len, i64* %_4058
  %_4059 = alloca i64
  %_4060 = alloca i64
  %_4083 = alloca i64
  store i64 1, i64* %_4059
  store i64 2, i64* %_4060
  br label %_4064
_4064:
  %_4061 = load i64, i64* %_4059
  %_4062 = load i64, i64* %_4058
  %_4063 = icmp slt i64 %_4061, %_4062
  br i1 %_4063, label %_4065, label %_4066
_4065:
  %_4067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4057
  %_4068 = load i64, i64* %_4059
  %_4069 = sub i64 %_4068, 1
  %_4070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4067, i32 0, i32 1, i64 %_4069
  %_4071 = load i64, i64* %_4070
  %_4072 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4057
  %_4073 = load i64, i64* %_4059
  %_4074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4072, i32 0, i32 1, i64 %_4073
  %_4075 = load i64, i64* %_4074
  %_4076 = icmp sle i64 %_4071, %_4075
  br i1 %_4076, label %_4077, label %_4078
_4077:
  %_4080 = load i64, i64* %_4060
  store i64 %_4080, i64* %_4059
  %_4081 = load i64, i64* %_4060
  %_4082 = add i64 %_4081, 1
  store i64 %_4082, i64* %_4060
  br label %_4079
_4078:
  %_4084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4057
  %_4085 = load i64, i64* %_4059
  %_4086 = sub i64 %_4085, 1
  %_4087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4084, i32 0, i32 1, i64 %_4086
  %_4088 = load i64, i64* %_4087
  store i64 %_4088, i64* %_4083
  %_4089 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4057
  %_4090 = load i64, i64* %_4059
  %_4091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4089, i32 0, i32 1, i64 %_4090
  %_4092 = load i64, i64* %_4091
  %_4094 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4057
  %_4095 = load i64, i64* %_4059
  %_4096 = sub i64 %_4095, 1
  %_4093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4094, i32 0, i32 1, i64 %_4096
  store i64 %_4092, i64* %_4093
  %_4097 = load i64, i64* %_4083
  %_4099 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4057
  %_4100 = load i64, i64* %_4059
  %_4098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4099, i32 0, i32 1, i64 %_4100
  store i64 %_4097, i64* %_4098
  %_4101 = load i64, i64* %_4059
  %_4102 = sub i64 %_4101, 1
  store i64 %_4102, i64* %_4059
  %_4103 = load i64, i64* %_4059
  %_4104 = icmp eq i64 %_4103, 0
  br i1 %_4104, label %_4105, label %_4106
_4105:
  %_4108 = load i64, i64* %_4060
  store i64 %_4108, i64* %_4059
  %_4109 = load i64, i64* %_4060
  %_4110 = add i64 %_4109, 1
  store i64 %_4110, i64* %_4060
  br label %_4107
_4106:
  br label %_4107
_4107:
  br label %_4079
_4079:
  br label %_4064
_4066:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4027 = alloca i64
  store i64 %argc, i64* %_4027
  %_4028 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4028
  %_4029 = alloca { i64, [0 x i64] }*
  %_4040 = alloca i64
  %_4044 = alloca i64
  %_raw_array4030 = call i64* @oat_alloc_array(i64 8)
  %_array4031 = bitcast i64* %_raw_array4030 to { i64, [0 x i64] }*
  %_4039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4031, i32 0, i32 1, i32 7
  store i64 0, i64* %_4039
  %_4038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4031, i32 0, i32 1, i32 6
  store i64 2, i64* %_4038
  %_4037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4031, i32 0, i32 1, i32 5
  store i64 99, i64* %_4037
  %_4036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4031, i32 0, i32 1, i32 4
  store i64 30, i64* %_4036
  %_4035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4031, i32 0, i32 1, i32 3
  store i64 65, i64* %_4035
  %_4034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4031, i32 0, i32 1, i32 2
  store i64 1, i64* %_4034
  %_4033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4031, i32 0, i32 1, i32 1
  store i64 200, i64* %_4033
  %_4032 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4031, i32 0, i32 1, i32 0
  store i64 5, i64* %_4032
  store { i64, [0 x i64] }* %_array4031, { i64, [0 x i64] }** %_4029
  store i64 8, i64* %_4040
  %_4042 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4029
  %_4043 = load i64, i64* %_4040
  call void @gnomeSort({ i64, [0 x i64] }* %_4042, i64 %_4043)
  store i64 0, i64* %_4044
  br label %_4047
_4047:
  %_4045 = load i64, i64* %_4044
  %_4046 = icmp slt i64 %_4045, 8
  br i1 %_4046, label %_4048, label %_4049
_4048:
  %_4051 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4029
  %_4052 = load i64, i64* %_4044
  %_4053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4051, i32 0, i32 1, i64 %_4052
  %_4054 = load i64, i64* %_4053
  call void @print_int(i64 %_4054)
  %_4055 = load i64, i64* %_4044
  %_4056 = add i64 %_4055, 1
  store i64 %_4056, i64* %_4044
  br label %_4047
_4049:
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
