; generated from: ./dbernhard/str_cat.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([3 x i8]* @_4874 to i8*)
@_4874 = global [3 x i8] c"he\00"
@_4872 = global [3 x i8] c"ll\00"
@_4870 = global [2 x i8] c"o\00"

define i8* @get() {
  %_4873 = getelementptr [3 x i8], [3 x i8]* @_4872, i32 0, i32 0
  ret i8* %_4873
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4863 = alloca i64
  store i64 %argc, i64* %_4863
  %_4864 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4864
  %_4868 = load i8*, i8** @str
  %_4869 = call i8* @get()
  %_4867 = call i8* @string_cat(i8* %_4868, i8* %_4869)
  %_4871 = getelementptr [2 x i8], [2 x i8]* @_4870, i32 0, i32 0
  %_4866 = call i8* @string_cat(i8* %_4867, i8* %_4871)
  call void @print_string(i8* %_4866)
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
