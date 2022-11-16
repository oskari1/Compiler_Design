; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_4041 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_4041
  %_4042 = alloca i64
  store i64 %len, i64* %_4042
  %_4043 = alloca i64
  store i64 %insertee, i64* %_4043
  %_4044 = alloca { i64, [0 x i64] }*
  %_4049 = alloca i64
  %_4063 = alloca i1
  %_4075 = alloca i64
  %_4045 = load i64, i64* %_4042
  %_4046 = add i64 %_4045, 1
  %_raw_array4047 = call i64* @oat_alloc_array(i64 %_4046)
  %_array4048 = bitcast i64* %_raw_array4047 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4048, { i64, [0 x i64] }** %_4044
  store i64 0, i64* %_4049
  br label %_4054
_4054:
  %_4050 = load i64, i64* %_4049
  %_4051 = load i64, i64* %_4042
  %_4052 = add i64 %_4051, 1
  %_4053 = icmp slt i64 %_4050, %_4052
  br i1 %_4053, label %_4055, label %_4056
_4055:
  %_4057 = sub i64 0, 1
  %_4059 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4044
  %_4060 = load i64, i64* %_4049
  %_4058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4059, i32 0, i32 1, i64 %_4060
  store i64 %_4057, i64* %_4058
  %_4061 = load i64, i64* %_4049
  %_4062 = add i64 %_4061, 1
  store i64 %_4062, i64* %_4049
  br label %_4054
_4056:
  store i1 1, i1* %_4063
  %_4064 = load i64, i64* %_4043
  %_4065 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4041
  %_4066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4065, i32 0, i32 1, i32 0
  %_4067 = load i64, i64* %_4066
  %_4068 = icmp slt i64 %_4064, %_4067
  br i1 %_4068, label %_4069, label %_4070
_4069:
  store i1 0, i1* %_4063
  %_4072 = load i64, i64* %_4043
  %_4074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4044
  %_4073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4074, i32 0, i32 1, i32 0
  store i64 %_4072, i64* %_4073
  br label %_4071
_4070:
  br label %_4071
_4071:
  store i64 0, i64* %_4075
  br label %_4079
_4079:
  %_4076 = load i64, i64* %_4075
  %_4077 = load i64, i64* %_4042
  %_4078 = icmp slt i64 %_4076, %_4077
  br i1 %_4078, label %_4080, label %_4081
_4080:
  %_4082 = load i1, i1* %_4063
  br i1 %_4082, label %_4083, label %_4084
_4083:
  %_4086 = load i64, i64* %_4043
  %_4087 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4041
  %_4088 = load i64, i64* %_4075
  %_4089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4087, i32 0, i32 1, i64 %_4088
  %_4090 = load i64, i64* %_4089
  %_4091 = icmp sgt i64 %_4086, %_4090
  br i1 %_4091, label %_4092, label %_4093
_4092:
  store i1 0, i1* %_4063
  %_4095 = load i64, i64* %_4043
  %_4097 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4044
  %_4098 = load i64, i64* %_4075
  %_4099 = add i64 %_4098, 1
  %_4096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4097, i32 0, i32 1, i64 %_4099
  store i64 %_4095, i64* %_4096
  %_4100 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4041
  %_4101 = load i64, i64* %_4075
  %_4102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4100, i32 0, i32 1, i64 %_4101
  %_4103 = load i64, i64* %_4102
  %_4105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4044
  %_4106 = load i64, i64* %_4075
  %_4104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4105, i32 0, i32 1, i64 %_4106
  store i64 %_4103, i64* %_4104
  br label %_4094
_4093:
  %_4107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4041
  %_4108 = load i64, i64* %_4075
  %_4109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4107, i32 0, i32 1, i64 %_4108
  %_4110 = load i64, i64* %_4109
  %_4112 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4044
  %_4113 = load i64, i64* %_4075
  %_4111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4112, i32 0, i32 1, i64 %_4113
  store i64 %_4110, i64* %_4111
  br label %_4094
_4094:
  br label %_4085
_4084:
  %_4114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4041
  %_4115 = load i64, i64* %_4075
  %_4116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4114, i32 0, i32 1, i64 %_4115
  %_4117 = load i64, i64* %_4116
  %_4119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4044
  %_4120 = load i64, i64* %_4075
  %_4121 = add i64 %_4120, 1
  %_4118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4119, i32 0, i32 1, i64 %_4121
  store i64 %_4117, i64* %_4118
  br label %_4085
_4085:
  %_4122 = load i64, i64* %_4075
  %_4123 = add i64 %_4122, 1
  store i64 %_4123, i64* %_4075
  br label %_4079
_4081:
  %_4124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4044
  ret { i64, [0 x i64] }* %_4124
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_4014 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_4014
  %_4015 = alloca i64
  store i64 %len, i64* %_4015
  %_4016 = alloca { i64, [0 x i64] }*
  %_4024 = alloca i64
  %_raw_array4017 = call i64* @oat_alloc_array(i64 1)
  %_array4018 = bitcast i64* %_raw_array4017 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4018, { i64, [0 x i64] }** %_4016
  %_4019 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4014
  %_4020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4019, i32 0, i32 1, i32 0
  %_4021 = load i64, i64* %_4020
  %_4023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4016
  %_4022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4023, i32 0, i32 1, i32 0
  store i64 %_4021, i64* %_4022
  store i64 1, i64* %_4024
  br label %_4028
_4028:
  %_4025 = load i64, i64* %_4024
  %_4026 = load i64, i64* %_4015
  %_4027 = icmp slt i64 %_4025, %_4026
  br i1 %_4027, label %_4029, label %_4030
_4029:
  %_4032 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4016
  %_4033 = load i64, i64* %_4024
  %_4034 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4014
  %_4035 = load i64, i64* %_4024
  %_4036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4034, i32 0, i32 1, i64 %_4035
  %_4037 = load i64, i64* %_4036
  %_4031 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_4032, i64 %_4033, i64 %_4037)
  store { i64, [0 x i64] }* %_4031, { i64, [0 x i64] }** %_4016
  %_4038 = load i64, i64* %_4024
  %_4039 = add i64 %_4038, 1
  store i64 %_4039, i64* %_4024
  br label %_4028
_4030:
  %_4040 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4016
  ret { i64, [0 x i64] }* %_4040
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4003 = alloca i64
  store i64 %argc, i64* %_4003
  %_4004 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4004
  %_4005 = alloca { i64, [0 x i64] }*
  %_4008 = alloca { i64, [0 x i64] }*
  %_raw_array4006 = call i64* @oat_alloc_array(i64 6)
  %_array4007 = bitcast i64* %_raw_array4006 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4007, { i64, [0 x i64] }** %_4005
  %_4010 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4005
  %_4009 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_4010, i64 6)
  store { i64, [0 x i64] }* %_4009, { i64, [0 x i64] }** %_4008
  %_4011 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4008
  %_4012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4011, i32 0, i32 1, i32 5
  %_4013 = load i64, i64* %_4012
  ret i64 %_4013
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
