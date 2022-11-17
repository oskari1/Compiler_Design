; generated from: ./dbernhard/simple_while.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4746 = alloca i64
  store i64 %argc, i64* %_4746
  %_4747 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4747
  %_4748 = alloca i64
  store i64 0, i64* %_4748
  br label %_4751
_4751:
  %_4749 = load i64, i64* %_4748
  %_4750 = icmp slt i64 %_4749, 10
  br i1 %_4750, label %_4752, label %_4753
_4752:
  %_4754 = load i64, i64* %_4748
  %_4755 = add i64 %_4754, 1
  store i64 %_4755, i64* %_4748
  br label %_4751
_4753:
  %_4756 = load i64, i64* %_4748
  ret i64 %_4756
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
