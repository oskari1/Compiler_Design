; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_6324 = alloca i64
  store i64 %n, i64* %_6324
  %_6325 = load i64, i64* %_6324
  %_6326 = icmp eq i64 %_6325, 0
  br i1 %_6326, label %_6327, label %_6328
_6327:
  ret i64 0
_6328:
  br label %_6329
_6329:
  %_6330 = load i64, i64* %_6324
  %_6331 = icmp eq i64 %_6330, 1
  br i1 %_6331, label %_6332, label %_6333
_6332:
  ret i64 1
_6333:
  br label %_6334
_6334:
  %_6336 = load i64, i64* %_6324
  %_6337 = sub i64 %_6336, 1
  %_6335 = call i64 @fibR(i64 %_6337)
  %_6339 = load i64, i64* %_6324
  %_6340 = sub i64 %_6339, 2
  %_6338 = call i64 @fibR(i64 %_6340)
  %_6341 = add i64 %_6335, %_6338
  ret i64 %_6341
}

define i64 @fibI(i64 %n) {
  %_6292 = alloca i64
  store i64 %n, i64* %_6292
  %_6293 = alloca i64
  %_6294 = alloca i64
  %_6313 = alloca i64
  store i64 0, i64* %_6293
  store i64 1, i64* %_6294
  %_6295 = load i64, i64* %_6292
  %_6296 = icmp eq i64 %_6295, 0
  br i1 %_6296, label %_6297, label %_6298
_6297:
  %_6300 = load i64, i64* %_6293
  ret i64 %_6300
_6298:
  br label %_6299
_6299:
  %_6301 = load i64, i64* %_6292
  %_6302 = icmp eq i64 %_6301, 1
  br i1 %_6302, label %_6303, label %_6304
_6303:
  %_6306 = load i64, i64* %_6294
  ret i64 %_6306
_6304:
  br label %_6305
_6305:
  br label %_6310
_6310:
  %_6307 = load i64, i64* %_6292
  %_6308 = sub i64 %_6307, 2
  %_6309 = icmp sgt i64 %_6308, 0
  br i1 %_6309, label %_6311, label %_6312
_6311:
  %_6314 = load i64, i64* %_6294
  store i64 %_6314, i64* %_6313
  %_6315 = load i64, i64* %_6294
  %_6316 = load i64, i64* %_6293
  %_6317 = add i64 %_6315, %_6316
  store i64 %_6317, i64* %_6294
  %_6318 = load i64, i64* %_6313
  store i64 %_6318, i64* %_6293
  %_6319 = load i64, i64* %_6292
  %_6320 = sub i64 %_6319, 1
  store i64 %_6320, i64* %_6292
  br label %_6310
_6312:
  %_6321 = load i64, i64* %_6293
  %_6322 = load i64, i64* %_6294
  %_6323 = add i64 %_6321, %_6322
  ret i64 %_6323
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6280 = alloca i64
  store i64 %argc, i64* %_6280
  %_6281 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6281
  %_6282 = alloca i64
  store i64 1, i64* %_6282
  %_6283 = call i64 @fibR(i64 12)
  %_6284 = icmp eq i64 %_6283, 144
  %_6285 = call i64 @fibI(i64 12)
  %_6286 = icmp eq i64 %_6285, 144
  %_6287 = and i1 %_6284, %_6286
  br i1 %_6287, label %_6288, label %_6289
_6288:
  store i64 0, i64* %_6282
  br label %_6290
_6289:
  br label %_6290
_6290:
  %_6291 = load i64, i64* %_6282
  ret i64 %_6291
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
