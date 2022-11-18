; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3190 = alloca i64
  store i64 %argc, i64* %_3190
  %_3191 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3191
  %_3192 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3193 = call i64* @oat_alloc_array(i64 2)
  %_array3194 = bitcast i64* %_raw_array3193 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3200 = call i64* @oat_alloc_array(i64 2)
  %_array3201 = bitcast i64* %_raw_array3200 to { i64, [0 x i64] }*
  %_3203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3201, i32 0, i32 1, i32 1
  store i64 4, i64* %_3203
  %_3202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3201, i32 0, i32 1, i32 0
  store i64 3, i64* %_3202
  %_3204 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3194, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3201, { i64, [0 x i64] }** %_3204
  %_raw_array3195 = call i64* @oat_alloc_array(i64 2)
  %_array3196 = bitcast i64* %_raw_array3195 to { i64, [0 x i64] }*
  %_3198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 1
  store i64 2, i64* %_3198
  %_3197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 0
  store i64 1, i64* %_3197
  %_3199 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3194, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3196, { i64, [0 x i64] }** %_3199
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3194, { i64, [0 x { i64, [0 x i64] }*] }** %_3192
  %_3205 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3192
  %_3206 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_3205, i32 0, i32 1, i32 0
  %_3207 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_3206
  %_3208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3207, i32 0, i32 1, i32 1
  %_3209 = load i64, i64* %_3208
  ret i64 %_3209
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
