; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2673 = alloca i64
  store i64 %argc, i64* %_2673
  %_2674 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2674
  %_2675 = alloca i64
  %_2676 = alloca i64
  store i64 0, i64* %_2675
  store i64 0, i64* %_2676
  br label %_2679
_2679:
  %_2677 = load i64, i64* %_2676
  %_2678 = icmp slt i64 %_2677, 3
  br i1 %_2678, label %_2680, label %_2681
_2680:
  %_2682 = load i64, i64* %_2675
  %_2683 = add i64 %_2682, 2
  store i64 %_2683, i64* %_2675
  %_2684 = load i64, i64* %_2676
  %_2685 = add i64 %_2684, 1
  store i64 %_2685, i64* %_2676
  br label %_2679
_2681:
  %_2686 = load i64, i64* %_2675
  ret i64 %_2686
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
