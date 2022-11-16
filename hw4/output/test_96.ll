; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_3229 = alloca i64
  store i64 %n, i64* %_3229
  %_3230 = load i64, i64* %_3229
  %_3231 = icmp eq i64 %_3230, 0
  br i1 %_3231, label %_3232, label %_3233
_3232:
  ret i64 0
_3233:
  br label %_3234
_3234:
  %_3235 = load i64, i64* %_3229
  %_3236 = icmp eq i64 %_3235, 1
  br i1 %_3236, label %_3237, label %_3238
_3237:
  ret i64 1
_3238:
  br label %_3239
_3239:
  %_3241 = load i64, i64* %_3229
  %_3242 = sub i64 %_3241, 1
  %_3240 = call i64 @fibR(i64 %_3242)
  %_3244 = load i64, i64* %_3229
  %_3245 = sub i64 %_3244, 2
  %_3243 = call i64 @fibR(i64 %_3245)
  %_3246 = add i64 %_3240, %_3243
  ret i64 %_3246
}

define i64 @fibI(i64 %n) {
  %_3197 = alloca i64
  store i64 %n, i64* %_3197
  %_3198 = alloca i64
  %_3199 = alloca i64
  %_3218 = alloca i64
  store i64 0, i64* %_3198
  store i64 1, i64* %_3199
  %_3200 = load i64, i64* %_3197
  %_3201 = icmp eq i64 %_3200, 0
  br i1 %_3201, label %_3202, label %_3203
_3202:
  %_3205 = load i64, i64* %_3198
  ret i64 %_3205
_3203:
  br label %_3204
_3204:
  %_3206 = load i64, i64* %_3197
  %_3207 = icmp eq i64 %_3206, 1
  br i1 %_3207, label %_3208, label %_3209
_3208:
  %_3211 = load i64, i64* %_3199
  ret i64 %_3211
_3209:
  br label %_3210
_3210:
  br label %_3215
_3215:
  %_3212 = load i64, i64* %_3197
  %_3213 = sub i64 %_3212, 2
  %_3214 = icmp sgt i64 %_3213, 0
  br i1 %_3214, label %_3216, label %_3217
_3216:
  %_3219 = load i64, i64* %_3199
  store i64 %_3219, i64* %_3218
  %_3220 = load i64, i64* %_3199
  %_3221 = load i64, i64* %_3198
  %_3222 = add i64 %_3220, %_3221
  store i64 %_3222, i64* %_3199
  %_3223 = load i64, i64* %_3218
  store i64 %_3223, i64* %_3198
  %_3224 = load i64, i64* %_3197
  %_3225 = sub i64 %_3224, 1
  store i64 %_3225, i64* %_3197
  br label %_3215
_3217:
  %_3226 = load i64, i64* %_3198
  %_3227 = load i64, i64* %_3199
  %_3228 = add i64 %_3226, %_3227
  ret i64 %_3228
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3185 = alloca i64
  store i64 %argc, i64* %_3185
  %_3186 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3186
  %_3187 = alloca i64
  store i64 1, i64* %_3187
  %_3188 = call i64 @fibR(i64 12)
  %_3189 = icmp eq i64 %_3188, 144
  %_3190 = call i64 @fibI(i64 12)
  %_3191 = icmp eq i64 %_3190, 144
  %_3192 = and i1 %_3189, %_3191
  br i1 %_3192, label %_3193, label %_3194
_3193:
  store i64 0, i64* %_3187
  br label %_3195
_3194:
  br label %_3195
_3195:
  %_3196 = load i64, i64* %_3187
  ret i64 %_3196
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
