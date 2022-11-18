; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_5062 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_5062
  %_5063 = alloca i64
  store i64 %l, i64* %_5063
  %_5064 = alloca i64
  store i64 %r, i64* %_5064
  %_5065 = alloca i64
  store i64 0, i64* %_5065
  %_5066 = load i64, i64* %_5063
  %_5067 = load i64, i64* %_5064
  %_5068 = icmp slt i64 %_5066, %_5067
  br i1 %_5068, label %_5069, label %_5070
_5069:
  %_5073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5062
  %_5074 = load i64, i64* %_5063
  %_5075 = load i64, i64* %_5064
  %_5072 = call i64 @partition({ i64, [0 x i64] }* %_5073, i64 %_5074, i64 %_5075)
  store i64 %_5072, i64* %_5065
  %_5077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5062
  %_5078 = load i64, i64* %_5063
  %_5079 = load i64, i64* %_5065
  %_5080 = sub i64 %_5079, 1
  call void @quick_sort({ i64, [0 x i64] }* %_5077, i64 %_5078, i64 %_5080)
  %_5082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5062
  %_5083 = load i64, i64* %_5065
  %_5084 = add i64 %_5083, 1
  %_5085 = load i64, i64* %_5064
  call void @quick_sort({ i64, [0 x i64] }* %_5082, i64 %_5084, i64 %_5085)
  br label %_5071
_5070:
  br label %_5071
_5071:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_4970 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_4970
  %_4971 = alloca i64
  store i64 %l, i64* %_4971
  %_4972 = alloca i64
  store i64 %r, i64* %_4972
  %_4973 = alloca i64
  %_4978 = alloca i64
  %_4980 = alloca i64
  %_4983 = alloca i64
  %_4984 = alloca i64
  %_4974 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_4975 = load i64, i64* %_4971
  %_4976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4974, i32 0, i32 1, i64 %_4975
  %_4977 = load i64, i64* %_4976
  store i64 %_4977, i64* %_4973
  %_4979 = load i64, i64* %_4971
  store i64 %_4979, i64* %_4978
  %_4981 = load i64, i64* %_4972
  %_4982 = add i64 %_4981, 1
  store i64 %_4982, i64* %_4980
  store i64 0, i64* %_4983
  store i64 0, i64* %_4984
  br label %_4987
_4987:
  %_4985 = load i64, i64* %_4984
  %_4986 = icmp eq i64 %_4985, 0
  br i1 %_4986, label %_4988, label %_4989
_4988:
  %_4990 = load i64, i64* %_4978
  %_4991 = add i64 %_4990, 1
  store i64 %_4991, i64* %_4978
  br label %_5002
_5002:
  %_4992 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_4993 = load i64, i64* %_4978
  %_4994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4992, i32 0, i32 1, i64 %_4993
  %_4995 = load i64, i64* %_4994
  %_4996 = load i64, i64* %_4973
  %_4997 = icmp sle i64 %_4995, %_4996
  %_4998 = load i64, i64* %_4978
  %_4999 = load i64, i64* %_4972
  %_5000 = icmp sle i64 %_4998, %_4999
  %_5001 = and i1 %_4997, %_5000
  br i1 %_5001, label %_5003, label %_5004
_5003:
  %_5005 = load i64, i64* %_4978
  %_5006 = add i64 %_5005, 1
  store i64 %_5006, i64* %_4978
  br label %_5002
_5004:
  %_5007 = load i64, i64* %_4980
  %_5008 = sub i64 %_5007, 1
  store i64 %_5008, i64* %_4980
  br label %_5015
_5015:
  %_5009 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_5010 = load i64, i64* %_4980
  %_5011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5009, i32 0, i32 1, i64 %_5010
  %_5012 = load i64, i64* %_5011
  %_5013 = load i64, i64* %_4973
  %_5014 = icmp sgt i64 %_5012, %_5013
  br i1 %_5014, label %_5016, label %_5017
_5016:
  %_5018 = load i64, i64* %_4980
  %_5019 = sub i64 %_5018, 1
  store i64 %_5019, i64* %_4980
  br label %_5015
_5017:
  %_5020 = load i64, i64* %_4978
  %_5021 = load i64, i64* %_4980
  %_5022 = icmp sge i64 %_5020, %_5021
  br i1 %_5022, label %_5023, label %_5024
_5023:
  store i64 1, i64* %_4984
  br label %_5025
_5024:
  br label %_5025
_5025:
  %_5026 = load i64, i64* %_4984
  %_5027 = icmp eq i64 %_5026, 0
  br i1 %_5027, label %_5028, label %_5029
_5028:
  %_5031 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_5032 = load i64, i64* %_4978
  %_5033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5031, i32 0, i32 1, i64 %_5032
  %_5034 = load i64, i64* %_5033
  store i64 %_5034, i64* %_4983
  %_5035 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_5036 = load i64, i64* %_4980
  %_5037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5035, i32 0, i32 1, i64 %_5036
  %_5038 = load i64, i64* %_5037
  %_5040 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_5041 = load i64, i64* %_4978
  %_5039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5040, i32 0, i32 1, i64 %_5041
  store i64 %_5038, i64* %_5039
  %_5042 = load i64, i64* %_4983
  %_5044 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_5045 = load i64, i64* %_4980
  %_5043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5044, i32 0, i32 1, i64 %_5045
  store i64 %_5042, i64* %_5043
  br label %_5030
_5029:
  br label %_5030
_5030:
  br label %_4987
_4989:
  %_5046 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_5047 = load i64, i64* %_4971
  %_5048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5046, i32 0, i32 1, i64 %_5047
  %_5049 = load i64, i64* %_5048
  store i64 %_5049, i64* %_4983
  %_5050 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_5051 = load i64, i64* %_4980
  %_5052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5050, i32 0, i32 1, i64 %_5051
  %_5053 = load i64, i64* %_5052
  %_5055 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_5056 = load i64, i64* %_4971
  %_5054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5055, i32 0, i32 1, i64 %_5056
  store i64 %_5053, i64* %_5054
  %_5057 = load i64, i64* %_4983
  %_5059 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4970
  %_5060 = load i64, i64* %_4980
  %_5058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5059, i32 0, i32 1, i64 %_5060
  store i64 %_5057, i64* %_5058
  %_5061 = load i64, i64* %_4980
  ret i64 %_5061
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4948 = alloca i64
  store i64 %argc, i64* %_4948
  %_4949 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4949
  %_4950 = alloca { i64, [0 x i64] }*
  %_raw_array4951 = call i64* @oat_alloc_array(i64 9)
  %_array4952 = bitcast i64* %_raw_array4951 to { i64, [0 x i64] }*
  %_4961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4952, i32 0, i32 1, i32 8
  store i64 109, i64* %_4961
  %_4960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4952, i32 0, i32 1, i32 7
  store i64 111, i64* %_4960
  %_4959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4952, i32 0, i32 1, i32 6
  store i64 104, i64* %_4959
  %_4958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4952, i32 0, i32 1, i32 5
  store i64 115, i64* %_4958
  %_4957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4952, i32 0, i32 1, i32 4
  store i64 123, i64* %_4957
  %_4956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4952, i32 0, i32 1, i32 3
  store i64 102, i64* %_4956
  %_4955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4952, i32 0, i32 1, i32 2
  store i64 121, i64* %_4955
  %_4954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4952, i32 0, i32 1, i32 1
  store i64 112, i64* %_4954
  %_4953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4952, i32 0, i32 1, i32 0
  store i64 107, i64* %_4953
  store { i64, [0 x i64] }* %_array4952, { i64, [0 x i64] }** %_4950
  %_4964 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4950
  %_4963 = call i8* @string_of_array({ i64, [0 x i64] }* %_4964)
  call void @print_string(i8* %_4963)
  %_4966 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4950
  call void @quick_sort({ i64, [0 x i64] }* %_4966, i64 0, i64 8)
  %_4969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4950
  %_4968 = call i8* @string_of_array({ i64, [0 x i64] }* %_4969)
  call void @print_string(i8* %_4968)
  ret i64 255
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
