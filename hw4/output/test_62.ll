; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_3248 = alloca i64
  store i64 %i, i64* %_3248
  %_3250 = load i64, i64* %_3248
  %_3249 = call i64 @f2(i64 %_3250)
  ret i64 %_3249
}

define i64 @f2(i64 %i) {
  %_3245 = alloca i64
  store i64 %i, i64* %_3245
  %_3247 = load i64, i64* %_3245
  %_3246 = call i64 @f3(i64 %_3247)
  ret i64 %_3246
}

define i64 @f3(i64 %i) {
  %_3242 = alloca i64
  store i64 %i, i64* %_3242
  %_3244 = load i64, i64* %_3242
  %_3243 = call i64 @f4(i64 %_3244)
  ret i64 %_3243
}

define i64 @f4(i64 %i) {
  %_3239 = alloca i64
  store i64 %i, i64* %_3239
  %_3241 = load i64, i64* %_3239
  %_3240 = call i64 @f5(i64 %_3241)
  ret i64 %_3240
}

define i64 @f5(i64 %i) {
  %_3236 = alloca i64
  store i64 %i, i64* %_3236
  %_3238 = load i64, i64* %_3236
  %_3237 = call i64 @f6(i64 %_3238)
  ret i64 %_3237
}

define i64 @f6(i64 %i) {
  %_3233 = alloca i64
  store i64 %i, i64* %_3233
  %_3235 = load i64, i64* %_3233
  %_3234 = call i64 @f7(i64 %_3235)
  ret i64 %_3234
}

define i64 @f7(i64 %i) {
  %_3230 = alloca i64
  store i64 %i, i64* %_3230
  %_3232 = load i64, i64* %_3230
  %_3231 = call i64 @f8(i64 %_3232)
  ret i64 %_3231
}

define i64 @f8(i64 %i) {
  %_3227 = alloca i64
  store i64 %i, i64* %_3227
  %_3229 = load i64, i64* %_3227
  %_3228 = call i64 @f9(i64 %_3229)
  ret i64 %_3228
}

define i64 @f9(i64 %i) {
  %_3225 = alloca i64
  store i64 %i, i64* %_3225
  %_3226 = load i64, i64* %_3225
  ret i64 %_3226
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3221 = alloca i64
  store i64 %argc, i64* %_3221
  %_3222 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3222
  %_3224 = load i64, i64* %_3221
  %_3223 = call i64 @f1(i64 %_3224)
  ret i64 %_3223
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
