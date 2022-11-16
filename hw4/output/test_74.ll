; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_1698 = load i64, i64* @a
  %_1699 = add i64 %_1698, 1
  store i64 %_1699, i64* @a
  %_1700 = load i64, i64* @a
  ret i64 %_1700
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1677 = alloca i64
  store i64 %argc, i64* %_1677
  %_1678 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1678
  %_1679 = alloca { i64, [0 x i64] }*
  %_1680 = call i64 @f()
  %_raw_array1681 = call i64* @oat_alloc_array(i64 %_1680)
  %_array1682 = bitcast i64* %_raw_array1681 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1682, { i64, [0 x i64] }** %_1679
  %_1683 = call i64 @f()
  %_1685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1679
  %_1684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1685, i32 0, i32 1, i32 0
  store i64 %_1683, i64* %_1684
  %_1686 = call i64 @f()
  %_1688 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1679
  %_1687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1688, i32 0, i32 1, i32 1
  store i64 %_1686, i64* %_1687
  %_1689 = load i64, i64* @a
  %_1690 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1679
  %_1691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1690, i32 0, i32 1, i32 0
  %_1692 = load i64, i64* %_1691
  %_1693 = add i64 %_1689, %_1692
  %_1694 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1679
  %_1695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1694, i32 0, i32 1, i32 1
  %_1696 = load i64, i64* %_1695
  %_1697 = add i64 %_1693, %_1696
  ret i64 %_1697
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
