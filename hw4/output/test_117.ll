; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_6034 = alloca i64
  store i64 %n, i64* %_6034
  %_6035 = alloca { i64, [0 x i1] }*
  %_6039 = alloca i64
  %_6055 = alloca i64
  %_6069 = alloca i64
  %_6086 = alloca i64
  %_6087 = alloca i64
  %_6036 = load i64, i64* %_6034
  %_raw_array6037 = call i64* @oat_alloc_array(i64 %_6036)
  %_array6038 = bitcast i64* %_raw_array6037 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array6038, { i64, [0 x i1] }** %_6035
  store i64 0, i64* %_6039
  br label %_6043
_6043:
  %_6040 = load i64, i64* %_6039
  %_6041 = load i64, i64* %_6034
  %_6042 = icmp slt i64 %_6040, %_6041
  br i1 %_6042, label %_6044, label %_6045
_6044:
  %_6047 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6035
  %_6048 = load i64, i64* %_6039
  %_6046 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6047, i32 0, i32 1, i64 %_6048
  store i1 1, i1* %_6046
  %_6049 = load i64, i64* %_6039
  %_6050 = add i64 %_6049, 1
  store i64 %_6050, i64* %_6039
  br label %_6043
_6045:
  %_6052 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6035
  %_6051 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6052, i32 0, i32 1, i32 0
  store i1 0, i1* %_6051
  %_6054 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6035
  %_6053 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6054, i32 0, i32 1, i32 1
  store i1 0, i1* %_6053
  store i64 0, i64* %_6055
  br label %_6059
_6059:
  %_6056 = load i64, i64* %_6055
  %_6057 = load i64, i64* %_6034
  %_6058 = icmp slt i64 %_6056, %_6057
  br i1 %_6058, label %_6060, label %_6061
_6060:
  %_6062 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6035
  %_6063 = load i64, i64* %_6055
  %_6064 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6062, i32 0, i32 1, i64 %_6063
  %_6065 = load i1, i1* %_6064
  br i1 %_6065, label %_6066, label %_6067
_6066:
  %_6070 = load i64, i64* %_6055
  %_6071 = mul i64 %_6070, 2
  store i64 %_6071, i64* %_6069
  br label %_6075
_6075:
  %_6072 = load i64, i64* %_6069
  %_6073 = load i64, i64* %_6034
  %_6074 = icmp slt i64 %_6072, %_6073
  br i1 %_6074, label %_6076, label %_6077
_6076:
  %_6079 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6035
  %_6080 = load i64, i64* %_6069
  %_6078 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6079, i32 0, i32 1, i64 %_6080
  store i1 0, i1* %_6078
  %_6081 = load i64, i64* %_6069
  %_6082 = load i64, i64* %_6055
  %_6083 = add i64 %_6081, %_6082
  store i64 %_6083, i64* %_6069
  br label %_6075
_6077:
  br label %_6068
_6067:
  br label %_6068
_6068:
  %_6084 = load i64, i64* %_6055
  %_6085 = add i64 %_6084, 1
  store i64 %_6085, i64* %_6055
  br label %_6059
_6061:
  store i64 0, i64* %_6086
  store i64 0, i64* %_6087
  br label %_6091
_6091:
  %_6088 = load i64, i64* %_6087
  %_6089 = load i64, i64* %_6034
  %_6090 = icmp slt i64 %_6088, %_6089
  br i1 %_6090, label %_6092, label %_6093
_6092:
  %_6094 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_6035
  %_6095 = load i64, i64* %_6087
  %_6096 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_6094, i32 0, i32 1, i64 %_6095
  %_6097 = load i1, i1* %_6096
  br i1 %_6097, label %_6098, label %_6099
_6098:
  %_6101 = load i64, i64* %_6086
  %_6102 = add i64 %_6101, 1
  store i64 %_6102, i64* %_6086
  br label %_6100
_6099:
  br label %_6100
_6100:
  %_6103 = load i64, i64* %_6087
  %_6104 = add i64 %_6103, 1
  store i64 %_6104, i64* %_6087
  br label %_6091
_6093:
  %_6105 = load i64, i64* %_6086
  ret i64 %_6105
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6029 = alloca i64
  store i64 %argc, i64* %_6029
  %_6030 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6030
  %_6031 = alloca i64
  store i64 100, i64* %_6031
  %_6033 = load i64, i64* %_6031
  %_6032 = call i64 @sieve(i64 %_6033)
  ret i64 %_6032
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
