; generated from: ./thbwd/nested_return_bool.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_8773 = alloca i64
  store i64 %argc, i64* %_8773
  %_8774 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_8774
  %_8775 = call i1 @function(i64 0)
  %_8776 = call i1 @function(i64 1)
  %_8777 = call i1 @function(i64 2)
  ret i64 0
}

define i1 @function(i64 %x) {
  %_8761 = alloca i64
  store i64 %x, i64* %_8761
  %_8762 = load i64, i64* %_8761
  %_8763 = icmp eq i64 %_8762, 0
  br i1 %_8763, label %_8764, label %_8765
_8764:
  ret i1 1
_8765:
  %_8767 = load i64, i64* %_8761
  %_8768 = icmp eq i64 %_8767, 1
  br i1 %_8768, label %_8769, label %_8770
_8769:
  ret i1 0
_8770:
  %_8772 = icmp eq i1 0, 0
  ret i1 %_8772
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
