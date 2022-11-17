; generated from: ./dbernhard/ret_null.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @call_empty() {
  ret { i64, [0 x i64] }* null
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5648 = alloca i64
  store i64 %argc, i64* %_5648
  %_5649 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5649
  %_5650 = alloca { i64, [0 x i64] }*
  %_5651 = call { i64, [0 x i64] }* @call_empty()
  store { i64, [0 x i64] }* %_5651, { i64, [0 x i64] }** %_5650
  %_raw_array5652 = call i64* @oat_alloc_array(i64 10)
  %_array5653 = bitcast i64* %_raw_array5652 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5653, { i64, [0 x i64] }** %_5650
  %_5655 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5650
  %_5654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5655, i32 0, i32 1, i32 1
  store i64 5, i64* %_5654
  %_5656 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5650
  %_5657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5656, i32 0, i32 1, i32 1
  %_5658 = load i64, i64* %_5657
  ret i64 %_5658
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
