; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_410 = alloca i64
  store i64 %argc, i64* %_410
  %_411 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_411
  %_412 = alloca { i64, [0 x i1] }*
  %_417 = alloca i64
  %_raw_array413 = call i64* @oat_alloc_array(i64 2)
  %_array414 = bitcast i64* %_raw_array413 to { i64, [0 x i1] }*
  %_416 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array414, i32 0, i32 1, i32 1
  store i1 0, i1* %_416
  %_415 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array414, i32 0, i32 1, i32 0
  store i1 1, i1* %_415
  store { i64, [0 x i1] }* %_array414, { i64, [0 x i1] }** %_412
  store i64 0, i64* %_417
  %_418 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_412
  %_419 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_418, i32 0, i32 1, i32 0
  %_420 = load i1, i1* %_419
  br i1 %_420, label %_421, label %_422
_421:
  store i64 1, i64* %_417
  br label %_423
_422:
  br label %_423
_423:
  %_424 = load i64, i64* %_417
  ret i64 %_424
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
