; generated from: ./dbernhard/empty.oat
target triple = "x86_64-unknown-linux"
define void @call_empty() {
  ret void
}

define void @call_empty2() {
  call void @call_empty()
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8309 = alloca i64
  store i64 %argc, i64* %_8309
  %_8310 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8310
  call void @call_empty2()
  ret i64 5
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
