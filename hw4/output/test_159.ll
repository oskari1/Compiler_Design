; generated from: ./nicdard/or2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5890 = alloca i64
  store i64 %argc, i64* %_5890
  %_5891 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5891
  %_5892 = alloca i64
  %_5893 = alloca i1
  %_5896 = alloca i1
  store i64 10, i64* %_5892
  %_5894 = load i64, i64* %_5892
  %_5895 = icmp eq i64 %_5894, 10
  store i1 %_5895, i1* %_5893
  %_5897 = load i64, i64* %_5892
  %_5898 = icmp ne i64 %_5897, 10
  store i1 %_5898, i1* %_5896
  %_5899 = load i1, i1* %_5893
  br i1 %_5899, label %_5900, label %_5901
_5900:
  %_5903 = load i64, i64* %_5892
  %_5904 = add i64 %_5903, 1
  store i64 %_5904, i64* %_5892
  br label %_5902
_5901:
  br label %_5902
_5902:
  %_5905 = load i1, i1* %_5896
  br i1 %_5905, label %_5906, label %_5907
_5906:
  %_5909 = load i64, i64* %_5892
  %_5910 = add i64 %_5909, 2
  store i64 %_5910, i64* %_5892
  br label %_5908
_5907:
  br label %_5908
_5908:
  %_5911 = load i1, i1* %_5893
  %_5912 = load i1, i1* %_5896
  %_5913 = or i1 %_5911, %_5912
  br i1 %_5913, label %_5914, label %_5915
_5914:
  %_5917 = load i64, i64* %_5892
  %_5918 = add i64 %_5917, 15
  store i64 %_5918, i64* %_5892
  br label %_5916
_5915:
  br label %_5916
_5916:
  %_5919 = load i64, i64* %_5892
  ret i64 %_5919
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
