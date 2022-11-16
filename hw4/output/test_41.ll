; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_655 = load i64, i64* @a
  %_656 = add i64 %_655, 1
  store i64 %_656, i64* @a
  %_657 = load i64, i64* @a
  ret i64 %_657
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_636 = alloca i64
  store i64 %argc, i64* %_636
  %_637 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_637
  %_638 = alloca { i64, [0 x i64] }*
  %_639 = call i64 @f()
  %_raw_array640 = call i64* @oat_alloc_array(i64 %_639)
  %_array641 = bitcast i64* %_raw_array640 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array641, { i64, [0 x i64] }** %_638
  %_643 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_638
  %_642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_643, i32 0, i32 1, i32 0
  store i64 0, i64* %_642
  %_645 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_638
  %_644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_645, i32 0, i32 1, i32 1
  store i64 1, i64* %_644
  %_646 = load i64, i64* @a
  %_647 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_638
  %_648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_647, i32 0, i32 1, i32 0
  %_649 = load i64, i64* %_648
  %_650 = add i64 %_646, %_649
  %_651 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_638
  %_652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_651, i32 0, i32 1, i32 1
  %_653 = load i64, i64* %_652
  %_654 = add i64 %_650, %_653
  ret i64 %_654
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
