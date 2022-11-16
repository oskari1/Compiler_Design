; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_1732 to i8*)
@_1732 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1709 = alloca i64
  store i64 %argc, i64* %_1709
  %_1710 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1710
  %_1711 = alloca { i64, [0 x i64] }*
  %_1714 = alloca i64
  %_1715 = alloca i64
  %_1713 = load i8*, i8** @str
  %_1712 = call { i64, [0 x i64] }* @array_of_string(i8* %_1713)
  store { i64, [0 x i64] }* %_1712, { i64, [0 x i64] }** %_1711
  store i64 0, i64* %_1714
  store i64 0, i64* %_1715
  br label %_1718
_1718:
  %_1716 = load i64, i64* %_1715
  %_1717 = icmp slt i64 %_1716, 5
  br i1 %_1717, label %_1719, label %_1720
_1719:
  %_1721 = load i64, i64* %_1714
  %_1722 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1711
  %_1723 = load i64, i64* %_1715
  %_1724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1722, i32 0, i32 1, i64 %_1723
  %_1725 = load i64, i64* %_1724
  %_1726 = add i64 %_1721, %_1725
  store i64 %_1726, i64* %_1714
  %_1727 = load i64, i64* %_1715
  %_1728 = add i64 %_1727, 1
  store i64 %_1728, i64* %_1715
  br label %_1718
_1720:
  %_1730 = load i64, i64* %_1714
  call void @print_int(i64 %_1730)
  %_1731 = load i64, i64* %_1714
  ret i64 %_1731
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
