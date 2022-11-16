; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_614 = alloca i64
  store i64 %x1, i64* %_614
  %_615 = alloca i64
  store i64 %x2, i64* %_615
  %_616 = alloca i64
  store i64 %x3, i64* %_616
  %_617 = alloca i64
  store i64 %x4, i64* %_617
  %_618 = alloca i64
  store i64 %x5, i64* %_618
  %_619 = alloca i64
  store i64 %x6, i64* %_619
  %_620 = alloca i64
  store i64 %x7, i64* %_620
  %_621 = alloca i64
  store i64 %x8, i64* %_621
  %_622 = load i64, i64* %_614
  %_623 = load i64, i64* %_615
  %_624 = add i64 %_622, %_623
  %_625 = load i64, i64* %_616
  %_626 = add i64 %_624, %_625
  %_627 = load i64, i64* %_617
  %_628 = add i64 %_626, %_627
  %_629 = load i64, i64* %_618
  %_630 = add i64 %_628, %_629
  %_631 = load i64, i64* %_619
  %_632 = add i64 %_630, %_631
  %_633 = load i64, i64* %_620
  %_634 = add i64 %_632, %_633
  %_635 = load i64, i64* %_621
  %_636 = add i64 %_634, %_635
  ret i64 %_636
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_608 = alloca i64
  store i64 %argc, i64* %_608
  %_609 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_609
  %_611 = sub i64 0, 5
  %_612 = sub i64 0, 4
  %_613 = sub i64 0, 3
  %_610 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_611, i64 %_612, i64 %_613)
  ret i64 %_610
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
