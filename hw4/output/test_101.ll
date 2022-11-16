; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_4149 to { i64, [0 x i64] }*)
@_4149 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_4148 to { i64, [0 x i64] }*)
@_4148 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_4122 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_4122
  %_4123 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_4123
  %_4124 = alloca i64
  store i64 %len, i64* %_4124
  %_4125 = alloca i64
  %_4126 = alloca i64
  store i64 0, i64* %_4125
  store i64 0, i64* %_4126
  br label %_4130
_4130:
  %_4127 = load i64, i64* %_4126
  %_4128 = load i64, i64* %_4124
  %_4129 = icmp slt i64 %_4127, %_4128
  br i1 %_4129, label %_4131, label %_4132
_4131:
  %_4133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4122
  %_4134 = load i64, i64* %_4126
  %_4135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4133, i32 0, i32 1, i64 %_4134
  %_4136 = load i64, i64* %_4135
  %_4137 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4123
  %_4138 = load i64, i64* %_4126
  %_4139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4137, i32 0, i32 1, i64 %_4138
  %_4140 = load i64, i64* %_4139
  %_4141 = icmp ne i64 %_4136, %_4140
  br i1 %_4141, label %_4142, label %_4143
_4142:
  store i64 1, i64* %_4125
  br label %_4144
_4143:
  br label %_4144
_4144:
  %_4145 = load i64, i64* %_4126
  %_4146 = add i64 %_4145, 1
  store i64 %_4146, i64* %_4126
  br label %_4130
_4132:
  %_4147 = load i64, i64* %_4125
  ret i64 %_4147
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4111 = alloca i64
  store i64 %argc, i64* %_4111
  %_4112 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4112
  %_4113 = alloca i64
  store i64 1, i64* %_4113
  %_4115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_4116 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_4114 = call i64 @arrcheck({ i64, [0 x i64] }* %_4115, { i64, [0 x i64] }* %_4116, i64 4)
  %_4117 = icmp eq i64 %_4114, 1
  br i1 %_4117, label %_4118, label %_4119
_4118:
  store i64 0, i64* %_4113
  br label %_4120
_4119:
  br label %_4120
_4120:
  %_4121 = load i64, i64* %_4113
  ret i64 %_4121
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
