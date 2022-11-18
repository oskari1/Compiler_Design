; generated from: oatprograms/xor_bool.oat
target triple = "x86_64-unknown-linux"
define i1 @xor(i1 %x, i1 %y) {
  %_2640 = alloca i1
  store i1 %x, i1* %_2640
  %_2641 = alloca i1
  store i1 %y, i1* %_2641
  %_2642 = load i1, i1* %_2640
  %_2643 = load i1, i1* %_2641
  %_2644 = icmp eq i1 %_2643, 0
  %_2645 = and i1 %_2642, %_2644
  %_2646 = load i1, i1* %_2640
  %_2647 = icmp eq i1 %_2646, 0
  %_2648 = load i1, i1* %_2641
  %_2649 = and i1 %_2647, %_2648
  %_2650 = or i1 %_2645, %_2649
  ret i1 %_2650
}

define i64 @to_int(i1 %b) {
  %_2635 = alloca i1
  store i1 %b, i1* %_2635
  %_2636 = load i1, i1* %_2635
  br i1 %_2636, label %_2637, label %_2638
_2637:
  ret i64 1
_2638:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2627 = alloca i64
  store i64 %argc, i64* %_2627
  %_2628 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2628
  %_2629 = alloca i1
  %_2630 = alloca i1
  store i1 1, i1* %_2629
  store i1 0, i1* %_2630
  %_2633 = load i1, i1* %_2629
  %_2634 = load i1, i1* %_2629
  %_2632 = call i1 @xor(i1 %_2633, i1 %_2634)
  %_2631 = call i64 @to_int(i1 %_2632)
  ret i64 %_2631
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
