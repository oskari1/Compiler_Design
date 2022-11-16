; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1786 = alloca i64
  store i64 %argc, i64* %_1786
  %_1787 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1787
  %_1788 = alloca { i64, [0 x i64] }*
  %_1791 = alloca i8*
  %_1794 = alloca { i64, [0 x i64] }*
  %_1797 = alloca i64
  %_1798 = alloca i64
  %_raw_array1789 = call i64* @oat_alloc_array(i64 5)
  %_array1790 = bitcast i64* %_raw_array1789 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1790, { i64, [0 x i64] }** %_1788
  %_1793 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1788
  %_1792 = call i8* @string_of_array({ i64, [0 x i64] }* %_1793)
  store i8* %_1792, i8** %_1791
  %_1796 = load i8*, i8** %_1791
  %_1795 = call { i64, [0 x i64] }* @array_of_string(i8* %_1796)
  store { i64, [0 x i64] }* %_1795, { i64, [0 x i64] }** %_1794
  store i64 0, i64* %_1797
  store i64 0, i64* %_1798
  br label %_1801
_1801:
  %_1799 = load i64, i64* %_1798
  %_1800 = icmp slt i64 %_1799, 5
  br i1 %_1800, label %_1802, label %_1803
_1802:
  %_1804 = load i64, i64* %_1797
  %_1805 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1794
  %_1806 = load i64, i64* %_1798
  %_1807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1805, i32 0, i32 1, i64 %_1806
  %_1808 = load i64, i64* %_1807
  %_1809 = add i64 %_1804, %_1808
  store i64 %_1809, i64* %_1797
  %_1810 = load i64, i64* %_1798
  %_1811 = add i64 %_1810, 1
  store i64 %_1811, i64* %_1798
  br label %_1801
_1803:
  %_1812 = load i64, i64* %_1797
  ret i64 %_1812
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
