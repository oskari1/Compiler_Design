; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_261 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_261
  %_262 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_262
  %_263 = alloca i1
  store i1 %b, i1* %_263
  %_264 = load i1, i1* %_263
  br i1 %_264, label %_265, label %_266
_265:
  %_268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_261
  ret { i64, [0 x i64] }* %_268
_266:
  %_269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_262
  ret { i64, [0 x i64] }* %_269
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_221 = alloca i64
  store i64 %argc, i64* %_221
  %_222 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_222
  %_223 = alloca { i64, [0 x i64] }*
  %_226 = alloca i64
  %_238 = alloca { i64, [0 x i64] }*
  %_241 = alloca i64
  %_raw_array224 = call i64* @oat_alloc_array(i64 3)
  %_array225 = bitcast i64* %_raw_array224 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array225, { i64, [0 x i64] }** %_223
  store i64 0, i64* %_226
  br label %_229
_229:
  %_227 = load i64, i64* %_226
  %_228 = icmp slt i64 %_227, 3
  br i1 %_228, label %_230, label %_231
_230:
  %_232 = load i64, i64* %_226
  %_234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_223
  %_235 = load i64, i64* %_226
  %_233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_234, i32 0, i32 1, i64 %_235
  store i64 %_232, i64* %_233
  %_236 = load i64, i64* %_226
  %_237 = add i64 %_236, 1
  store i64 %_237, i64* %_226
  br label %_229
_231:
  %_raw_array239 = call i64* @oat_alloc_array(i64 3)
  %_array240 = bitcast i64* %_raw_array239 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array240, { i64, [0 x i64] }** %_238
  store i64 0, i64* %_241
  br label %_244
_244:
  %_242 = load i64, i64* %_241
  %_243 = icmp slt i64 %_242, 3
  br i1 %_243, label %_245, label %_246
_245:
  %_247 = load i64, i64* %_241
  %_248 = add i64 %_247, 3
  %_250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_238
  %_251 = load i64, i64* %_241
  %_249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_250, i32 0, i32 1, i64 %_251
  store i64 %_248, i64* %_249
  %_252 = load i64, i64* %_241
  %_253 = add i64 %_252, 1
  store i64 %_253, i64* %_241
  br label %_244
_246:
  %_256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_223
  %_257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_238
  %_255 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_256, { i64, [0 x i64] }* %_257, i1 1)
  %_254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_255, i32 0, i32 1, i32 0
  store i64 17, i64* %_254
  %_258 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_223
  %_259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_258, i32 0, i32 1, i32 0
  %_260 = load i64, i64* %_259
  ret i64 %_260
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
