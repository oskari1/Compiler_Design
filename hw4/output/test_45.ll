; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_1016 to { i64, [0 x i64] }*)
@_1016 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_1015 to { i64, [0 x i64] }*)
@_1015 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_989 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_989
  %_990 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_990
  %_991 = alloca i64
  store i64 %len, i64* %_991
  %_992 = alloca i64
  %_993 = alloca i64
  store i64 0, i64* %_992
  store i64 0, i64* %_993
  br label %_997
_997:
  %_994 = load i64, i64* %_993
  %_995 = load i64, i64* %_991
  %_996 = icmp slt i64 %_994, %_995
  br i1 %_996, label %_998, label %_999
_998:
  %_1000 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_989
  %_1001 = load i64, i64* %_993
  %_1002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1000, i32 0, i32 1, i64 %_1001
  %_1003 = load i64, i64* %_1002
  %_1004 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_990
  %_1005 = load i64, i64* %_993
  %_1006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1004, i32 0, i32 1, i64 %_1005
  %_1007 = load i64, i64* %_1006
  %_1008 = icmp ne i64 %_1003, %_1007
  br i1 %_1008, label %_1009, label %_1010
_1009:
  store i64 1, i64* %_992
  br label %_1011
_1010:
  br label %_1011
_1011:
  %_1012 = load i64, i64* %_993
  %_1013 = add i64 %_1012, 1
  store i64 %_1013, i64* %_993
  br label %_997
_999:
  %_1014 = load i64, i64* %_992
  ret i64 %_1014
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_978 = alloca i64
  store i64 %argc, i64* %_978
  %_979 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_979
  %_980 = alloca i64
  store i64 1, i64* %_980
  %_982 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_983 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_981 = call i64 @arrcheck({ i64, [0 x i64] }* %_982, { i64, [0 x i64] }* %_983, i64 4)
  %_984 = icmp eq i64 %_981, 1
  br i1 %_984, label %_985, label %_986
_985:
  store i64 0, i64* %_980
  br label %_987
_986:
  br label %_987
_987:
  %_988 = load i64, i64* %_980
  ret i64 %_988
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
