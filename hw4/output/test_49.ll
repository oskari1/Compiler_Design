; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_841 = alloca i64
  store i64 %i, i64* %_841
  %_842 = alloca i64
  store i64 0, i64* %_842
  %_843 = load i64, i64* %_841
  %_844 = icmp eq i64 %_843, 0
  br i1 %_844, label %_845, label %_846
_845:
  store i64 1, i64* %_842
  br label %_847
_846:
  %_848 = load i64, i64* %_841
  %_850 = load i64, i64* %_841
  %_851 = sub i64 %_850, 1
  %_849 = call i64 @f(i64 %_851)
  %_852 = mul i64 %_848, %_849
  store i64 %_852, i64* %_842
  br label %_847
_847:
  %_853 = load i64, i64* %_842
  ret i64 %_853
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_838 = alloca i64
  store i64 %argc, i64* %_838
  %_839 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_839
  %_840 = call i64 @f(i64 5)
  ret i64 %_840
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
