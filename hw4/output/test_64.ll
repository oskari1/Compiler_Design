; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_3264 = alloca i64
  store i64 %x1, i64* %_3264
  %_3265 = alloca i64
  store i64 %x2, i64* %_3265
  %_3266 = alloca i64
  store i64 %x3, i64* %_3266
  %_3267 = alloca i64
  store i64 %x4, i64* %_3267
  %_3268 = alloca i64
  store i64 %x5, i64* %_3268
  %_3269 = alloca i64
  store i64 %x6, i64* %_3269
  %_3270 = alloca i64
  store i64 %x7, i64* %_3270
  %_3271 = alloca i64
  store i64 %x8, i64* %_3271
  %_3272 = load i64, i64* %_3264
  %_3273 = load i64, i64* %_3265
  %_3274 = add i64 %_3272, %_3273
  %_3275 = load i64, i64* %_3266
  %_3276 = add i64 %_3274, %_3275
  %_3277 = load i64, i64* %_3267
  %_3278 = add i64 %_3276, %_3277
  %_3279 = load i64, i64* %_3268
  %_3280 = add i64 %_3278, %_3279
  %_3281 = load i64, i64* %_3269
  %_3282 = add i64 %_3280, %_3281
  %_3283 = load i64, i64* %_3270
  %_3284 = add i64 %_3282, %_3283
  %_3285 = load i64, i64* %_3271
  %_3286 = add i64 %_3284, %_3285
  ret i64 %_3286
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3258 = alloca i64
  store i64 %argc, i64* %_3258
  %_3259 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3259
  %_3261 = sub i64 0, 5
  %_3262 = sub i64 0, 4
  %_3263 = sub i64 0, 3
  %_3260 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_3261, i64 %_3262, i64 %_3263)
  ret i64 %_3260
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
