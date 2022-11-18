; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2656 = alloca i64
  store i64 %argc, i64* %_2656
  %_2657 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2657
  %_2658 = alloca i64
  %_2659 = alloca i64
  store i64 0, i64* %_2658
  store i64 0, i64* %_2659
  br label %_2662
_2662:
  %_2660 = load i64, i64* %_2659
  %_2661 = icmp slt i64 %_2660, 10
  br i1 %_2661, label %_2663, label %_2664
_2663:
  %_2665 = load i64, i64* %_2658
  %_2666 = load i64, i64* %_2659
  %_2667 = add i64 %_2665, %_2666
  %_2668 = load i64, i64* %_2659
  %_2669 = mul i64 %_2667, %_2668
  store i64 %_2669, i64* %_2658
  %_2670 = load i64, i64* %_2659
  %_2671 = add i64 %_2670, 1
  store i64 %_2671, i64* %_2659
  br label %_2662
_2664:
  %_2672 = load i64, i64* %_2658
  ret i64 %_2672
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
