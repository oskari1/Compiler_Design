; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1757 = alloca i64
  store i64 %argc, i64* %_1757
  %_1758 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1758
  %_1759 = alloca { i64, [0 x i64] }*
  %_1762 = alloca i8*
  %_1765 = alloca { i64, [0 x i64] }*
  %_1768 = alloca i64
  %_1769 = alloca i64
  %_raw_array1760 = call i64* @oat_alloc_array(i64 5)
  %_array1761 = bitcast i64* %_raw_array1760 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1761, { i64, [0 x i64] }** %_1759
  %_1764 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1759
  %_1763 = call i8* @string_of_array({ i64, [0 x i64] }* %_1764)
  store i8* %_1763, i8** %_1762
  %_1767 = load i8*, i8** %_1762
  %_1766 = call { i64, [0 x i64] }* @array_of_string(i8* %_1767)
  store { i64, [0 x i64] }* %_1766, { i64, [0 x i64] }** %_1765
  store i64 0, i64* %_1768
  store i64 0, i64* %_1769
  br label %_1772
_1772:
  %_1770 = load i64, i64* %_1769
  %_1771 = icmp slt i64 %_1770, 5
  br i1 %_1771, label %_1773, label %_1774
_1773:
  %_1775 = load i64, i64* %_1768
  %_1776 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1765
  %_1777 = load i64, i64* %_1769
  %_1778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1776, i32 0, i32 1, i64 %_1777
  %_1779 = load i64, i64* %_1778
  %_1780 = add i64 %_1775, %_1779
  store i64 %_1780, i64* %_1768
  %_1781 = load i64, i64* %_1769
  %_1782 = add i64 %_1781, 1
  store i64 %_1782, i64* %_1769
  br label %_1772
_1774:
  %_1784 = load i64, i64* %_1768
  call void @print_int(i64 %_1784)
  %_1785 = load i64, i64* %_1768
  ret i64 %_1785
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
