; generated from: ./dbernhard/null_update_global2.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8288 = alloca i64
  store i64 %argc, i64* %_8288
  %_8289 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8289
  %_raw_array8290 = call i64* @oat_alloc_array(i64 3)
  %_array8291 = bitcast i64* %_raw_array8290 to { i64, [0 x i64] }*
  %_8294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8291, i32 0, i32 1, i32 2
  store i64 12, i64* %_8294
  %_8293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8291, i32 0, i32 1, i32 1
  store i64 11, i64* %_8293
  %_8292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8291, i32 0, i32 1, i32 0
  store i64 10, i64* %_8292
  store { i64, [0 x i64] }* %_array8291, { i64, [0 x i64] }** @x
  %_8295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_8296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8295, i32 0, i32 1, i32 2
  %_8297 = load i64, i64* %_8296
  ret i64 %_8297
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
