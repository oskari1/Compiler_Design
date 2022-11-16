; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1820 = alloca i64
  store i64 %argc, i64* %_1820
  %_1821 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1821
  %_1822 = alloca i64
  store i64 1, i64* %_1822
  br label %_1826
_1826:
  %_1823 = load i64, i64* %_1822
  %_1824 = load i64, i64* %_1820
  %_1825 = icmp slt i64 %_1823, %_1824
  br i1 %_1825, label %_1827, label %_1828
_1827:
  %_1830 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1821
  %_1831 = load i64, i64* %_1822
  %_1832 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_1830, i32 0, i32 1, i64 %_1831
  %_1833 = load i8*, i8** %_1832
  call void @print_string(i8* %_1833)
  %_1834 = load i64, i64* %_1822
  %_1835 = add i64 %_1834, 1
  store i64 %_1835, i64* %_1822
  br label %_1826
_1828:
  %_1836 = load i64, i64* %_1820
  ret i64 %_1836
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
