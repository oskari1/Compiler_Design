; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_4935 = alloca i64
  store i64 %i, i64* %_4935
  %_4936 = alloca i64
  store i64 0, i64* %_4936
  %_4937 = load i64, i64* %_4935
  %_4938 = icmp eq i64 %_4937, 0
  br i1 %_4938, label %_4939, label %_4940
_4939:
  store i64 1, i64* %_4936
  br label %_4941
_4940:
  %_4942 = load i64, i64* %_4935
  %_4944 = load i64, i64* %_4935
  %_4945 = sub i64 %_4944, 1
  %_4943 = call i64 @f(i64 %_4945)
  %_4946 = mul i64 %_4942, %_4943
  store i64 %_4946, i64* %_4936
  br label %_4941
_4941:
  %_4947 = load i64, i64* %_4936
  ret i64 %_4947
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4932 = alloca i64
  store i64 %argc, i64* %_4932
  %_4933 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4933
  %_4934 = call i64 @f(i64 5)
  ret i64 %_4934
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
