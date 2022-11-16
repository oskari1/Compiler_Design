; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_1067 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_1067
  %_1068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1067
  %_1069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1068, i32 0, i32 1, i32 3
  %_1070 = load i64, i64* %_1069
  ret i64 %_1070
}

define { i64, [0 x i64] }* @g() {
  %_1059 = alloca { i64, [0 x i64] }*
  %_raw_array1060 = call i64* @oat_alloc_array(i64 4)
  %_array1061 = bitcast i64* %_raw_array1060 to { i64, [0 x i64] }*
  %_1065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1061, i32 0, i32 1, i32 3
  store i64 99, i64* %_1065
  %_1064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1061, i32 0, i32 1, i32 2
  store i64 99, i64* %_1064
  %_1063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1061, i32 0, i32 1, i32 1
  store i64 1, i64* %_1063
  %_1062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1061, i32 0, i32 1, i32 0
  store i64 99, i64* %_1062
  store { i64, [0 x i64] }* %_array1061, { i64, [0 x i64] }** %_1059
  %_1066 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1059
  ret { i64, [0 x i64] }* %_1066
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_990 = alloca i64
  store i64 %argc, i64* %_990
  %_991 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_991
  %_992 = alloca { i64, [0 x i64] }*
  %_998 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_1019 = alloca i64
  %_1020 = alloca { i64, [0 x i64] }*
  %_1022 = alloca { i64, [0 x i64] }*
  %_raw_array993 = call i64* @oat_alloc_array(i64 3)
  %_array994 = bitcast i64* %_raw_array993 to { i64, [0 x i64] }*
  %_997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array994, i32 0, i32 1, i32 2
  store i64 99, i64* %_997
  %_996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array994, i32 0, i32 1, i32 1
  store i64 1, i64* %_996
  %_995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array994, i32 0, i32 1, i32 0
  store i64 99, i64* %_995
  store { i64, [0 x i64] }* %_array994, { i64, [0 x i64] }** %_992
  %_raw_array999 = call i64* @oat_alloc_array(i64 3)
  %_array1000 = bitcast i64* %_raw_array999 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1013 = call i64* @oat_alloc_array(i64 3)
  %_array1014 = bitcast i64* %_raw_array1013 to { i64, [0 x i64] }*
  %_1017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1014, i32 0, i32 1, i32 2
  store i64 99, i64* %_1017
  %_1016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1014, i32 0, i32 1, i32 1
  store i64 99, i64* %_1016
  %_1015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1014, i32 0, i32 1, i32 0
  store i64 99, i64* %_1015
  %_1018 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1000, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1014, { i64, [0 x i64] }** %_1018
  %_raw_array1007 = call i64* @oat_alloc_array(i64 3)
  %_array1008 = bitcast i64* %_raw_array1007 to { i64, [0 x i64] }*
  %_1011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1008, i32 0, i32 1, i32 2
  store i64 99, i64* %_1011
  %_1010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1008, i32 0, i32 1, i32 1
  store i64 1, i64* %_1010
  %_1009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1008, i32 0, i32 1, i32 0
  store i64 99, i64* %_1009
  %_1012 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1000, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1008, { i64, [0 x i64] }** %_1012
  %_raw_array1001 = call i64* @oat_alloc_array(i64 3)
  %_array1002 = bitcast i64* %_raw_array1001 to { i64, [0 x i64] }*
  %_1005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1002, i32 0, i32 1, i32 2
  store i64 99, i64* %_1005
  %_1004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1002, i32 0, i32 1, i32 1
  store i64 99, i64* %_1004
  %_1003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1002, i32 0, i32 1, i32 0
  store i64 99, i64* %_1003
  %_1006 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1000, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1002, { i64, [0 x i64] }** %_1006
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1000, { i64, [0 x { i64, [0 x i64] }*] }** %_998
  store i64 1, i64* %_1019
  %_1021 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1021, { i64, [0 x i64] }** %_1020
  %_raw_array1023 = call i64* @oat_alloc_array(i64 4)
  %_array1024 = bitcast i64* %_raw_array1023 to { i64, [0 x i64] }*
  %_1028 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1024, i32 0, i32 1, i32 3
  store i64 1, i64* %_1028
  %_1027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1024, i32 0, i32 1, i32 2
  store i64 99, i64* %_1027
  %_1026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1024, i32 0, i32 1, i32 1
  store i64 99, i64* %_1026
  %_1025 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1024, i32 0, i32 1, i32 0
  store i64 99, i64* %_1025
  store { i64, [0 x i64] }* %_array1024, { i64, [0 x i64] }** %_1022
  %_1029 = load i64, i64* %_1019
  %_1030 = load i64, i64* @i
  %_1031 = add i64 %_1029, %_1030
  store i64 %_1031, i64* %_1019
  %_1032 = load i64, i64* %_1019
  %_1033 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_992
  %_1034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1033, i32 0, i32 1, i32 1
  %_1035 = load i64, i64* %_1034
  %_1036 = add i64 %_1032, %_1035
  store i64 %_1036, i64* %_1019
  %_1037 = load i64, i64* %_1019
  %_1038 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_998
  %_1039 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1038, i32 0, i32 1, i32 1
  %_1040 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1039
  %_1041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1040, i32 0, i32 1, i32 1
  %_1042 = load i64, i64* %_1041
  %_1043 = add i64 %_1037, %_1042
  store i64 %_1043, i64* %_1019
  %_1044 = load i64, i64* %_1019
  %_1045 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1022
  %_1046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1045, i32 0, i32 1, i32 3
  %_1047 = load i64, i64* %_1046
  %_1048 = add i64 %_1044, %_1047
  store i64 %_1048, i64* %_1019
  %_1049 = load i64, i64* %_1019
  %_1051 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1022
  %_1050 = call i64 @f({ i64, [0 x i64] }* %_1051)
  %_1052 = add i64 %_1049, %_1050
  store i64 %_1052, i64* %_1019
  %_1053 = load i64, i64* %_1019
  %_1054 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1020
  %_1055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1054, i32 0, i32 1, i32 1
  %_1056 = load i64, i64* %_1055
  %_1057 = add i64 %_1053, %_1056
  store i64 %_1057, i64* %_1019
  %_1058 = load i64, i64* %_1019
  ret i64 %_1058
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
