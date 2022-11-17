; generated from: ./dbernhard/while_false.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4775 = alloca i64
  store i64 %argc, i64* %_4775
  %_4776 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4776
  %_4777 = call i64 @function(i64 0)
  %_4778 = call i64 @function(i64 1)
  %_4779 = add i64 %_4777, %_4778
  %_4780 = call i64 @function(i64 2)
  %_4781 = add i64 %_4779, %_4780
  %_4782 = call i64 @function(i64 3)
  %_4783 = add i64 %_4781, %_4782
  ret i64 %_4783
}

define i64 @function(i64 %x) {
  %_4771 = alloca i64
  store i64 %x, i64* %_4771
  br label %_4772
_4772:
  br i1 0, label %_4773, label %_4774
_4773:
  br label %_4772
_4774:
  ret i64 1
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
