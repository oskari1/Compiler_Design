; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2227 = alloca i64
  store i64 %argc, i64* %_2227
  %_2228 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2228
  %_2229 = alloca { i64, [0 x i64] }*
  %_raw_array2230 = call i64* @oat_alloc_array(i64 10)
  %_array2231 = bitcast i64* %_raw_array2230 to { i64, [0 x i64] }*
  %_2241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2231, i32 0, i32 1, i32 9
  store i64 117, i64* %_2241
  %_2240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2231, i32 0, i32 1, i32 8
  store i64 118, i64* %_2240
  %_2239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2231, i32 0, i32 1, i32 7
  store i64 119, i64* %_2239
  %_2238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2231, i32 0, i32 1, i32 6
  store i64 120, i64* %_2238
  %_2237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2231, i32 0, i32 1, i32 5
  store i64 121, i64* %_2237
  %_2236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2231, i32 0, i32 1, i32 4
  store i64 122, i64* %_2236
  %_2235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2231, i32 0, i32 1, i32 3
  store i64 123, i64* %_2235
  %_2234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2231, i32 0, i32 1, i32 2
  store i64 124, i64* %_2234
  %_2233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2231, i32 0, i32 1, i32 1
  store i64 125, i64* %_2233
  %_2232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2231, i32 0, i32 1, i32 0
  store i64 126, i64* %_2232
  store { i64, [0 x i64] }* %_array2231, { i64, [0 x i64] }** %_2229
  %_2244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2229
  %_2243 = call i8* @string_of_array({ i64, [0 x i64] }* %_2244)
  call void @print_string(i8* %_2243)
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
