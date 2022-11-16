; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_736 = alloca i64
  store i64 %x, i64* %_736
  %_737 = alloca i64
  store i64 %y, i64* %_737
  %_738 = alloca i64
  store i64 0, i64* %_738
  %_739 = load i64, i64* %_736
  %_740 = icmp sge i64 %_739, 1
  br i1 %_740, label %_741, label %_742
_741:
  %_745 = load i64, i64* %_736
  %_746 = sub i64 %_745, 1
  %_747 = load i64, i64* %_737
  %_744 = call i64 @f(i64 %_746, i64 %_747)
  %_748 = add i64 1, %_744
  store i64 %_748, i64* %_738
  br label %_743
_742:
  %_749 = load i64, i64* %_736
  %_750 = load i64, i64* %_737
  %_751 = add i64 %_749, %_750
  store i64 %_751, i64* %_738
  br label %_743
_743:
  %_752 = load i64, i64* %_738
  ret i64 %_752
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_727 = alloca i64
  store i64 %argc, i64* %_727
  %_728 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_728
  %_729 = alloca i64
  %_730 = alloca i64
  store i64 3, i64* %_729
  store i64 3, i64* %_730
  %_732 = load i64, i64* %_729
  %_733 = load i64, i64* %_730
  %_731 = call i64 @f(i64 %_732, i64 %_733)
  %_734 = load i64, i64* @i
  %_735 = add i64 %_731, %_734
  ret i64 %_735
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
