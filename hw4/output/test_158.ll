; generated from: ./dbernhard/null_update_global.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8287 to { i64, [0 x i64] }*)
@_8287 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 0 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8277 = alloca i64
  store i64 %argc, i64* %_8277
  %_8278 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8278
  %_raw_array8279 = call i64* @oat_alloc_array(i64 3)
  %_array8280 = bitcast i64* %_raw_array8279 to { i64, [0 x i64] }*
  %_8283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8280, i32 0, i32 1, i32 2
  store i64 12, i64* %_8283
  %_8282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8280, i32 0, i32 1, i32 1
  store i64 11, i64* %_8282
  %_8281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8280, i32 0, i32 1, i32 0
  store i64 10, i64* %_8281
  store { i64, [0 x i64] }* %_array8280, { i64, [0 x i64] }** @x
  %_8284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_8285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8284, i32 0, i32 1, i32 2
  %_8286 = load i64, i64* %_8285
  ret i64 %_8286
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
