; generated from: ./dbernhard/simple_while2.oat
target triple = "x86_64-unknown-linux"
@counter = global i64 100

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7409 = alloca i64
  store i64 %argc, i64* %_7409
  %_7410 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7410
  %_7411 = alloca i64
  store i64 0, i64* %_7411
  br label %_7413
_7413:
  %_7412 = call i1 @condition()
  br i1 %_7412, label %_7414, label %_7415
_7414:
  %_7416 = load i64, i64* %_7411
  %_7417 = add i64 %_7416, 1
  store i64 %_7417, i64* %_7411
  %_7418 = load i64, i64* @counter
  %_7419 = sub i64 %_7418, 1
  store i64 %_7419, i64* @counter
  br label %_7413
_7415:
  %_7420 = load i64, i64* %_7411
  ret i64 %_7420
}

define i1 @condition() {
  %_7407 = load i64, i64* @counter
  %_7408 = icmp sgt i64 %_7407, 50
  ret i1 %_7408
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
