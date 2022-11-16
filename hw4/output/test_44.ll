; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_713 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_710 = alloca i64
  store i64 %argc, i64* %_710
  %_711 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_711
  %_712 = alloca i8*
  %_715 = alloca { i64, [0 x i64] }*
  %_718 = alloca i64
  %_719 = alloca i64
  %_714 = getelementptr [6 x i8], [6 x i8]* @_713, i32 0, i32 0
  store i8* %_714, i8** %_712
  %_717 = load i8*, i8** %_712
  %_716 = call { i64, [0 x i64] }* @array_of_string(i8* %_717)
  store { i64, [0 x i64] }* %_716, { i64, [0 x i64] }** %_715
  store i64 0, i64* %_718
  store i64 0, i64* %_719
  br label %_722
_722:
  %_720 = load i64, i64* %_719
  %_721 = icmp slt i64 %_720, 5
  br i1 %_721, label %_723, label %_724
_723:
  %_725 = load i64, i64* %_718
  %_726 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_715
  %_727 = load i64, i64* %_719
  %_728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_726, i32 0, i32 1, i64 %_727
  %_729 = load i64, i64* %_728
  %_730 = add i64 %_725, %_729
  store i64 %_730, i64* %_718
  %_731 = load i64, i64* %_719
  %_732 = add i64 %_731, 1
  store i64 %_732, i64* %_719
  br label %_722
_724:
  %_733 = load i64, i64* %_718
  ret i64 %_733
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
