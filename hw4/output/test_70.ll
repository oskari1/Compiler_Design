; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_3384 = alloca i64
  store i64 %x, i64* %_3384
  %_3385 = alloca i64
  store i64 1, i64* %_3385
  br label %_3388
_3388:
  %_3386 = load i64, i64* %_3384
  %_3387 = icmp sgt i64 %_3386, 0
  br i1 %_3387, label %_3389, label %_3390
_3389:
  %_3391 = load i64, i64* %_3385
  %_3392 = load i64, i64* %_3384
  %_3393 = mul i64 %_3391, %_3392
  store i64 %_3393, i64* %_3385
  %_3394 = load i64, i64* %_3384
  %_3395 = sub i64 %_3394, 1
  store i64 %_3395, i64* %_3384
  br label %_3388
_3390:
  %_3396 = load i64, i64* %_3385
  ret i64 %_3396
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3379 = alloca i64
  store i64 %argc, i64* %_3379
  %_3380 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3380
  %_3383 = call i64 @fact(i64 5)
  %_3382 = call i8* @string_of_int(i64 %_3383)
  call void @print_string(i8* %_3382)
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
