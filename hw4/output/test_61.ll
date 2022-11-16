; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1111 = alloca i64
  store i64 %argc, i64* %_1111
  %_1112 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1112
  %_1113 = alloca i64
  %_1114 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1150 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 10, i64* %_1113
  %_raw_array1115 = call i64* @oat_alloc_array(i64 3)
  %_array1116 = bitcast i64* %_raw_array1115 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1139 = call i64* @oat_alloc_array(i64 3)
  %_array1140 = bitcast i64* %_raw_array1139 to { i64, [0 x i64] }*
  %_1147 = load i64, i64* %_1113
  %_1148 = add i64 %_1147, 2
  %_1149 = add i64 %_1148, 2
  %_1144 = load i64, i64* %_1113
  %_1145 = add i64 %_1144, 2
  %_1146 = add i64 %_1145, 1
  %_1141 = load i64, i64* %_1113
  %_1142 = add i64 %_1141, 2
  %_1143 = add i64 %_1142, 0
  %_raw_array1128 = call i64* @oat_alloc_array(i64 3)
  %_array1129 = bitcast i64* %_raw_array1128 to { i64, [0 x i64] }*
  %_1136 = load i64, i64* %_1113
  %_1137 = add i64 %_1136, 1
  %_1138 = add i64 %_1137, 2
  %_1133 = load i64, i64* %_1113
  %_1134 = add i64 %_1133, 1
  %_1135 = add i64 %_1134, 1
  %_1130 = load i64, i64* %_1113
  %_1131 = add i64 %_1130, 1
  %_1132 = add i64 %_1131, 0
  %_raw_array1117 = call i64* @oat_alloc_array(i64 3)
  %_array1118 = bitcast i64* %_raw_array1117 to { i64, [0 x i64] }*
  %_1125 = load i64, i64* %_1113
  %_1126 = add i64 %_1125, 0
  %_1127 = add i64 %_1126, 2
  %_1122 = load i64, i64* %_1113
  %_1123 = add i64 %_1122, 0
  %_1124 = add i64 %_1123, 1
  %_1119 = load i64, i64* %_1113
  %_1120 = add i64 %_1119, 0
  %_1121 = add i64 %_1120, 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1116, { i64, [0 x { i64, [0 x i64] }*] }** %_1114
  %_1151 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1114
  store { i64, [0 x { i64, [0 x i64] }*] }* %_1151, { i64, [0 x { i64, [0 x i64] }*] }** %_1150
  %_1152 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1150
  %_1153 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1152, i32 0, i32 1, i32 2
  %_1154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1153
  %_1155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1154, i32 0, i32 1, i32 1
  %_1156 = load i64, i64* %_1155
  ret i64 %_1156
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
