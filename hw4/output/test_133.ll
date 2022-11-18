; generated from: ./dbernhard/while_false2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7441 = alloca i64
  store i64 %argc, i64* %_7441
  %_7442 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7442
  %_7443 = call { i64, [0 x i64] }* @function(i64 0)
  %_7444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7443, i32 0, i32 1, i32 0
  %_7445 = load i64, i64* %_7444
  %_7446 = call { i64, [0 x i64] }* @function(i64 1)
  %_7447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7446, i32 0, i32 1, i32 0
  %_7448 = load i64, i64* %_7447
  %_7449 = add i64 %_7445, %_7448
  %_7450 = call { i64, [0 x i64] }* @function(i64 2)
  %_7451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7450, i32 0, i32 1, i32 0
  %_7452 = load i64, i64* %_7451
  %_7453 = add i64 %_7449, %_7452
  %_7454 = call { i64, [0 x i64] }* @function(i64 3)
  %_7455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7454, i32 0, i32 1, i32 0
  %_7456 = load i64, i64* %_7455
  %_7457 = add i64 %_7453, %_7456
  ret i64 %_7457
}

define { i64, [0 x i64] }* @function(i64 %x) {
  %_7434 = alloca i64
  store i64 %x, i64* %_7434
  br label %_7435
_7435:
  br i1 0, label %_7436, label %_7437
_7436:
  br label %_7435
_7437:
  %_raw_array7438 = call i64* @oat_alloc_array(i64 1)
  %_array7439 = bitcast i64* %_raw_array7438 to { i64, [0 x i64] }*
  %_7440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7439, i32 0, i32 1, i32 0
  store i64 1, i64* %_7440
  ret { i64, [0 x i64] }* %_array7439
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
