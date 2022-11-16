; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_747 = alloca i64
  store i64 %argc, i64* %_747
  %_748 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_748
  %_749 = alloca i64
  store i64 1, i64* %_749
  br label %_753
_753:
  %_750 = load i64, i64* %_749
  %_751 = load i64, i64* %_747
  %_752 = icmp slt i64 %_750, %_751
  br i1 %_752, label %_754, label %_755
_754:
  %_757 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_748
  %_758 = load i64, i64* %_749
  %_759 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_757, i32 0, i32 1, i64 %_758
  %_760 = load i8*, i8** %_759
  call void @print_string(i8* %_760)
  %_761 = load i64, i64* %_749
  %_762 = add i64 %_761, 1
  store i64 %_762, i64* %_749
  br label %_753
_755:
  %_763 = load i64, i64* %_747
  ret i64 %_763
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
