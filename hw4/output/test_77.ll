; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_1736 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1733 = alloca i64
  store i64 %argc, i64* %_1733
  %_1734 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1734
  %_1735 = alloca i8*
  %_1738 = alloca { i64, [0 x i64] }*
  %_1741 = alloca i64
  %_1742 = alloca i64
  %_1737 = getelementptr [6 x i8], [6 x i8]* @_1736, i32 0, i32 0
  store i8* %_1737, i8** %_1735
  %_1740 = load i8*, i8** %_1735
  %_1739 = call { i64, [0 x i64] }* @array_of_string(i8* %_1740)
  store { i64, [0 x i64] }* %_1739, { i64, [0 x i64] }** %_1738
  store i64 0, i64* %_1741
  store i64 0, i64* %_1742
  br label %_1745
_1745:
  %_1743 = load i64, i64* %_1742
  %_1744 = icmp slt i64 %_1743, 5
  br i1 %_1744, label %_1746, label %_1747
_1746:
  %_1748 = load i64, i64* %_1741
  %_1749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1738
  %_1750 = load i64, i64* %_1742
  %_1751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1749, i32 0, i32 1, i64 %_1750
  %_1752 = load i64, i64* %_1751
  %_1753 = add i64 %_1748, %_1752
  store i64 %_1753, i64* %_1741
  %_1754 = load i64, i64* %_1742
  %_1755 = add i64 %_1754, 1
  store i64 %_1755, i64* %_1742
  br label %_1745
_1747:
  %_1756 = load i64, i64* %_1741
  ret i64 %_1756
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
