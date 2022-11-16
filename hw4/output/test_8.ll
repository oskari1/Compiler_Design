; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_92 = alloca i64
  store i64 %argc, i64* %_92
  %_93 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_93
  %_94 = alloca { i64, [0 x i64] }*
  %_101 = alloca i64
  %_102 = alloca i64
  %_raw_array95 = call i64* @oat_alloc_array(i64 4)
  %_array96 = bitcast i64* %_raw_array95 to { i64, [0 x i64] }*
  %_100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 3
  store i64 4, i64* %_100
  %_99 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 2
  store i64 3, i64* %_99
  %_98 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 1
  store i64 2, i64* %_98
  %_97 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 0
  store i64 1, i64* %_97
  store { i64, [0 x i64] }* %_array96, { i64, [0 x i64] }** %_94
  store i64 0, i64* %_101
  store i64 0, i64* %_102
  br label %_105
_105:
  %_103 = load i64, i64* %_102
  %_104 = icmp slt i64 %_103, 4
  br i1 %_104, label %_106, label %_107
_106:
  %_108 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_94
  %_109 = load i64, i64* %_102
  %_110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_108, i32 0, i32 1, i64 %_109
  %_111 = load i64, i64* %_110
  %_112 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_94
  %_113 = load i64, i64* %_102
  %_114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_112, i32 0, i32 1, i64 %_113
  %_115 = load i64, i64* %_114
  %_116 = xor i64 -1, %_115
  %_117 = mul i64 %_111, %_116
  store i64 %_117, i64* %_101
  %_118 = load i64, i64* %_102
  %_119 = add i64 %_118, 1
  store i64 %_119, i64* %_102
  br label %_105
_107:
  %_120 = load i64, i64* %_101
  ret i64 %_120
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
