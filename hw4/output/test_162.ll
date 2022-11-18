; generated from: ./dbernhard/printing.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([3 x i8]* @_8324 to i8*)
@_8324 = global [3 x i8] c"he\00"
@_8322 = global [3 x i8] c"ll\00"
@_8320 = global [2 x i8] c"o\00"

define i8* @get() {
  %_8323 = getelementptr [3 x i8], [3 x i8]* @_8322, i32 0, i32 0
  ret i8* %_8323
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_8313 = alloca i64
  store i64 %argc, i64* %_8313
  %_8314 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_8314
  %_8316 = load i8*, i8** @str
  call void @print_string(i8* %_8316)
  %_8318 = call i8* @get()
  call void @print_string(i8* %_8318)
  %_8321 = getelementptr [2 x i8], [2 x i8]* @_8320, i32 0, i32 0
  call void @print_string(i8* %_8321)
  ret i64 42
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
