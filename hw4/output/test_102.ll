; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_4172 = alloca i64
  store i64 %a, i64* %_4172
  %_4173 = alloca i64
  store i64 %b, i64* %_4173
  %_4179 = alloca i64
  br label %_4176
_4176:
  %_4174 = load i64, i64* %_4173
  %_4175 = icmp ne i64 %_4174, 0
  br i1 %_4175, label %_4177, label %_4178
_4177:
  %_4180 = load i64, i64* %_4173
  store i64 %_4180, i64* %_4179
  %_4182 = load i64, i64* %_4172
  %_4183 = load i64, i64* %_4173
  %_4181 = call i64 @mod(i64 %_4182, i64 %_4183)
  store i64 %_4181, i64* %_4173
  %_4184 = load i64, i64* %_4179
  store i64 %_4184, i64* %_4172
  br label %_4176
_4178:
  %_4185 = load i64, i64* %_4172
  ret i64 %_4185
}

define i64 @mod(i64 %a, i64 %b) {
  %_4157 = alloca i64
  store i64 %a, i64* %_4157
  %_4158 = alloca i64
  store i64 %b, i64* %_4158
  %_4159 = alloca i64
  %_4160 = load i64, i64* %_4157
  store i64 %_4160, i64* %_4159
  br label %_4165
_4165:
  %_4161 = load i64, i64* %_4159
  %_4162 = load i64, i64* %_4158
  %_4163 = sub i64 %_4161, %_4162
  %_4164 = icmp sge i64 %_4163, 0
  br i1 %_4164, label %_4166, label %_4167
_4166:
  %_4168 = load i64, i64* %_4159
  %_4169 = load i64, i64* %_4158
  %_4170 = sub i64 %_4168, %_4169
  store i64 %_4170, i64* %_4159
  br label %_4165
_4167:
  %_4171 = load i64, i64* %_4159
  ret i64 %_4171
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4150 = alloca i64
  store i64 %argc, i64* %_4150
  %_4151 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4151
  %_4152 = alloca i64
  %_4153 = alloca i64
  store i64 64, i64* %_4152
  store i64 48, i64* %_4153
  %_4155 = load i64, i64* %_4152
  %_4156 = load i64, i64* %_4153
  %_4154 = call i64 @gcd(i64 %_4155, i64 %_4156)
  ret i64 %_4154
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
