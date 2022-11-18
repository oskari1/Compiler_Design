; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_7167 to { i64, [0 x i64] }*)
@_7167 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_7095 = global [1 x i8] c"\00"
@_7074 = global [7 x i8] c"TOMATO\00"
@_7077 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_7083 = alloca i64
  store i64 %i, i64* %_7083
  %_7084 = alloca i64
  store i64 %j, i64* %_7084
  %_7085 = alloca i8*
  store i8* %a, i8** %_7085
  %_7086 = alloca i8*
  store i8* %b, i8** %_7086
  %_7097 = alloca { i64, [0 x i64] }*
  %_7100 = alloca { i64, [0 x i64] }*
  %_7103 = alloca i64
  %_7108 = alloca i64
  %_7119 = alloca i8*
  %_7133 = alloca i8*
  %_7139 = alloca i8*
  %_7146 = alloca i8*
  %_7153 = alloca i64
  %_7156 = alloca i64
  %_7087 = load i64, i64* %_7083
  %_7088 = icmp slt i64 %_7087, 0
  %_7089 = load i64, i64* %_7084
  %_7090 = icmp slt i64 %_7089, 0
  %_7091 = or i1 %_7088, %_7090
  br i1 %_7091, label %_7092, label %_7093
_7092:
  %_7096 = getelementptr [1 x i8], [1 x i8]* @_7095, i32 0, i32 0
  ret i8* %_7096
_7093:
  br label %_7094
_7094:
  %_7099 = load i8*, i8** %_7085
  %_7098 = call { i64, [0 x i64] }* @array_of_string(i8* %_7099)
  store { i64, [0 x i64] }* %_7098, { i64, [0 x i64] }** %_7097
  %_7102 = load i8*, i8** %_7086
  %_7101 = call { i64, [0 x i64] }* @array_of_string(i8* %_7102)
  store { i64, [0 x i64] }* %_7101, { i64, [0 x i64] }** %_7100
  %_7104 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7097
  %_7105 = load i64, i64* %_7083
  %_7106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7104, i32 0, i32 1, i64 %_7105
  %_7107 = load i64, i64* %_7106
  store i64 %_7107, i64* %_7103
  %_7109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7100
  %_7110 = load i64, i64* %_7084
  %_7111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7109, i32 0, i32 1, i64 %_7110
  %_7112 = load i64, i64* %_7111
  store i64 %_7112, i64* %_7108
  %_7113 = load i64, i64* %_7103
  %_7114 = load i64, i64* %_7108
  %_7115 = icmp eq i64 %_7113, %_7114
  br i1 %_7115, label %_7116, label %_7117
_7116:
  %_7121 = load i64, i64* %_7083
  %_7122 = sub i64 %_7121, 1
  %_7123 = load i64, i64* %_7084
  %_7124 = sub i64 %_7123, 1
  %_7125 = load i8*, i8** %_7085
  %_7126 = load i8*, i8** %_7086
  %_7120 = call i8* @lcs(i64 %_7122, i64 %_7124, i8* %_7125, i8* %_7126)
  store i8* %_7120, i8** %_7119
  %_7127 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7097
  %_7128 = load i64, i64* %_7083
  %_7129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7127, i32 0, i32 1, i64 %_7128
  %_7130 = load i64, i64* %_7129
  %_7132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_7131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7132, i32 0, i32 1, i32 0
  store i64 %_7130, i64* %_7131
  %_7135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_7134 = call i8* @string_of_array({ i64, [0 x i64] }* %_7135)
  store i8* %_7134, i8** %_7133
  %_7137 = load i8*, i8** %_7119
  %_7138 = load i8*, i8** %_7133
  %_7136 = call i8* @string_cat(i8* %_7137, i8* %_7138)
  ret i8* %_7136
_7117:
  br label %_7118
_7118:
  %_7141 = load i64, i64* %_7083
  %_7142 = load i64, i64* %_7084
  %_7143 = sub i64 %_7142, 1
  %_7144 = load i8*, i8** %_7085
  %_7145 = load i8*, i8** %_7086
  %_7140 = call i8* @lcs(i64 %_7141, i64 %_7143, i8* %_7144, i8* %_7145)
  store i8* %_7140, i8** %_7139
  %_7148 = load i64, i64* %_7083
  %_7149 = sub i64 %_7148, 1
  %_7150 = load i64, i64* %_7084
  %_7151 = load i8*, i8** %_7085
  %_7152 = load i8*, i8** %_7086
  %_7147 = call i8* @lcs(i64 %_7149, i64 %_7150, i8* %_7151, i8* %_7152)
  store i8* %_7147, i8** %_7146
  %_7155 = load i8*, i8** %_7139
  %_7154 = call i64 @length_of_string(i8* %_7155)
  store i64 %_7154, i64* %_7153
  %_7158 = load i8*, i8** %_7146
  %_7157 = call i64 @length_of_string(i8* %_7158)
  store i64 %_7157, i64* %_7156
  %_7159 = load i64, i64* %_7153
  %_7160 = load i64, i64* %_7156
  %_7161 = icmp slt i64 %_7159, %_7160
  br i1 %_7161, label %_7162, label %_7163
_7162:
  %_7165 = load i8*, i8** %_7146
  ret i8* %_7165
_7163:
  %_7166 = load i8*, i8** %_7139
  ret i8* %_7166
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_7071 = alloca i64
  store i64 %argc, i64* %_7071
  %_7072 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7072
  %_7073 = alloca i8*
  %_7076 = alloca i8*
  %_7075 = getelementptr [7 x i8], [7 x i8]* @_7074, i32 0, i32 0
  store i8* %_7075, i8** %_7073
  %_7078 = getelementptr [8 x i8], [8 x i8]* @_7077, i32 0, i32 0
  store i8* %_7078, i8** %_7076
  %_7081 = load i8*, i8** %_7073
  %_7082 = load i8*, i8** %_7076
  %_7080 = call i8* @lcs(i64 5, i64 6, i8* %_7081, i8* %_7082)
  call void @print_string(i8* %_7080)
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
