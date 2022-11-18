; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_5982 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_6019 = alloca i64
  store i64 %x, i64* %_6019
  %_6020 = alloca i64
  store i64 %y, i64* %_6020
  %_6021 = load i64, i64* %_6019
  %_6022 = load i64, i64* %_6020
  %_6023 = and i64 %_6021, %_6022
  %_6024 = xor i64 -1, %_6023
  %_6025 = load i64, i64* %_6019
  %_6026 = load i64, i64* %_6020
  %_6027 = or i64 %_6025, %_6026
  %_6028 = and i64 %_6024, %_6027
  ret i64 %_6028
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_5987 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_5987
  %_5988 = alloca i64
  %_5992 = alloca i64
  %_5989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5987
  %_5990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5989, i32 0, i32 1, i32 0
  %_5991 = load i64, i64* %_5990
  store i64 %_5991, i64* %_5988
  %_5993 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5987
  %_5994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5993, i32 0, i32 1, i32 1
  %_5995 = load i64, i64* %_5994
  store i64 %_5995, i64* %_5992
  %_5996 = load i64, i64* %_5992
  %_5998 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5987
  %_5997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5998, i32 0, i32 1, i32 0
  store i64 %_5996, i64* %_5997
  %_6000 = load i64, i64* %_5988
  %_6001 = load i64, i64* %_5988
  %_6002 = shl i64 %_6001, 23
  %_5999 = call i64 @xor(i64 %_6000, i64 %_6002)
  store i64 %_5999, i64* %_5988
  %_6004 = load i64, i64* %_5988
  %_6005 = load i64, i64* %_5988
  %_6006 = lshr i64 %_6005, 17
  %_6003 = call i64 @xor(i64 %_6004, i64 %_6006)
  store i64 %_6003, i64* %_5988
  %_6008 = load i64, i64* %_5988
  %_6010 = load i64, i64* %_5992
  %_6011 = load i64, i64* %_5992
  %_6012 = lshr i64 %_6011, 26
  %_6009 = call i64 @xor(i64 %_6010, i64 %_6012)
  %_6007 = call i64 @xor(i64 %_6008, i64 %_6009)
  store i64 %_6007, i64* %_5988
  %_6013 = load i64, i64* %_5988
  %_6015 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5987
  %_6014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6015, i32 0, i32 1, i32 1
  store i64 %_6013, i64* %_6014
  %_6016 = load i64, i64* %_5988
  %_6017 = load i64, i64* %_5992
  %_6018 = add i64 %_6016, %_6017
  ret i64 %_6018
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5959 = alloca i64
  store i64 %argc, i64* %_5959
  %_5960 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5960
  %_5961 = alloca { i64, [0 x i64] }*
  %_5964 = alloca i64
  %_raw_array5962 = call i64* @oat_alloc_array(i64 2)
  %_array5963 = bitcast i64* %_raw_array5962 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5963, { i64, [0 x i64] }** %_5961
  store i64 0, i64* %_5964
  br label %_5967
_5967:
  %_5965 = load i64, i64* %_5964
  %_5966 = icmp slt i64 %_5965, 2
  br i1 %_5966, label %_5968, label %_5969
_5968:
  %_5970 = load i64, i64* %_5964
  %_5971 = add i64 %_5970, 1
  %_5972 = mul i64 100, %_5971
  %_5974 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5961
  %_5975 = load i64, i64* %_5964
  %_5973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5974, i32 0, i32 1, i64 %_5975
  store i64 %_5972, i64* %_5973
  %_5976 = load i64, i64* %_5964
  %_5977 = add i64 %_5976, 1
  store i64 %_5977, i64* %_5964
  br label %_5967
_5969:
  %_5980 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5961
  %_5979 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_5980)
  call void @print_int(i64 %_5979)
  %_5983 = getelementptr [2 x i8], [2 x i8]* @_5982, i32 0, i32 0
  call void @print_string(i8* %_5983)
  %_5986 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5961
  %_5985 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_5986)
  call void @print_int(i64 %_5985)
  ret i64 0
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
