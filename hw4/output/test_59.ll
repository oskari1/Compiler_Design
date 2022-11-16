; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_1001 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_1001
  %_1002 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1001
  %_1003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1002, i32 0, i32 1, i32 1
  %_1004 = load i64, i64* %_1003
  ret i64 %_1004
}

define i64 @g(i64 %x) {
  %_982 = alloca i64
  store i64 %x, i64* %_982
  %_983 = alloca { i64, [0 x i64] }*
  %_986 = alloca i64
  %_raw_array984 = call i64* @oat_alloc_array(i64 3)
  %_array985 = bitcast i64* %_raw_array984 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array985, { i64, [0 x i64] }** %_983
  store i64 0, i64* %_986
  br label %_989
_989:
  %_987 = load i64, i64* %_986
  %_988 = icmp slt i64 %_987, 3
  br i1 %_988, label %_990, label %_991
_990:
  %_992 = load i64, i64* %_982
  %_994 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_983
  %_995 = load i64, i64* %_986
  %_993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_994, i32 0, i32 1, i64 %_995
  store i64 %_992, i64* %_993
  %_996 = load i64, i64* %_986
  %_997 = add i64 %_996, 1
  store i64 %_997, i64* %_986
  br label %_989
_991:
  %_998 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_983
  %_999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_998, i32 0, i32 1, i32 1
  %_1000 = load i64, i64* %_999
  ret i64 %_1000
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_920 = alloca i64
  store i64 %argc, i64* %_920
  %_921 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_921
  %_922 = alloca { i64, [0 x i64] }*
  %_925 = alloca i64
  %_937 = alloca { i64, [0 x i64] }*
  %_940 = alloca i64
  %_954 = alloca { i64, [0 x i64] }*
  %_957 = alloca i64
  %_raw_array923 = call i64* @oat_alloc_array(i64 3)
  %_array924 = bitcast i64* %_raw_array923 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array924, { i64, [0 x i64] }** %_922
  store i64 0, i64* %_925
  br label %_928
_928:
  %_926 = load i64, i64* %_925
  %_927 = icmp slt i64 %_926, 3
  br i1 %_927, label %_929, label %_930
_929:
  %_931 = load i64, i64* %_925
  %_933 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_922
  %_934 = load i64, i64* %_925
  %_932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_933, i32 0, i32 1, i64 %_934
  store i64 %_931, i64* %_932
  %_935 = load i64, i64* %_925
  %_936 = add i64 %_935, 1
  store i64 %_936, i64* %_925
  br label %_928
_930:
  %_raw_array938 = call i64* @oat_alloc_array(i64 4)
  %_array939 = bitcast i64* %_raw_array938 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array939, { i64, [0 x i64] }** %_937
  store i64 0, i64* %_940
  br label %_943
_943:
  %_941 = load i64, i64* %_940
  %_942 = icmp slt i64 %_941, 4
  br i1 %_942, label %_944, label %_945
_944:
  %_946 = load i64, i64* %_940
  %_947 = load i64, i64* %_940
  %_948 = mul i64 %_946, %_947
  %_950 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_937
  %_951 = load i64, i64* %_940
  %_949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_950, i32 0, i32 1, i64 %_951
  store i64 %_948, i64* %_949
  %_952 = load i64, i64* %_940
  %_953 = add i64 %_952, 1
  store i64 %_953, i64* %_940
  br label %_943
_945:
  %_raw_array955 = call i64* @oat_alloc_array(i64 3)
  %_array956 = bitcast i64* %_raw_array955 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array956, { i64, [0 x i64] }** %_954
  store i64 0, i64* %_957
  br label %_960
_960:
  %_958 = load i64, i64* %_957
  %_959 = icmp slt i64 %_958, 3
  br i1 %_959, label %_961, label %_962
_961:
  %_963 = load i64, i64* %_957
  %_964 = mul i64 2, %_963
  %_966 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_954
  %_967 = load i64, i64* %_957
  %_965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_966, i32 0, i32 1, i64 %_967
  store i64 %_964, i64* %_965
  %_968 = load i64, i64* %_957
  %_969 = add i64 %_968, 1
  store i64 %_969, i64* %_957
  br label %_960
_962:
  %_970 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_937
  %_971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_970, i32 0, i32 1, i32 3
  %_972 = load i64, i64* %_971
  %_973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_922
  %_974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_973, i32 0, i32 1, i32 1
  %_975 = load i64, i64* %_974
  %_976 = add i64 %_972, %_975
  %_978 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_954
  %_977 = call i64 @f({ i64, [0 x i64] }* %_978)
  %_979 = add i64 %_976, %_977
  %_980 = call i64 @g(i64 4)
  %_981 = add i64 %_979, %_980
  ret i64 %_981
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
