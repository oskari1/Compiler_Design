; generated from: ./dbernhard/for_cond_fun2.oat
target triple = "x86_64-unknown-linux"
@a = global i64 0
@b = global i64 0
@_5212 = global [3 x i8] c", \00"
@_5219 = global [5 x i8] c", b:\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_5201 = alloca i64
  store i64 %argc, i64* %_5201
  %_5202 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_5202
  store i64 5, i64* @b
  br label %_5205
_5205:
  %_5204 = load i64, i64* @b
  %_5203 = call i1 @con(i64 %_5204)
  br i1 %_5203, label %_5206, label %_5207
_5206:
  %_5210 = load i64, i64* @a
  %_5209 = call i8* @string_of_int(i64 %_5210)
  call void @print_string(i8* %_5209)
  %_5213 = getelementptr [3 x i8], [3 x i8]* @_5212, i32 0, i32 0
  call void @print_string(i8* %_5213)
  %_5214 = load i64, i64* @a
  %_5215 = add i64 %_5214, 1
  store i64 %_5215, i64* @a
  br label %_5205
_5207:
  %_5217 = load i64, i64* @a
  call void @print_int(i64 %_5217)
  %_5220 = getelementptr [5 x i8], [5 x i8]* @_5219, i32 0, i32 0
  call void @print_string(i8* %_5220)
  %_5222 = load i64, i64* @b
  call void @print_int(i64 %_5222)
  ret i64 0
}

define i1 @con(i64 %b) {
  %_5194 = alloca i64
  store i64 %b, i64* %_5194
  %_5195 = load i64, i64* @a
  %_5196 = add i64 %_5195, 1
  store i64 %_5196, i64* @a
  %_5197 = load i64, i64* %_5194
  %_5198 = sub i64 %_5197, 1
  store i64 %_5198, i64* %_5194
  %_5199 = load i64, i64* @a
  %_5200 = icmp slt i64 %_5199, 10
  ret i1 %_5200
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
