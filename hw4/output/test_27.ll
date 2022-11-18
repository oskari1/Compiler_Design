; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2687 = alloca i64
  store i64 %argc, i64* %_2687
  %_2688 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2688
  %_2689 = alloca i64
  %_2691 = alloca i64
  %_2690 = lshr i64 100, 3
  store i64 %_2690, i64* %_2689
  %_2692 = shl i64 100, 3
  store i64 %_2692, i64* %_2691
  %_2693 = load i64, i64* %_2689
  %_2694 = load i64, i64* %_2691
  %_2695 = sub i64 %_2693, %_2694
  %_2696 = icmp sle i64 %_2695, 0
  br i1 %_2696, label %_2697, label %_2698
_2697:
  %_2700 = load i64, i64* %_2689
  %_2701 = sub i64 0, %_2700
  %_2702 = load i64, i64* %_2691
  %_2703 = sub i64 %_2701, %_2702
  ret i64 %_2703
_2698:
  %_2704 = load i64, i64* %_2689
  %_2705 = load i64, i64* %_2691
  %_2706 = sub i64 %_2704, %_2705
  ret i64 %_2706
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
