; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_1986 = alloca i64
  store i64 %a, i64* %_1986
  %_1987 = alloca i64
  store i64 %b, i64* %_1987
  %_1993 = alloca i64
  br label %_1990
_1990:
  %_1988 = load i64, i64* %_1987
  %_1989 = icmp ne i64 %_1988, 0
  br i1 %_1989, label %_1991, label %_1992
_1991:
  %_1994 = load i64, i64* %_1987
  store i64 %_1994, i64* %_1993
  %_1996 = load i64, i64* %_1986
  %_1997 = load i64, i64* %_1987
  %_1995 = call i64 @mod(i64 %_1996, i64 %_1997)
  store i64 %_1995, i64* %_1987
  %_1998 = load i64, i64* %_1993
  store i64 %_1998, i64* %_1986
  br label %_1990
_1992:
  %_1999 = load i64, i64* %_1986
  ret i64 %_1999
}

define i64 @mod(i64 %a, i64 %b) {
  %_1971 = alloca i64
  store i64 %a, i64* %_1971
  %_1972 = alloca i64
  store i64 %b, i64* %_1972
  %_1973 = alloca i64
  %_1974 = load i64, i64* %_1971
  store i64 %_1974, i64* %_1973
  br label %_1979
_1979:
  %_1975 = load i64, i64* %_1973
  %_1976 = load i64, i64* %_1972
  %_1977 = sub i64 %_1975, %_1976
  %_1978 = icmp sge i64 %_1977, 0
  br i1 %_1978, label %_1980, label %_1981
_1980:
  %_1982 = load i64, i64* %_1973
  %_1983 = load i64, i64* %_1972
  %_1984 = sub i64 %_1982, %_1983
  store i64 %_1984, i64* %_1973
  br label %_1979
_1981:
  %_1985 = load i64, i64* %_1973
  ret i64 %_1985
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1964 = alloca i64
  store i64 %argc, i64* %_1964
  %_1965 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1965
  %_1966 = alloca i64
  %_1967 = alloca i64
  store i64 64, i64* %_1966
  store i64 48, i64* %_1967
  %_1969 = load i64, i64* %_1966
  %_1970 = load i64, i64* %_1967
  %_1968 = call i64 @gcd(i64 %_1969, i64 %_1970)
  ret i64 %_1968
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
