; generated from: ./dbernhard/ret_null.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @call_empty() {
  ret { i64, [0 x i64] }* null
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8298 = alloca i64
  store i64 %argc, i64* %_8298
  %_8299 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8299
  %_8300 = alloca { i64, [0 x i64] }*
  %_8301 = call { i64, [0 x i64] }* @call_empty()
  store { i64, [0 x i64] }* %_8301, { i64, [0 x i64] }** %_8300
  %_raw_array8302 = call i64* @oat_alloc_array(i64 10)
  %_array8303 = bitcast i64* %_raw_array8302 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array8303, { i64, [0 x i64] }** %_8300
  %_8305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8300
  %_8304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8305, i32 0, i32 1, i32 1
  store i64 5, i64* %_8304
  %_8306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8300
  %_8307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8306, i32 0, i32 1, i32 1
  %_8308 = load i64, i64* %_8307
  ret i64 %_8308
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
