; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_121 = alloca i64
  store i64 %argc, i64* %_121
  %_122 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_122
  %_123 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_142 = alloca i64
  %_143 = alloca i64
  %_raw_array124 = call i64* @oat_alloc_array(i64 4)
  %_array125 = bitcast i64* %_raw_array124 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array138 = call i64* @oat_alloc_array(i64 1)
  %_array139 = bitcast i64* %_raw_array138 to { i64, [0 x i64] }*
  %_140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array139, i32 0, i32 1, i32 0
  store i64 4, i64* %_140
  %_141 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array125, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array139, { i64, [0 x i64] }** %_141
  %_raw_array134 = call i64* @oat_alloc_array(i64 1)
  %_array135 = bitcast i64* %_raw_array134 to { i64, [0 x i64] }*
  %_136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array135, i32 0, i32 1, i32 0
  store i64 3, i64* %_136
  %_137 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array125, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array135, { i64, [0 x i64] }** %_137
  %_raw_array130 = call i64* @oat_alloc_array(i64 1)
  %_array131 = bitcast i64* %_raw_array130 to { i64, [0 x i64] }*
  %_132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array131, i32 0, i32 1, i32 0
  store i64 2, i64* %_132
  %_133 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array125, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array131, { i64, [0 x i64] }** %_133
  %_raw_array126 = call i64* @oat_alloc_array(i64 1)
  %_array127 = bitcast i64* %_raw_array126 to { i64, [0 x i64] }*
  %_128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array127, i32 0, i32 1, i32 0
  store i64 1, i64* %_128
  %_129 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array125, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array127, { i64, [0 x i64] }** %_129
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array125, { i64, [0 x { i64, [0 x i64] }*] }** %_123
  store i64 0, i64* %_142
  store i64 0, i64* %_143
  br label %_146
_146:
  %_144 = load i64, i64* %_143
  %_145 = icmp slt i64 %_144, 4
  br i1 %_145, label %_147, label %_148
_147:
  %_149 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_123
  %_150 = load i64, i64* %_143
  %_151 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_149, i32 0, i32 1, i64 %_150
  %_152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_151
  %_153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_152, i32 0, i32 1, i32 0
  %_154 = load i64, i64* %_153
  %_155 = load i64, i64* %_142
  %_156 = sub i64 %_154, %_155
  store i64 %_156, i64* %_142
  %_157 = load i64, i64* %_143
  %_158 = add i64 %_157, 1
  store i64 %_158, i64* %_143
  br label %_146
_148:
  %_159 = xor i64 -1, 5
  %_160 = and i64 5, %_159
  %_161 = or i64 %_160, 0
  %_162 = icmp ne i64 %_161, 0
  br i1 %_162, label %_163, label %_164
_163:
  %_166 = load i64, i64* %_142
  ret i64 %_166
_164:
  %_167 = load i64, i64* %_142
  %_168 = sub i64 0, %_167
  ret i64 %_168
_165:
  %_169 = load i64, i64* %_142
  ret i64 %_169
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
