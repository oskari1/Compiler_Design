; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_233 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_233
  %_234 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_234
  %_235 = alloca i1
  store i1 %b, i1* %_235
  %_236 = load i1, i1* %_235
  br i1 %_236, label %_237, label %_238
_237:
  %_240 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_233
  ret { i64, [0 x i64] }* %_240
_238:
  %_241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_234
  ret { i64, [0 x i64] }* %_241
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_218 = alloca i64
  store i64 %argc, i64* %_218
  %_219 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_219
  %_220 = alloca { i64, [0 x i64] }*
  %_223 = alloca { i64, [0 x i64] }*
  %_raw_array221 = call i64* @oat_alloc_array(i64 3)
  %_array222 = bitcast i64* %_raw_array221 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array222, { i64, [0 x i64] }** %_220
  %_raw_array224 = call i64* @oat_alloc_array(i64 3)
  %_array225 = bitcast i64* %_raw_array224 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array225, { i64, [0 x i64] }** %_223
  %_228 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_220
  %_229 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_223
  %_227 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_228, { i64, [0 x i64] }* %_229, i1 1)
  %_226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_227, i32 0, i32 1, i32 0
  store i64 17, i64* %_226
  %_230 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_220
  %_231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_230, i32 0, i32 1, i32 0
  %_232 = load i64, i64* %_231
  ret i64 %_232
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
