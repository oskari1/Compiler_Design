; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_767 = alloca i64
  store i64 %argc, i64* %_767
  %_768 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_768
  %_raw_array769 = call i64* @oat_alloc_array(i64 2)
  %_array770 = bitcast i64* %_raw_array769 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array773 = call i64* @oat_alloc_array(i64 2)
  %_array774 = bitcast i64* %_raw_array773 to { i64, [0 x i64] }*
  %_raw_array771 = call i64* @oat_alloc_array(i64 2)
  %_array772 = bitcast i64* %_raw_array771 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array770, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_775 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_776 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_775, i32 0, i32 1, i32 1
  %_777 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_776
  %_778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_777, i32 0, i32 1, i32 1
  %_779 = load i64, i64* %_778
  ret i64 %_779
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
