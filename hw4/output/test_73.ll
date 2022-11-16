; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_2017 = load i64, i64* @a
  %_2018 = add i64 %_2017, 1
  store i64 %_2018, i64* @a
  %_2019 = load i64, i64* @a
  ret i64 %_2019
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1998 = alloca i64
  store i64 %argc, i64* %_1998
  %_1999 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1999
  %_2000 = alloca { i64, [0 x i64] }*
  %_2001 = call i64 @f()
  %_raw_array2002 = call i64* @oat_alloc_array(i64 %_2001)
  %_array2003 = bitcast i64* %_raw_array2002 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2003, { i64, [0 x i64] }** %_2000
  %_2005 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2000
  %_2004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2005, i32 0, i32 1, i32 0
  store i64 0, i64* %_2004
  %_2007 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2000
  %_2006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2007, i32 0, i32 1, i32 1
  store i64 1, i64* %_2006
  %_2008 = load i64, i64* @a
  %_2009 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2000
  %_2010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2009, i32 0, i32 1, i32 0
  %_2011 = load i64, i64* %_2010
  %_2012 = add i64 %_2008, %_2011
  %_2013 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2000
  %_2014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2013, i32 0, i32 1, i32 1
  %_2015 = load i64, i64* %_2014
  %_2016 = add i64 %_2012, %_2015
  ret i64 %_2016
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
