; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_768 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_764 = alloca i64
  store i64 %argc, i64* %_764
  %_765 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_765
  %_766 = alloca { i64, [0 x i64] }*
  %_770 = alloca i64
  %_771 = alloca i64
  %_783 = alloca i64
  %_769 = getelementptr [11 x i8], [11 x i8]* @_768, i32 0, i32 0
  %_767 = call { i64, [0 x i64] }* @array_of_string(i8* %_769)
  store { i64, [0 x i64] }* %_767, { i64, [0 x i64] }** %_766
  store i64 0, i64* %_770
  store i64 0, i64* %_771
  br label %_774
_774:
  %_772 = load i64, i64* %_771
  %_773 = icmp slt i64 %_772, 10
  br i1 %_773, label %_775, label %_776
_775:
  %_777 = load i64, i64* %_771
  %_779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_766
  %_780 = load i64, i64* %_771
  %_778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_779, i32 0, i32 1, i64 %_780
  store i64 %_777, i64* %_778
  %_781 = load i64, i64* %_771
  %_782 = add i64 %_781, 1
  store i64 %_782, i64* %_771
  br label %_774
_776:
  store i64 0, i64* %_783
  br label %_786
_786:
  %_784 = load i64, i64* %_783
  %_785 = icmp slt i64 %_784, 10
  br i1 %_785, label %_787, label %_788
_787:
  %_789 = load i64, i64* %_770
  %_790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_766
  %_791 = load i64, i64* %_783
  %_792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_790, i32 0, i32 1, i64 %_791
  %_793 = load i64, i64* %_792
  %_794 = add i64 %_789, %_793
  store i64 %_794, i64* %_770
  %_795 = load i64, i64* %_783
  %_796 = add i64 %_795, 1
  store i64 %_796, i64* %_783
  br label %_786
_788:
  %_797 = load i64, i64* %_770
  ret i64 %_797
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
