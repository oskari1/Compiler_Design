; generated from: ./dbernhard/tests_if3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4939 = alloca i64
  store i64 %argc, i64* %_4939
  %_4940 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4940
  %_4941 = call i64 @function(i64 0)
  %_4942 = call i64 @function(i64 1)
  %_4943 = add i64 %_4941, %_4942
  %_4944 = call i64 @function(i64 2)
  %_4945 = add i64 %_4943, %_4944
  ret i64 %_4945
}

define i64 @function(i64 %x) {
  %_4928 = alloca i64
  store i64 %x, i64* %_4928
  %_4929 = load i64, i64* %_4928
  %_4930 = icmp eq i64 %_4929, 0
  br i1 %_4930, label %_4931, label %_4932
_4931:
  ret i64 10
_4932:
  %_4934 = load i64, i64* %_4928
  %_4935 = icmp eq i64 %_4934, 1
  br i1 %_4935, label %_4936, label %_4937
_4936:
  ret i64 0
_4937:
  br label %_4938
_4938:
  br label %_4933
_4933:
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
