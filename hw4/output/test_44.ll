; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_899 = alloca i64
  store i64 %x, i64* %_899
  %_900 = alloca i64
  store i64 %y, i64* %_900
  %_901 = load i64, i64* %_899
  %_902 = load i64, i64* %_900
  %_903 = icmp eq i64 %_901, %_902
  br i1 %_903, label %_904, label %_905
_904:
  %_907 = load i64, i64* %_899
  ret i64 %_907
_905:
  br label %_906
_906:
  %_908 = load i64, i64* %_899
  %_909 = icmp eq i64 %_908, 0
  br i1 %_909, label %_910, label %_911
_910:
  %_913 = load i64, i64* %_900
  ret i64 %_913
_911:
  br label %_912
_912:
  %_914 = load i64, i64* %_900
  %_915 = icmp eq i64 %_914, 0
  br i1 %_915, label %_916, label %_917
_916:
  %_919 = load i64, i64* %_899
  ret i64 %_919
_917:
  br label %_918
_918:
  %_920 = load i64, i64* %_899
  %_921 = xor i64 9223372036854775807, %_920
  %_922 = and i64 %_921, 1
  %_923 = icmp eq i64 %_922, 1
  br i1 %_923, label %_924, label %_925
_924:
  %_927 = load i64, i64* %_900
  %_928 = and i64 %_927, 1
  %_929 = icmp eq i64 %_928, 1
  br i1 %_929, label %_930, label %_931
_930:
  %_934 = load i64, i64* %_899
  %_935 = lshr i64 %_934, 1
  %_936 = load i64, i64* %_900
  %_933 = call i64 @binary_gcd(i64 %_935, i64 %_936)
  ret i64 %_933
_931:
  %_938 = load i64, i64* %_899
  %_939 = lshr i64 %_938, 1
  %_940 = load i64, i64* %_900
  %_941 = lshr i64 %_940, 1
  %_937 = call i64 @binary_gcd(i64 %_939, i64 %_941)
  %_942 = shl i64 %_937, 1
  ret i64 %_942
_932:
  br label %_926
_925:
  br label %_926
_926:
  %_943 = load i64, i64* %_900
  %_944 = xor i64 9223372036854775807, %_943
  %_945 = and i64 %_944, 1
  %_946 = icmp eq i64 %_945, 1
  br i1 %_946, label %_947, label %_948
_947:
  %_951 = load i64, i64* %_899
  %_952 = load i64, i64* %_900
  %_953 = lshr i64 %_952, 1
  %_950 = call i64 @binary_gcd(i64 %_951, i64 %_953)
  ret i64 %_950
_948:
  br label %_949
_949:
  %_954 = load i64, i64* %_899
  %_955 = load i64, i64* %_900
  %_956 = icmp sgt i64 %_954, %_955
  br i1 %_956, label %_957, label %_958
_957:
  %_961 = load i64, i64* %_899
  %_962 = load i64, i64* %_900
  %_963 = sub i64 %_961, %_962
  %_964 = lshr i64 %_963, 1
  %_965 = load i64, i64* %_900
  %_960 = call i64 @binary_gcd(i64 %_964, i64 %_965)
  ret i64 %_960
_958:
  br label %_959
_959:
  %_967 = load i64, i64* %_900
  %_968 = load i64, i64* %_899
  %_969 = sub i64 %_967, %_968
  %_970 = lshr i64 %_969, 1
  %_971 = load i64, i64* %_899
  %_966 = call i64 @binary_gcd(i64 %_970, i64 %_971)
  ret i64 %_966
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_892 = alloca i64
  store i64 %argc, i64* %_892
  %_893 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_893
  %_894 = alloca i64
  %_895 = alloca i64
  store i64 21, i64* %_894
  store i64 15, i64* %_895
  %_897 = load i64, i64* %_894
  %_898 = load i64, i64* %_895
  %_896 = call i64 @binary_gcd(i64 %_897, i64 %_898)
  ret i64 %_896
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
