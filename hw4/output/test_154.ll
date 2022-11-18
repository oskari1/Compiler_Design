; generated from: ./dbernhard/for_cond_fun2.oat
target triple = "x86_64-unknown-linux"
@a = global i64 0
@b = global i64 0
@_7862 = global [3 x i8] c", \00"
@_7869 = global [5 x i8] c", b:\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7851 = alloca i64
  store i64 %argc, i64* %_7851
  %_7852 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7852
  store i64 5, i64* @b
  br label %_7855
_7855:
  %_7854 = load i64, i64* @b
  %_7853 = call i1 @con(i64 %_7854)
  br i1 %_7853, label %_7856, label %_7857
_7856:
  %_7860 = load i64, i64* @a
  %_7859 = call i8* @string_of_int(i64 %_7860)
  call void @print_string(i8* %_7859)
  %_7863 = getelementptr [3 x i8], [3 x i8]* @_7862, i32 0, i32 0
  call void @print_string(i8* %_7863)
  %_7864 = load i64, i64* @a
  %_7865 = add i64 %_7864, 1
  store i64 %_7865, i64* @a
  br label %_7855
_7857:
  %_7867 = load i64, i64* @a
  call void @print_int(i64 %_7867)
  %_7870 = getelementptr [5 x i8], [5 x i8]* @_7869, i32 0, i32 0
  call void @print_string(i8* %_7870)
  %_7872 = load i64, i64* @b
  call void @print_int(i64 %_7872)
  ret i64 0
}

define i1 @con(i64 %b) {
  %_7844 = alloca i64
  store i64 %b, i64* %_7844
  %_7845 = load i64, i64* @a
  %_7846 = add i64 %_7845, 1
  store i64 %_7846, i64* @a
  %_7847 = load i64, i64* %_7844
  %_7848 = sub i64 %_7847, 1
  store i64 %_7848, i64* %_7844
  %_7849 = load i64, i64* @a
  %_7850 = icmp slt i64 %_7849, 10
  ret i1 %_7850
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
