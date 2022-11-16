; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_249 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_249
  %_250 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_250
  %_251 = alloca i1
  store i1 %b, i1* %_251
  %_252 = load i1, i1* %_251
  br i1 %_252, label %_253, label %_254
_253:
  %_256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_249
  ret { i64, [0 x i64] }* %_256
_254:
  %_257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_250
  ret { i64, [0 x i64] }* %_257
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_209 = alloca i64
  store i64 %argc, i64* %_209
  %_210 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_210
  %_211 = alloca { i64, [0 x i64] }*
  %_214 = alloca i64
  %_226 = alloca { i64, [0 x i64] }*
  %_229 = alloca i64
  %_raw_array212 = call i64* @oat_alloc_array(i64 3)
  %_array213 = bitcast i64* %_raw_array212 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array213, { i64, [0 x i64] }** %_211
  store i64 0, i64* %_214
  br label %_217
_217:
  %_215 = load i64, i64* %_214
  %_216 = icmp slt i64 %_215, 3
  br i1 %_216, label %_218, label %_219
_218:
  %_220 = load i64, i64* %_214
  %_222 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_211
  %_223 = load i64, i64* %_214
  %_221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_222, i32 0, i32 1, i64 %_223
  store i64 %_220, i64* %_221
  %_224 = load i64, i64* %_214
  %_225 = add i64 %_224, 1
  store i64 %_225, i64* %_214
  br label %_217
_219:
  %_raw_array227 = call i64* @oat_alloc_array(i64 3)
  %_array228 = bitcast i64* %_raw_array227 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array228, { i64, [0 x i64] }** %_226
  store i64 0, i64* %_229
  br label %_232
_232:
  %_230 = load i64, i64* %_229
  %_231 = icmp slt i64 %_230, 3
  br i1 %_231, label %_233, label %_234
_233:
  %_235 = load i64, i64* %_229
  %_236 = add i64 %_235, 3
  %_238 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_226
  %_239 = load i64, i64* %_229
  %_237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_238, i32 0, i32 1, i64 %_239
  store i64 %_236, i64* %_237
  %_240 = load i64, i64* %_229
  %_241 = add i64 %_240, 1
  store i64 %_241, i64* %_229
  br label %_232
_234:
  %_244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_211
  %_245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_226
  %_243 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_244, { i64, [0 x i64] }* %_245, i1 1)
  %_242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_243, i32 0, i32 1, i32 0
  store i64 17, i64* %_242
  %_246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_211
  %_247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_246, i32 0, i32 1, i32 0
  %_248 = load i64, i64* %_247
  ret i64 %_248
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
