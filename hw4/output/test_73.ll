; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_1674 = load i64, i64* @a
  %_1675 = add i64 %_1674, 1
  store i64 %_1675, i64* @a
  %_1676 = load i64, i64* @a
  ret i64 %_1676
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1655 = alloca i64
  store i64 %argc, i64* %_1655
  %_1656 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1656
  %_1657 = alloca { i64, [0 x i64] }*
  %_1658 = call i64 @f()
  %_raw_array1659 = call i64* @oat_alloc_array(i64 %_1658)
  %_array1660 = bitcast i64* %_raw_array1659 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1660, { i64, [0 x i64] }** %_1657
  %_1662 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1657
  %_1661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1662, i32 0, i32 1, i32 0
  store i64 0, i64* %_1661
  %_1664 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1657
  %_1663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1664, i32 0, i32 1, i32 1
  store i64 1, i64* %_1663
  %_1665 = load i64, i64* @a
  %_1666 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1657
  %_1667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1666, i32 0, i32 1, i32 0
  %_1668 = load i64, i64* %_1667
  %_1669 = add i64 %_1665, %_1668
  %_1670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1657
  %_1671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1670, i32 0, i32 1, i32 1
  %_1672 = load i64, i64* %_1671
  %_1673 = add i64 %_1669, %_1672
  ret i64 %_1673
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
