; generated from: ./nicdard/or1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5864 = alloca i64
  store i64 %argc, i64* %_5864
  %_5865 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5865
  %_5866 = alloca i64
  %_5867 = alloca i1
  %_5868 = alloca i1
  store i64 10, i64* %_5866
  store i1 1, i1* %_5867
  store i1 0, i1* %_5868
  %_5869 = load i1, i1* %_5867
  br i1 %_5869, label %_5870, label %_5871
_5870:
  %_5873 = load i64, i64* %_5866
  %_5874 = add i64 %_5873, 1
  store i64 %_5874, i64* %_5866
  br label %_5872
_5871:
  br label %_5872
_5872:
  %_5875 = load i1, i1* %_5868
  br i1 %_5875, label %_5876, label %_5877
_5876:
  %_5879 = load i64, i64* %_5866
  %_5880 = add i64 %_5879, 2
  store i64 %_5880, i64* %_5866
  br label %_5878
_5877:
  br label %_5878
_5878:
  %_5881 = load i1, i1* %_5867
  %_5882 = load i1, i1* %_5868
  %_5883 = or i1 %_5881, %_5882
  br i1 %_5883, label %_5884, label %_5885
_5884:
  %_5887 = load i64, i64* %_5866
  %_5888 = add i64 %_5887, 15
  store i64 %_5888, i64* %_5866
  br label %_5886
_5885:
  br label %_5886
_5886:
  %_5889 = load i64, i64* %_5866
  ret i64 %_5889
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
