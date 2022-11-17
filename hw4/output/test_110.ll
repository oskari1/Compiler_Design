; generated from: ./dbernhard/while_false2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4791 = alloca i64
  store i64 %argc, i64* %_4791
  %_4792 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4792
  %_4793 = call { i64, [0 x i64] }* @function(i64 0)
  %_4794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4793, i32 0, i32 1, i32 0
  %_4795 = load i64, i64* %_4794
  %_4796 = call { i64, [0 x i64] }* @function(i64 1)
  %_4797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4796, i32 0, i32 1, i32 0
  %_4798 = load i64, i64* %_4797
  %_4799 = add i64 %_4795, %_4798
  %_4800 = call { i64, [0 x i64] }* @function(i64 2)
  %_4801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4800, i32 0, i32 1, i32 0
  %_4802 = load i64, i64* %_4801
  %_4803 = add i64 %_4799, %_4802
  %_4804 = call { i64, [0 x i64] }* @function(i64 3)
  %_4805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4804, i32 0, i32 1, i32 0
  %_4806 = load i64, i64* %_4805
  %_4807 = add i64 %_4803, %_4806
  ret i64 %_4807
}

define { i64, [0 x i64] }* @function(i64 %x) {
  %_4784 = alloca i64
  store i64 %x, i64* %_4784
  br label %_4785
_4785:
  br i1 0, label %_4786, label %_4787
_4786:
  br label %_4785
_4787:
  %_raw_array4788 = call i64* @oat_alloc_array(i64 1)
  %_array4789 = bitcast i64* %_raw_array4788 to { i64, [0 x i64] }*
  %_4790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4789, i32 0, i32 1, i32 0
  store i64 1, i64* %_4790
  ret { i64, [0 x i64] }* %_array4789
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
