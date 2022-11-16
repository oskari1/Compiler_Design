; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_394 = alloca i64
  store i64 12, i64* %_394
  %_395 = load i64, i64* %_394
  ret i64 %_395
}

define i64 @g() {
  %_392 = alloca i64
  store i64 10, i64* %_392
  %_393 = load i64, i64* %_392
  ret i64 %_393
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_385 = alloca i64
  store i64 %argc, i64* %_385
  %_386 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_386
  %_387 = call i64 @f()
  %_388 = call i64 @g()
  %_389 = add i64 %_387, %_388
  %_390 = load i64, i64* @i
  %_391 = add i64 %_389, %_390
  ret i64 %_391
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
