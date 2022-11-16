; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_4134 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_4134
  %_4135 = alloca i64
  store i64 %size, i64* %_4135
  %_4136 = alloca { i64, [0 x i64] }*
  %_4140 = alloca i64
  %_4146 = alloca i64
  %_4153 = alloca i64
  %_4137 = load i64, i64* %_4135
  %_raw_array4138 = call i64* @oat_alloc_array(i64 %_4137)
  %_array4139 = bitcast i64* %_raw_array4138 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4139, { i64, [0 x i64] }** %_4136
  store i64 0, i64* %_4140
  %_4141 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4134
  %_4142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4141, i32 0, i32 1, i32 0
  %_4143 = load i64, i64* %_4142
  %_4145 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4136
  %_4144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4145, i32 0, i32 1, i32 0
  store i64 %_4143, i64* %_4144
  store i64 0, i64* %_4146
  br label %_4150
_4150:
  %_4147 = load i64, i64* %_4146
  %_4148 = load i64, i64* %_4135
  %_4149 = icmp slt i64 %_4147, %_4148
  br i1 %_4149, label %_4151, label %_4152
_4151:
  store i64 0, i64* %_4153
  br label %_4157
_4157:
  %_4154 = load i64, i64* %_4153
  %_4155 = load i64, i64* %_4146
  %_4156 = icmp slt i64 %_4154, %_4155
  br i1 %_4156, label %_4158, label %_4159
_4158:
  %_4160 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4134
  %_4161 = load i64, i64* %_4146
  %_4162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4160, i32 0, i32 1, i64 %_4161
  %_4163 = load i64, i64* %_4162
  %_4164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4134
  %_4165 = load i64, i64* %_4153
  %_4166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4164, i32 0, i32 1, i64 %_4165
  %_4167 = load i64, i64* %_4166
  %_4168 = icmp sgt i64 %_4163, %_4167
  %_4169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4136
  %_4170 = load i64, i64* %_4146
  %_4171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4169, i32 0, i32 1, i64 %_4170
  %_4172 = load i64, i64* %_4171
  %_4173 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4136
  %_4174 = load i64, i64* %_4153
  %_4175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4173, i32 0, i32 1, i64 %_4174
  %_4176 = load i64, i64* %_4175
  %_4177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4134
  %_4178 = load i64, i64* %_4146
  %_4179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4177, i32 0, i32 1, i64 %_4178
  %_4180 = load i64, i64* %_4179
  %_4181 = add i64 %_4176, %_4180
  %_4182 = icmp slt i64 %_4172, %_4181
  %_4183 = and i1 %_4168, %_4182
  br i1 %_4183, label %_4184, label %_4185
_4184:
  %_4187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4136
  %_4188 = load i64, i64* %_4153
  %_4189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4187, i32 0, i32 1, i64 %_4188
  %_4190 = load i64, i64* %_4189
  %_4191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4134
  %_4192 = load i64, i64* %_4146
  %_4193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4191, i32 0, i32 1, i64 %_4192
  %_4194 = load i64, i64* %_4193
  %_4195 = add i64 %_4190, %_4194
  %_4197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4136
  %_4198 = load i64, i64* %_4146
  %_4196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4197, i32 0, i32 1, i64 %_4198
  store i64 %_4195, i64* %_4196
  br label %_4186
_4185:
  br label %_4186
_4186:
  %_4199 = load i64, i64* %_4153
  %_4200 = add i64 %_4199, 1
  store i64 %_4200, i64* %_4153
  br label %_4157
_4159:
  %_4201 = load i64, i64* %_4140
  %_4202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4136
  %_4203 = load i64, i64* %_4146
  %_4204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4202, i32 0, i32 1, i64 %_4203
  %_4205 = load i64, i64* %_4204
  %_4206 = icmp slt i64 %_4201, %_4205
  br i1 %_4206, label %_4207, label %_4208
_4207:
  %_4210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4136
  %_4211 = load i64, i64* %_4146
  %_4212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4210, i32 0, i32 1, i64 %_4211
  %_4213 = load i64, i64* %_4212
  store i64 %_4213, i64* %_4140
  br label %_4209
_4208:
  br label %_4209
_4209:
  %_4214 = load i64, i64* %_4146
  %_4215 = add i64 %_4214, 1
  store i64 %_4215, i64* %_4146
  br label %_4150
_4152:
  %_4216 = load i64, i64* %_4140
  ret i64 %_4216
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4125 = alloca i64
  store i64 %argc, i64* %_4125
  %_4126 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4126
  %_4127 = alloca { i64, [0 x i64] }*
  %_4130 = alloca i64
  %_raw_array4128 = call i64* @oat_alloc_array(i64 7)
  %_array4129 = bitcast i64* %_raw_array4128 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4129, { i64, [0 x i64] }** %_4127
  %_4132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4127
  %_4131 = call i64 @maxsum({ i64, [0 x i64] }* %_4132, i64 7)
  store i64 %_4131, i64* %_4130
  %_4133 = load i64, i64* %_4130
  ret i64 %_4133
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
