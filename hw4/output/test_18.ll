; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_189 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_189
  %_190 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_190
  %_191 = alloca i1
  store i1 %b, i1* %_191
  %_192 = load i1, i1* %_191
  br i1 %_192, label %_193, label %_194
_193:
  %_196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_189
  ret { i64, [0 x i64] }* %_196
_194:
  %_197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_190
  ret { i64, [0 x i64] }* %_197
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_149 = alloca i64
  store i64 %argc, i64* %_149
  %_150 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_150
  %_151 = alloca { i64, [0 x i64] }*
  %_154 = alloca i64
  %_166 = alloca { i64, [0 x i64] }*
  %_169 = alloca i64
  %_raw_array152 = call i64* @oat_alloc_array(i64 3)
  %_array153 = bitcast i64* %_raw_array152 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array153, { i64, [0 x i64] }** %_151
  store i64 0, i64* %_154
  br label %_157
_157:
  %_155 = load i64, i64* %_154
  %_156 = icmp slt i64 %_155, 3
  br i1 %_156, label %_158, label %_159
_158:
  %_160 = load i64, i64* %_154
  %_162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_151
  %_163 = load i64, i64* %_154
  %_161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_162, i32 0, i32 1, i64 %_163
  store i64 %_160, i64* %_161
  %_164 = load i64, i64* %_154
  %_165 = add i64 %_164, 1
  store i64 %_165, i64* %_154
  br label %_157
_159:
  %_raw_array167 = call i64* @oat_alloc_array(i64 3)
  %_array168 = bitcast i64* %_raw_array167 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array168, { i64, [0 x i64] }** %_166
  store i64 0, i64* %_169
  br label %_172
_172:
  %_170 = load i64, i64* %_169
  %_171 = icmp slt i64 %_170, 3
  br i1 %_171, label %_173, label %_174
_173:
  %_175 = load i64, i64* %_169
  %_176 = add i64 %_175, 3
  %_178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_166
  %_179 = load i64, i64* %_169
  %_177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_178, i32 0, i32 1, i64 %_179
  store i64 %_176, i64* %_177
  %_180 = load i64, i64* %_169
  %_181 = add i64 %_180, 1
  store i64 %_181, i64* %_169
  br label %_172
_174:
  %_184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_151
  %_185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_166
  %_183 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_184, { i64, [0 x i64] }* %_185, i1 1)
  %_182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_183, i32 0, i32 1, i32 0
  store i64 17, i64* %_182
  %_186 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_151
  %_187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_186, i32 0, i32 1, i32 0
  %_188 = load i64, i64* %_187
  ret i64 %_188
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
