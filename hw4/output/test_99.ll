; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_4728 to i8*)
@_4728 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4705 = alloca i64
  store i64 %argc, i64* %_4705
  %_4706 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4706
  %_4707 = alloca { i64, [0 x i64] }*
  %_4710 = alloca i64
  %_4711 = alloca i64
  %_4709 = load i8*, i8** @str
  %_4708 = call { i64, [0 x i64] }* @array_of_string(i8* %_4709)
  store { i64, [0 x i64] }* %_4708, { i64, [0 x i64] }** %_4707
  store i64 0, i64* %_4710
  store i64 0, i64* %_4711
  br label %_4714
_4714:
  %_4712 = load i64, i64* %_4711
  %_4713 = icmp slt i64 %_4712, 5
  br i1 %_4713, label %_4715, label %_4716
_4715:
  %_4717 = load i64, i64* %_4710
  %_4718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4707
  %_4719 = load i64, i64* %_4711
  %_4720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4718, i32 0, i32 1, i64 %_4719
  %_4721 = load i64, i64* %_4720
  %_4722 = add i64 %_4717, %_4721
  store i64 %_4722, i64* %_4710
  %_4723 = load i64, i64* %_4711
  %_4724 = add i64 %_4723, 1
  store i64 %_4724, i64* %_4711
  br label %_4714
_4716:
  %_4726 = load i64, i64* %_4710
  call void @print_int(i64 %_4726)
  %_4727 = load i64, i64* %_4710
  ret i64 %_4727
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
