; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_1919 = alloca i64
  store i64 %i, i64* %_1919
  %_1920 = alloca i64
  store i64 0, i64* %_1920
  %_1921 = load i64, i64* %_1919
  %_1922 = icmp eq i64 %_1921, 0
  br i1 %_1922, label %_1923, label %_1924
_1923:
  store i64 1, i64* %_1920
  br label %_1925
_1924:
  %_1926 = load i64, i64* %_1919
  %_1928 = load i64, i64* %_1919
  %_1929 = sub i64 %_1928, 1
  %_1927 = call i64 @f(i64 %_1929)
  %_1930 = mul i64 %_1926, %_1927
  store i64 %_1930, i64* %_1920
  br label %_1925
_1925:
  %_1931 = load i64, i64* %_1920
  ret i64 %_1931
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1916 = alloca i64
  store i64 %argc, i64* %_1916
  %_1917 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1917
  %_1918 = call i64 @f(i64 5)
  ret i64 %_1918
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
