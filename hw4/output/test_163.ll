; generated from: ./dbernhard/update_global.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_8335 to { i64, [0 x i64] }*)
@_8335 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8325 = alloca i64
  store i64 %argc, i64* %_8325
  %_8326 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8326
  %_raw_array8327 = call i64* @oat_alloc_array(i64 3)
  %_array8328 = bitcast i64* %_raw_array8327 to { i64, [0 x i64] }*
  %_8331 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8328, i32 0, i32 1, i32 2
  store i64 12, i64* %_8331
  %_8330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8328, i32 0, i32 1, i32 1
  store i64 11, i64* %_8330
  %_8329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8328, i32 0, i32 1, i32 0
  store i64 10, i64* %_8329
  store { i64, [0 x i64] }* %_array8328, { i64, [0 x i64] }** @x
  %_8332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_8333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8332, i32 0, i32 1, i32 2
  %_8334 = load i64, i64* %_8333
  ret i64 %_8334
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
