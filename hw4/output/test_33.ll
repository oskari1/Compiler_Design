; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_396 = alloca i64
  store i64 %argc, i64* %_396
  %_397 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_397
  %_398 = alloca { i64, [0 x i1] }*
  %_401 = alloca i64
  %_raw_array399 = call i64* @oat_alloc_array(i64 2)
  %_array400 = bitcast i64* %_raw_array399 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array400, { i64, [0 x i1] }** %_398
  store i64 0, i64* %_401
  %_402 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_398
  %_403 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_402, i32 0, i32 1, i32 0
  %_404 = load i1, i1* %_403
  br i1 %_404, label %_405, label %_406
_405:
  store i64 1, i64* %_401
  br label %_407
_406:
  br label %_407
_407:
  %_408 = load i64, i64* %_401
  ret i64 %_408
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
