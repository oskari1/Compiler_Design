; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_3972 = alloca i64
  store i64 %argc, i64* %_3972
  %_3973 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_3973
  %_3974 = alloca i64
  %_3975 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4023 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 10, i64* %_3974
  %_raw_array3976 = call i64* @oat_alloc_array(i64 3)
  %_array3977 = bitcast i64* %_raw_array3976 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4008 = call i64* @oat_alloc_array(i64 3)
  %_array4009 = bitcast i64* %_raw_array4008 to { i64, [0 x i64] }*
  %_4018 = load i64, i64* %_3974
  %_4019 = add i64 %_4018, 2
  %_4020 = add i64 %_4019, 2
  %_4021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4009, i32 0, i32 1, i32 2
  store i64 %_4020, i64* %_4021
  %_4014 = load i64, i64* %_3974
  %_4015 = add i64 %_4014, 2
  %_4016 = add i64 %_4015, 1
  %_4017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4009, i32 0, i32 1, i32 1
  store i64 %_4016, i64* %_4017
  %_4010 = load i64, i64* %_3974
  %_4011 = add i64 %_4010, 2
  %_4012 = add i64 %_4011, 0
  %_4013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4009, i32 0, i32 1, i32 0
  store i64 %_4012, i64* %_4013
  %_4022 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3977, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4009, { i64, [0 x i64] }** %_4022
  %_raw_array3993 = call i64* @oat_alloc_array(i64 3)
  %_array3994 = bitcast i64* %_raw_array3993 to { i64, [0 x i64] }*
  %_4003 = load i64, i64* %_3974
  %_4004 = add i64 %_4003, 1
  %_4005 = add i64 %_4004, 2
  %_4006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3994, i32 0, i32 1, i32 2
  store i64 %_4005, i64* %_4006
  %_3999 = load i64, i64* %_3974
  %_4000 = add i64 %_3999, 1
  %_4001 = add i64 %_4000, 1
  %_4002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3994, i32 0, i32 1, i32 1
  store i64 %_4001, i64* %_4002
  %_3995 = load i64, i64* %_3974
  %_3996 = add i64 %_3995, 1
  %_3997 = add i64 %_3996, 0
  %_3998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3994, i32 0, i32 1, i32 0
  store i64 %_3997, i64* %_3998
  %_4007 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3977, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3994, { i64, [0 x i64] }** %_4007
  %_raw_array3978 = call i64* @oat_alloc_array(i64 3)
  %_array3979 = bitcast i64* %_raw_array3978 to { i64, [0 x i64] }*
  %_3988 = load i64, i64* %_3974
  %_3989 = add i64 %_3988, 0
  %_3990 = add i64 %_3989, 2
  %_3991 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 2
  store i64 %_3990, i64* %_3991
  %_3984 = load i64, i64* %_3974
  %_3985 = add i64 %_3984, 0
  %_3986 = add i64 %_3985, 1
  %_3987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 1
  store i64 %_3986, i64* %_3987
  %_3980 = load i64, i64* %_3974
  %_3981 = add i64 %_3980, 0
  %_3982 = add i64 %_3981, 0
  %_3983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3979, i32 0, i32 1, i32 0
  store i64 %_3982, i64* %_3983
  %_3992 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3977, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3979, { i64, [0 x i64] }** %_3992
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3977, { i64, [0 x { i64, [0 x i64] }*] }** %_3975
  %_4024 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_3975
  store { i64, [0 x { i64, [0 x i64] }*] }* %_4024, { i64, [0 x { i64, [0 x i64] }*] }** %_4023
  %_4025 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4023
  %_4026 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4025, i32 0, i32 1, i32 2
  %_4027 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4026
  %_4028 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4027, i32 0, i32 1, i32 1
  %_4029 = load i64, i64* %_4028
  ret i64 %_4029
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
