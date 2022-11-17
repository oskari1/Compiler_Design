; generated from: ./dbernhard/tests_if4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4957 = alloca i64
  store i64 %argc, i64* %_4957
  %_4958 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4958
  %_4959 = call i64 @function(i64 0)
  %_4960 = call i64 @function(i64 1)
  %_4961 = add i64 %_4959, %_4960
  %_4962 = call i64 @function(i64 2)
  %_4963 = add i64 %_4961, %_4962
  ret i64 %_4963
}

define i64 @function(i64 %x) {
  %_4946 = alloca i64
  store i64 %x, i64* %_4946
  %_4947 = load i64, i64* %_4946
  %_4948 = icmp eq i64 %_4947, 0
  br i1 %_4948, label %_4949, label %_4950
_4949:
  ret i64 10
_4950:
  %_4952 = load i64, i64* %_4946
  %_4953 = icmp eq i64 %_4952, 1
  br i1 %_4953, label %_4954, label %_4955
_4954:
  ret i64 0
_4955:
  ret i64 50
_4956:
  br label %_4951
_4951:
  ret i64 100
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
