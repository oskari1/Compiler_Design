; generated from: ./nicdard/and1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5808 = alloca i64
  store i64 %argc, i64* %_5808
  %_5809 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5809
  %_5810 = alloca i64
  %_5811 = alloca i1
  %_5812 = alloca i1
  store i64 10, i64* %_5810
  store i1 1, i1* %_5811
  store i1 0, i1* %_5812
  %_5813 = load i1, i1* %_5811
  br i1 %_5813, label %_5814, label %_5815
_5814:
  %_5817 = load i64, i64* %_5810
  %_5818 = add i64 %_5817, 1
  store i64 %_5818, i64* %_5810
  br label %_5816
_5815:
  br label %_5816
_5816:
  %_5819 = load i1, i1* %_5812
  br i1 %_5819, label %_5820, label %_5821
_5820:
  %_5823 = load i64, i64* %_5810
  %_5824 = add i64 %_5823, 2
  store i64 %_5824, i64* %_5810
  br label %_5822
_5821:
  br label %_5822
_5822:
  %_5825 = load i1, i1* %_5811
  %_5826 = load i1, i1* %_5812
  %_5827 = and i1 %_5825, %_5826
  br i1 %_5827, label %_5828, label %_5829
_5828:
  %_5831 = load i64, i64* %_5810
  %_5832 = add i64 %_5831, 15
  store i64 %_5832, i64* %_5810
  br label %_5830
_5829:
  br label %_5830
_5830:
  %_5833 = load i64, i64* %_5810
  ret i64 %_5833
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
