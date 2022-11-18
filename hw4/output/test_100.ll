; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_4732 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4729 = alloca i64
  store i64 %argc, i64* %_4729
  %_4730 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4730
  %_4731 = alloca i8*
  %_4734 = alloca { i64, [0 x i64] }*
  %_4737 = alloca i64
  %_4738 = alloca i64
  %_4733 = getelementptr [6 x i8], [6 x i8]* @_4732, i32 0, i32 0
  store i8* %_4733, i8** %_4731
  %_4736 = load i8*, i8** %_4731
  %_4735 = call { i64, [0 x i64] }* @array_of_string(i8* %_4736)
  store { i64, [0 x i64] }* %_4735, { i64, [0 x i64] }** %_4734
  store i64 0, i64* %_4737
  store i64 0, i64* %_4738
  br label %_4741
_4741:
  %_4739 = load i64, i64* %_4738
  %_4740 = icmp slt i64 %_4739, 5
  br i1 %_4740, label %_4742, label %_4743
_4742:
  %_4744 = load i64, i64* %_4737
  %_4745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4734
  %_4746 = load i64, i64* %_4738
  %_4747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4745, i32 0, i32 1, i64 %_4746
  %_4748 = load i64, i64* %_4747
  %_4749 = add i64 %_4744, %_4748
  store i64 %_4749, i64* %_4737
  %_4750 = load i64, i64* %_4738
  %_4751 = add i64 %_4750, 1
  store i64 %_4751, i64* %_4738
  br label %_4741
_4743:
  %_4752 = load i64, i64* %_4737
  ret i64 %_4752
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
