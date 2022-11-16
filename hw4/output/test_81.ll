; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2176 = alloca i64
  store i64 %argc, i64* %_2176
  %_2177 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2177
  %_2178 = alloca i64
  store i64 1, i64* %_2178
  br label %_2182
_2182:
  %_2179 = load i64, i64* %_2178
  %_2180 = load i64, i64* %_2176
  %_2181 = icmp slt i64 %_2179, %_2180
  br i1 %_2181, label %_2183, label %_2184
_2183:
  %_2186 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_2177
  %_2187 = load i64, i64* %_2178
  %_2188 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_2186, i32 0, i32 1, i64 %_2187
  %_2189 = load i8*, i8** %_2188
  call void @print_string(i8* %_2189)
  %_2190 = load i64, i64* %_2178
  %_2191 = add i64 %_2190, 1
  store i64 %_2191, i64* %_2178
  br label %_2182
_2184:
  %_2192 = load i64, i64* %_2176
  ret i64 %_2192
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
