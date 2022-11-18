; generated from: ./thbwd/nested_return_array.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_6106 = alloca i64
  store i64 %argc, i64* %_6106
  %_6107 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_6107
  %_6108 = call { i64, [0 x i64] }* @function(i64 0)
  %_6109 = call { i64, [0 x i64] }* @function(i64 1)
  %_6110 = call { i64, [0 x i64] }* @function(i64 2)
  ret i64 0
}

define { i64, [0 x i64] }* @function(i64 %x) {
  %_6088 = alloca i64
  store i64 %x, i64* %_6088
  %_6089 = load i64, i64* %_6088
  %_6090 = icmp eq i64 %_6089, 0
  br i1 %_6090, label %_6091, label %_6092
_6091:
  ret { i64, [0 x i64] }* null
_6092:
  %_6094 = load i64, i64* %_6088
  %_6095 = icmp eq i64 %_6094, 1
  br i1 %_6095, label %_6096, label %_6097
_6096:
  %_raw_array6099 = call i64* @oat_alloc_array(i64 3)
  %_array6100 = bitcast i64* %_raw_array6099 to { i64, [0 x i64] }*
  %_6103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6100, i32 0, i32 1, i32 2
  store i64 9, i64* %_6103
  %_6102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6100, i32 0, i32 1, i32 1
  store i64 1, i64* %_6102
  %_6101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6100, i32 0, i32 1, i32 0
  store i64 4, i64* %_6101
  ret { i64, [0 x i64] }* %_array6100
_6097:
  %_raw_array6104 = call i64* @oat_alloc_array(i64 6)
  %_array6105 = bitcast i64* %_raw_array6104 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_array6105
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
