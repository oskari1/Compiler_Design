; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_815 = alloca i64
  store i64 %x, i64* %_815
  %_816 = alloca i64
  store i64 %y, i64* %_816
  %_817 = alloca i64
  store i64 0, i64* %_817
  %_818 = load i64, i64* %_815
  %_819 = icmp sge i64 %_818, 1
  br i1 %_819, label %_820, label %_821
_820:
  %_824 = load i64, i64* %_815
  %_825 = sub i64 %_824, 1
  %_826 = load i64, i64* %_816
  %_823 = call i64 @f(i64 %_825, i64 %_826)
  %_827 = add i64 1, %_823
  store i64 %_827, i64* %_817
  br label %_822
_821:
  %_828 = load i64, i64* %_815
  %_829 = load i64, i64* %_816
  %_830 = add i64 %_828, %_829
  store i64 %_830, i64* %_817
  br label %_822
_822:
  %_831 = load i64, i64* %_817
  ret i64 %_831
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_806 = alloca i64
  store i64 %argc, i64* %_806
  %_807 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_807
  %_808 = alloca i64
  %_809 = alloca i64
  store i64 3, i64* %_808
  store i64 3, i64* %_809
  %_811 = load i64, i64* %_808
  %_812 = load i64, i64* %_809
  %_810 = call i64 @f(i64 %_811, i64 %_812)
  %_813 = load i64, i64* @i
  %_814 = add i64 %_810, %_813
  ret i64 %_814
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
