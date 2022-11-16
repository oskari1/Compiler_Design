; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_117 = alloca i64
  store i64 %argc, i64* %_117
  %_118 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_118
  %_119 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_130 = alloca i64
  %_131 = alloca i64
  %_raw_array120 = call i64* @oat_alloc_array(i64 4)
  %_array121 = bitcast i64* %_raw_array120 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array128 = call i64* @oat_alloc_array(i64 1)
  %_array129 = bitcast i64* %_raw_array128 to { i64, [0 x i64] }*
  %_raw_array126 = call i64* @oat_alloc_array(i64 1)
  %_array127 = bitcast i64* %_raw_array126 to { i64, [0 x i64] }*
  %_raw_array124 = call i64* @oat_alloc_array(i64 1)
  %_array125 = bitcast i64* %_raw_array124 to { i64, [0 x i64] }*
  %_raw_array122 = call i64* @oat_alloc_array(i64 1)
  %_array123 = bitcast i64* %_raw_array122 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array121, { i64, [0 x { i64, [0 x i64] }*] }** %_119
  store i64 0, i64* %_130
  store i64 0, i64* %_131
  br label %_134
_134:
  %_132 = load i64, i64* %_131
  %_133 = icmp slt i64 %_132, 4
  br i1 %_133, label %_135, label %_136
_135:
  %_137 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_119
  %_138 = load i64, i64* %_131
  %_139 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_137, i32 0, i32 1, i64 %_138
  %_140 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_139
  %_141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_140, i32 0, i32 1, i32 0
  %_142 = load i64, i64* %_141
  %_143 = load i64, i64* %_130
  %_144 = sub i64 %_142, %_143
  store i64 %_144, i64* %_130
  %_145 = load i64, i64* %_131
  %_146 = add i64 %_145, 1
  store i64 %_146, i64* %_131
  br label %_134
_136:
  %_147 = xor i64 9223372036854775807, 5
  %_148 = and i64 5, %_147
  %_149 = or i64 %_148, 0
  %_150 = icmp ne i64 %_149, 0
  br i1 %_150, label %_151, label %_152
_151:
  %_154 = load i64, i64* %_130
  ret i64 %_154
_152:
  %_155 = load i64, i64* %_130
  %_156 = sub i64 0, %_155
  ret i64 %_156
_153:
  %_157 = load i64, i64* %_130
  ret i64 %_157
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
