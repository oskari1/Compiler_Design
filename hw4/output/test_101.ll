; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4753 = alloca i64
  store i64 %argc, i64* %_4753
  %_4754 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4754
  %_4755 = alloca { i64, [0 x i64] }*
  %_4763 = alloca i8*
  %_4766 = alloca { i64, [0 x i64] }*
  %_4769 = alloca i64
  %_4770 = alloca i64
  %_raw_array4756 = call i64* @oat_alloc_array(i64 5)
  %_array4757 = bitcast i64* %_raw_array4756 to { i64, [0 x i64] }*
  %_4762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4757, i32 0, i32 1, i32 4
  store i64 115, i64* %_4762
  %_4761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4757, i32 0, i32 1, i32 3
  store i64 114, i64* %_4761
  %_4760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4757, i32 0, i32 1, i32 2
  store i64 113, i64* %_4760
  %_4759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4757, i32 0, i32 1, i32 1
  store i64 112, i64* %_4759
  %_4758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4757, i32 0, i32 1, i32 0
  store i64 111, i64* %_4758
  store { i64, [0 x i64] }* %_array4757, { i64, [0 x i64] }** %_4755
  %_4765 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4755
  %_4764 = call i8* @string_of_array({ i64, [0 x i64] }* %_4765)
  store i8* %_4764, i8** %_4763
  %_4768 = load i8*, i8** %_4763
  %_4767 = call { i64, [0 x i64] }* @array_of_string(i8* %_4768)
  store { i64, [0 x i64] }* %_4767, { i64, [0 x i64] }** %_4766
  store i64 0, i64* %_4769
  store i64 0, i64* %_4770
  br label %_4773
_4773:
  %_4771 = load i64, i64* %_4770
  %_4772 = icmp slt i64 %_4771, 5
  br i1 %_4772, label %_4774, label %_4775
_4774:
  %_4776 = load i64, i64* %_4769
  %_4777 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4766
  %_4778 = load i64, i64* %_4770
  %_4779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4777, i32 0, i32 1, i64 %_4778
  %_4780 = load i64, i64* %_4779
  %_4781 = add i64 %_4776, %_4780
  store i64 %_4781, i64* %_4769
  %_4782 = load i64, i64* %_4770
  %_4783 = add i64 %_4782, 1
  store i64 %_4783, i64* %_4770
  br label %_4773
_4775:
  %_4785 = load i64, i64* %_4769
  call void @print_int(i64 %_4785)
  %_4786 = load i64, i64* %_4769
  ret i64 %_4786
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
