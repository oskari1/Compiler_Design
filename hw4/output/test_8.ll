; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_92 = alloca i64
  store i64 %argc, i64* %_92
  %_93 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_93
  %_94 = alloca { i64, [0 x i64] }*
  %_97 = alloca i64
  %_98 = alloca i64
  %_raw_array95 = call i64* @oat_alloc_array(i64 4)
  %_array96 = bitcast i64* %_raw_array95 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array96, { i64, [0 x i64] }** %_94
  store i64 0, i64* %_97
  store i64 0, i64* %_98
  br label %_101
_101:
  %_99 = load i64, i64* %_98
  %_100 = icmp slt i64 %_99, 4
  br i1 %_100, label %_102, label %_103
_102:
  %_104 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_94
  %_105 = load i64, i64* %_98
  %_106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_104, i32 0, i32 1, i64 %_105
  %_107 = load i64, i64* %_106
  %_108 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_94
  %_109 = load i64, i64* %_98
  %_110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_108, i32 0, i32 1, i64 %_109
  %_111 = load i64, i64* %_110
  %_112 = xor i64 9223372036854775807, %_111
  %_113 = mul i64 %_107, %_112
  store i64 %_113, i64* %_97
  %_114 = load i64, i64* %_98
  %_115 = add i64 %_114, 1
  store i64 %_115, i64* %_98
  br label %_101
_103:
  %_116 = load i64, i64* %_97
  ret i64 %_116
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
