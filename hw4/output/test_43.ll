; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_871 = alloca i64
  store i64 %n, i64* %_871
  %_872 = load i64, i64* %_871
  %_873 = icmp eq i64 %_872, 0
  br i1 %_873, label %_874, label %_875
_874:
  ret i64 0
_875:
  br label %_876
_876:
  %_877 = load i64, i64* %_871
  %_878 = icmp eq i64 %_877, 1
  br i1 %_878, label %_879, label %_880
_879:
  ret i64 1
_880:
  br label %_881
_881:
  %_883 = load i64, i64* %_871
  %_884 = sub i64 %_883, 1
  %_882 = call i64 @fibR(i64 %_884)
  %_886 = load i64, i64* %_871
  %_887 = sub i64 %_886, 2
  %_885 = call i64 @fibR(i64 %_887)
  %_888 = add i64 %_882, %_885
  ret i64 %_888
}

define i64 @fibI(i64 %n) {
  %_839 = alloca i64
  store i64 %n, i64* %_839
  %_840 = alloca i64
  %_841 = alloca i64
  %_860 = alloca i64
  store i64 0, i64* %_840
  store i64 1, i64* %_841
  %_842 = load i64, i64* %_839
  %_843 = icmp eq i64 %_842, 0
  br i1 %_843, label %_844, label %_845
_844:
  %_847 = load i64, i64* %_840
  ret i64 %_847
_845:
  br label %_846
_846:
  %_848 = load i64, i64* %_839
  %_849 = icmp eq i64 %_848, 1
  br i1 %_849, label %_850, label %_851
_850:
  %_853 = load i64, i64* %_841
  ret i64 %_853
_851:
  br label %_852
_852:
  br label %_857
_857:
  %_854 = load i64, i64* %_839
  %_855 = sub i64 %_854, 2
  %_856 = icmp sgt i64 %_855, 0
  br i1 %_856, label %_858, label %_859
_858:
  %_861 = load i64, i64* %_841
  store i64 %_861, i64* %_860
  %_862 = load i64, i64* %_841
  %_863 = load i64, i64* %_840
  %_864 = add i64 %_862, %_863
  store i64 %_864, i64* %_841
  %_865 = load i64, i64* %_860
  store i64 %_865, i64* %_840
  %_866 = load i64, i64* %_839
  %_867 = sub i64 %_866, 1
  store i64 %_867, i64* %_839
  br label %_857
_859:
  %_868 = load i64, i64* %_840
  %_869 = load i64, i64* %_841
  %_870 = add i64 %_868, %_869
  ret i64 %_870
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_827 = alloca i64
  store i64 %argc, i64* %_827
  %_828 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_828
  %_829 = alloca i64
  store i64 1, i64* %_829
  %_830 = call i64 @fibR(i64 12)
  %_831 = icmp eq i64 %_830, 144
  %_832 = call i64 @fibI(i64 12)
  %_833 = icmp eq i64 %_832, 144
  %_834 = and i1 %_831, %_833
  br i1 %_834, label %_835, label %_836
_835:
  store i64 0, i64* %_829
  br label %_837
_836:
  br label %_837
_837:
  %_838 = load i64, i64* %_829
  ret i64 %_838
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
