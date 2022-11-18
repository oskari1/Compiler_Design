; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_4667 = load i64, i64* @a
  %_4668 = add i64 %_4667, 1
  store i64 %_4668, i64* @a
  %_4669 = load i64, i64* @a
  ret i64 %_4669
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4648 = alloca i64
  store i64 %argc, i64* %_4648
  %_4649 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4649
  %_4650 = alloca { i64, [0 x i64] }*
  %_4651 = call i64 @f()
  %_raw_array4652 = call i64* @oat_alloc_array(i64 %_4651)
  %_array4653 = bitcast i64* %_raw_array4652 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4653, { i64, [0 x i64] }** %_4650
  %_4655 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4650
  %_4654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4655, i32 0, i32 1, i32 0
  store i64 0, i64* %_4654
  %_4657 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4650
  %_4656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4657, i32 0, i32 1, i32 1
  store i64 1, i64* %_4656
  %_4658 = load i64, i64* @a
  %_4659 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4650
  %_4660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4659, i32 0, i32 1, i32 0
  %_4661 = load i64, i64* %_4660
  %_4662 = add i64 %_4658, %_4661
  %_4663 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4650
  %_4664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4663, i32 0, i32 1, i32 1
  %_4665 = load i64, i64* %_4664
  %_4666 = add i64 %_4662, %_4665
  ret i64 %_4666
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
