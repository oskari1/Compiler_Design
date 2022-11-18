; generated from: ./dbernhard/mat_mult.oat
target triple = "x86_64-unknown-linux"
@eye = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_8057 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_8057 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8054 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8055 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8056 to { i64, [0 x i64] }*) ] }
@_8054 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 0, i64 0 ] }
@_8055 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 1, i64 0 ] }
@_8056 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 1 ] }
@_7886 = global [3 x i8] c"| \00"
@_7903 = global [2 x i8] c" \00"
@_7912 = global [4 x i8] c" |
\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_7985 = alloca i64
  store i64 %argc, i64* %_7985
  %_7986 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7986
  %_7987 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_8008 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_8029 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7988 = call i64* @oat_alloc_array(i64 3)
  %_array7989 = bitcast i64* %_raw_array7988 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8002 = call i64* @oat_alloc_array(i64 3)
  %_array8003 = bitcast i64* %_raw_array8002 to { i64, [0 x i64] }*
  %_8006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8003, i32 0, i32 1, i32 2
  store i64 1, i64* %_8006
  %_8005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8003, i32 0, i32 1, i32 1
  store i64 0, i64* %_8005
  %_8004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8003, i32 0, i32 1, i32 0
  store i64 0, i64* %_8004
  %_8007 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7989, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array8003, { i64, [0 x i64] }** %_8007
  %_raw_array7996 = call i64* @oat_alloc_array(i64 3)
  %_array7997 = bitcast i64* %_raw_array7996 to { i64, [0 x i64] }*
  %_8000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7997, i32 0, i32 1, i32 2
  store i64 0, i64* %_8000
  %_7999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7997, i32 0, i32 1, i32 1
  store i64 1, i64* %_7999
  %_7998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7997, i32 0, i32 1, i32 0
  store i64 0, i64* %_7998
  %_8001 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7989, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7997, { i64, [0 x i64] }** %_8001
  %_raw_array7990 = call i64* @oat_alloc_array(i64 3)
  %_array7991 = bitcast i64* %_raw_array7990 to { i64, [0 x i64] }*
  %_7994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7991, i32 0, i32 1, i32 2
  store i64 0, i64* %_7994
  %_7993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7991, i32 0, i32 1, i32 1
  store i64 0, i64* %_7993
  %_7992 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7991, i32 0, i32 1, i32 0
  store i64 1, i64* %_7992
  %_7995 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7989, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7991, { i64, [0 x i64] }** %_7995
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7989, { i64, [0 x { i64, [0 x i64] }*] }** %_7987
  %_raw_array8009 = call i64* @oat_alloc_array(i64 3)
  %_array8010 = bitcast i64* %_raw_array8009 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8023 = call i64* @oat_alloc_array(i64 3)
  %_array8024 = bitcast i64* %_raw_array8023 to { i64, [0 x i64] }*
  %_8027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8024, i32 0, i32 1, i32 2
  store i64 1, i64* %_8027
  %_8026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8024, i32 0, i32 1, i32 1
  store i64 0, i64* %_8026
  %_8025 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8024, i32 0, i32 1, i32 0
  store i64 2, i64* %_8025
  %_8028 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8010, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array8024, { i64, [0 x i64] }** %_8028
  %_raw_array8017 = call i64* @oat_alloc_array(i64 3)
  %_array8018 = bitcast i64* %_raw_array8017 to { i64, [0 x i64] }*
  %_8021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8018, i32 0, i32 1, i32 2
  store i64 2, i64* %_8021
  %_8020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8018, i32 0, i32 1, i32 1
  store i64 1, i64* %_8020
  %_8019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8018, i32 0, i32 1, i32 0
  store i64 9, i64* %_8019
  %_8022 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8010, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array8018, { i64, [0 x i64] }** %_8022
  %_raw_array8011 = call i64* @oat_alloc_array(i64 3)
  %_array8012 = bitcast i64* %_raw_array8011 to { i64, [0 x i64] }*
  %_8015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8012, i32 0, i32 1, i32 2
  store i64 3, i64* %_8015
  %_8014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8012, i32 0, i32 1, i32 1
  store i64 4, i64* %_8014
  %_8013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8012, i32 0, i32 1, i32 0
  store i64 1, i64* %_8013
  %_8016 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8010, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array8012, { i64, [0 x i64] }** %_8016
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array8010, { i64, [0 x { i64, [0 x i64] }*] }** %_8008
  %_raw_array8030 = call i64* @oat_alloc_array(i64 3)
  %_array8031 = bitcast i64* %_raw_array8030 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8044 = call i64* @oat_alloc_array(i64 3)
  %_array8045 = bitcast i64* %_raw_array8044 to { i64, [0 x i64] }*
  %_8048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8045, i32 0, i32 1, i32 2
  store i64 1, i64* %_8048
  %_8047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8045, i32 0, i32 1, i32 1
  store i64 1, i64* %_8047
  %_8046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8045, i32 0, i32 1, i32 0
  store i64 2, i64* %_8046
  %_8049 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8031, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array8045, { i64, [0 x i64] }** %_8049
  %_raw_array8038 = call i64* @oat_alloc_array(i64 3)
  %_array8039 = bitcast i64* %_raw_array8038 to { i64, [0 x i64] }*
  %_8042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8039, i32 0, i32 1, i32 2
  store i64 2, i64* %_8042
  %_8041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8039, i32 0, i32 1, i32 1
  store i64 1, i64* %_8041
  %_8040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8039, i32 0, i32 1, i32 0
  store i64 1, i64* %_8040
  %_8043 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8031, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array8039, { i64, [0 x i64] }** %_8043
  %_raw_array8032 = call i64* @oat_alloc_array(i64 3)
  %_array8033 = bitcast i64* %_raw_array8032 to { i64, [0 x i64] }*
  %_8036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8033, i32 0, i32 1, i32 2
  store i64 2, i64* %_8036
  %_8035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8033, i32 0, i32 1, i32 1
  store i64 0, i64* %_8035
  %_8034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8033, i32 0, i32 1, i32 0
  store i64 1, i64* %_8034
  %_8037 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8031, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array8033, { i64, [0 x i64] }** %_8037
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array8031, { i64, [0 x { i64, [0 x i64] }*] }** %_8029
  %_8052 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8008
  %_8053 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8029
  %_8051 = call { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %_8052, { i64, [0 x { i64, [0 x i64] }*] }* %_8053)
  call void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %_8051, i1 0)
  ret i64 0
}

define { i64, [0 x { i64, [0 x i64] }*] }* @new_mat() {
  %_raw_array7974 = call i64* @oat_alloc_array(i64 3)
  %_array7975 = bitcast i64* %_raw_array7974 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7982 = call i64* @oat_alloc_array(i64 3)
  %_array7983 = bitcast i64* %_raw_array7982 to { i64, [0 x i64] }*
  %_7984 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7975, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array7983, { i64, [0 x i64] }** %_7984
  %_raw_array7979 = call i64* @oat_alloc_array(i64 3)
  %_array7980 = bitcast i64* %_raw_array7979 to { i64, [0 x i64] }*
  %_7981 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7975, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7980, { i64, [0 x i64] }** %_7981
  %_raw_array7976 = call i64* @oat_alloc_array(i64 3)
  %_array7977 = bitcast i64* %_raw_array7976 to { i64, [0 x i64] }*
  %_7978 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7975, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7977, { i64, [0 x i64] }** %_7978
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_array7975
}

define { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }* %matb) {
  %_7916 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }** %_7916
  %_7917 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %matb, { i64, [0 x { i64, [0 x i64] }*] }** %_7917
  %_7918 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_7920 = alloca i64
  %_7926 = alloca i64
  %_7932 = alloca i64
  %_7919 = call { i64, [0 x { i64, [0 x i64] }*] }* @new_mat()
  store { i64, [0 x { i64, [0 x i64] }*] }* %_7919, { i64, [0 x { i64, [0 x i64] }*] }** %_7918
  store i64 0, i64* %_7920
  br label %_7923
_7923:
  %_7921 = load i64, i64* %_7920
  %_7922 = icmp slt i64 %_7921, 3
  br i1 %_7922, label %_7924, label %_7925
_7924:
  store i64 0, i64* %_7926
  br label %_7929
_7929:
  %_7927 = load i64, i64* %_7926
  %_7928 = icmp slt i64 %_7927, 3
  br i1 %_7928, label %_7930, label %_7931
_7930:
  store i64 0, i64* %_7932
  br label %_7935
_7935:
  %_7933 = load i64, i64* %_7932
  %_7934 = icmp slt i64 %_7933, 3
  br i1 %_7934, label %_7936, label %_7937
_7936:
  %_7938 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_7918
  %_7939 = load i64, i64* %_7920
  %_7940 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7938, i32 0, i32 1, i64 %_7939
  %_7941 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7940
  %_7942 = load i64, i64* %_7926
  %_7943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7941, i32 0, i32 1, i64 %_7942
  %_7944 = load i64, i64* %_7943
  %_7945 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_7916
  %_7946 = load i64, i64* %_7920
  %_7947 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7945, i32 0, i32 1, i64 %_7946
  %_7948 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7947
  %_7949 = load i64, i64* %_7932
  %_7950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7948, i32 0, i32 1, i64 %_7949
  %_7951 = load i64, i64* %_7950
  %_7952 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_7917
  %_7953 = load i64, i64* %_7932
  %_7954 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7952, i32 0, i32 1, i64 %_7953
  %_7955 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7954
  %_7956 = load i64, i64* %_7926
  %_7957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7955, i32 0, i32 1, i64 %_7956
  %_7958 = load i64, i64* %_7957
  %_7959 = mul i64 %_7951, %_7958
  %_7960 = add i64 %_7944, %_7959
  %_7962 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_7918
  %_7963 = load i64, i64* %_7920
  %_7964 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7962, i32 0, i32 1, i64 %_7963
  %_7965 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7964
  %_7966 = load i64, i64* %_7926
  %_7961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7965, i32 0, i32 1, i64 %_7966
  store i64 %_7960, i64* %_7961
  %_7967 = load i64, i64* %_7932
  %_7968 = add i64 %_7967, 1
  store i64 %_7968, i64* %_7932
  br label %_7935
_7937:
  %_7969 = load i64, i64* %_7926
  %_7970 = add i64 %_7969, 1
  store i64 %_7970, i64* %_7926
  br label %_7929
_7931:
  %_7971 = load i64, i64* %_7920
  %_7972 = add i64 %_7971, 1
  store i64 %_7972, i64* %_7920
  br label %_7923
_7925:
  %_7973 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_7918
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_7973
}

define void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %mat, i1 %pretty) {
  %_7873 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %mat, { i64, [0 x { i64, [0 x i64] }*] }** %_7873
  %_7874 = alloca i1
  store i1 %pretty, i1* %_7874
  %_7875 = alloca i64
  %_7888 = alloca i64
  store i64 0, i64* %_7875
  br label %_7878
_7878:
  %_7876 = load i64, i64* %_7875
  %_7877 = icmp slt i64 %_7876, 3
  br i1 %_7877, label %_7879, label %_7880
_7879:
  %_7881 = load i1, i1* %_7874
  br i1 %_7881, label %_7882, label %_7883
_7882:
  %_7887 = getelementptr [3 x i8], [3 x i8]* @_7886, i32 0, i32 0
  call void @print_string(i8* %_7887)
  br label %_7884
_7883:
  br label %_7884
_7884:
  store i64 0, i64* %_7888
  br label %_7891
_7891:
  %_7889 = load i64, i64* %_7888
  %_7890 = icmp slt i64 %_7889, 3
  br i1 %_7890, label %_7892, label %_7893
_7892:
  %_7895 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_7873
  %_7896 = load i64, i64* %_7875
  %_7897 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7895, i32 0, i32 1, i64 %_7896
  %_7898 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7897
  %_7899 = load i64, i64* %_7888
  %_7900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7898, i32 0, i32 1, i64 %_7899
  %_7901 = load i64, i64* %_7900
  call void @print_int(i64 %_7901)
  %_7904 = getelementptr [2 x i8], [2 x i8]* @_7903, i32 0, i32 0
  call void @print_string(i8* %_7904)
  %_7905 = load i64, i64* %_7888
  %_7906 = add i64 %_7905, 1
  store i64 %_7906, i64* %_7888
  br label %_7891
_7893:
  %_7907 = load i1, i1* %_7874
  br i1 %_7907, label %_7908, label %_7909
_7908:
  %_7913 = getelementptr [4 x i8], [4 x i8]* @_7912, i32 0, i32 0
  call void @print_string(i8* %_7913)
  br label %_7910
_7909:
  br label %_7910
_7910:
  %_7914 = load i64, i64* %_7875
  %_7915 = add i64 %_7914, 1
  store i64 %_7915, i64* %_7875
  br label %_7878
_7880:
  ret void
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
