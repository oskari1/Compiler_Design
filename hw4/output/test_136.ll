; generated from: ./dbernhard/null_update_global2.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5638 = alloca i64
  store i64 %argc, i64* %_5638
  %_5639 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5639
  %_raw_array5640 = call i64* @oat_alloc_array(i64 3)
  %_array5641 = bitcast i64* %_raw_array5640 to { i64, [0 x i64] }*
  %_5644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5641, i32 0, i32 1, i32 2
  store i64 12, i64* %_5644
  %_5643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5641, i32 0, i32 1, i32 1
  store i64 11, i64* %_5643
  %_5642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5641, i32 0, i32 1, i32 0
  store i64 10, i64* %_5642
  store { i64, [0 x i64] }* %_array5641, { i64, [0 x i64] }** @x
  %_5645 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_5646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5645, i32 0, i32 1, i32 2
  %_5647 = load i64, i64* %_5646
  ret i64 %_5647
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
