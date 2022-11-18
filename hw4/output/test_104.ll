; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4826 = alloca i64
  store i64 %argc, i64* %_4826
  %_4827 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4827
  %_4828 = alloca i64
  store i64 1, i64* %_4828
  br label %_4832
_4832:
  %_4829 = load i64, i64* %_4828
  %_4830 = load i64, i64* %_4826
  %_4831 = icmp slt i64 %_4829, %_4830
  br i1 %_4831, label %_4833, label %_4834
_4833:
  %_4836 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_4827
  %_4837 = load i64, i64* %_4828
  %_4838 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_4836, i32 0, i32 1, i64 %_4837
  %_4839 = load i8*, i8** %_4838
  call void @print_string(i8* %_4839)
  %_4840 = load i64, i64* %_4828
  %_4841 = add i64 %_4840, 1
  store i64 %_4841, i64* %_4828
  br label %_4832
_4834:
  %_4842 = load i64, i64* %_4826
  ret i64 %_4842
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
