; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_620 = alloca i64
  store i64 %i, i64* %_620
  %_621 = alloca i64
  store i64 0, i64* %_621
  %_622 = load i64, i64* %_620
  %_623 = icmp eq i64 %_622, 0
  br i1 %_623, label %_624, label %_625
_624:
  store i64 1, i64* %_621
  br label %_626
_625:
  %_627 = load i64, i64* %_620
  %_629 = load i64, i64* %_620
  %_630 = sub i64 %_629, 1
  %_628 = call i64 @f(i64 %_630)
  %_631 = mul i64 %_627, %_628
  store i64 %_631, i64* %_621
  br label %_626
_626:
  %_632 = load i64, i64* %_621
  ret i64 %_632
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_617 = alloca i64
  store i64 %argc, i64* %_617
  %_618 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_618
  %_619 = call i64 @f(i64 5)
  ret i64 %_619
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
