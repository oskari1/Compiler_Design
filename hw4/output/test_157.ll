; generated from: ./dbernhard/null_update.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8266 = alloca i64
  store i64 %argc, i64* %_8266
  %_8267 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8267
  %_8268 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* null, { i64, [0 x i64] }** %_8268
  %_raw_array8269 = call i64* @oat_alloc_array(i64 3)
  %_array8270 = bitcast i64* %_raw_array8269 to { i64, [0 x i64] }*
  %_8273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8270, i32 0, i32 1, i32 2
  store i64 12, i64* %_8273
  %_8272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8270, i32 0, i32 1, i32 1
  store i64 11, i64* %_8272
  %_8271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8270, i32 0, i32 1, i32 0
  store i64 10, i64* %_8271
  store { i64, [0 x i64] }* %_array8270, { i64, [0 x i64] }** %_8268
  %_8274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8268
  %_8275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8274, i32 0, i32 1, i32 2
  %_8276 = load i64, i64* %_8275
  ret i64 %_8276
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
