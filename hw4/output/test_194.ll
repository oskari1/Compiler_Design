; generated from: ./nicdard/arlocal3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8665 = alloca i64
  store i64 %argc, i64* %_8665
  %_8666 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8666
  %_8667 = alloca { i64, [0 x i64] }*
  %_8673 = alloca { i64, [0 x i64] }*
  %_raw_array8668 = call i64* @oat_alloc_array(i64 3)
  %_array8669 = bitcast i64* %_raw_array8668 to { i64, [0 x i64] }*
  %_8672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8669, i32 0, i32 1, i32 2
  store i64 32, i64* %_8672
  %_8671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8669, i32 0, i32 1, i32 1
  store i64 23, i64* %_8671
  %_8670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8669, i32 0, i32 1, i32 0
  store i64 12, i64* %_8670
  store { i64, [0 x i64] }* %_array8669, { i64, [0 x i64] }** %_8667
  %_raw_array8674 = call i64* @oat_alloc_array(i64 3)
  %_array8675 = bitcast i64* %_raw_array8674 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array8675, { i64, [0 x i64] }** %_8673
  %_8676 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8673
  store { i64, [0 x i64] }* %_8676, { i64, [0 x i64] }** %_8667
  %_8678 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8673
  %_8677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8678, i32 0, i32 1, i32 2
  store i64 3, i64* %_8677
  %_8679 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8667
  %_8680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8679, i32 0, i32 1, i32 2
  %_8681 = load i64, i64* %_8680
  ret i64 %_8681
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
