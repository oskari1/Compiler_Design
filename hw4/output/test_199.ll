; generated from: ./thbwd/nested_return_array.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_8756 = alloca i64
  store i64 %argc, i64* %_8756
  %_8757 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_8757
  %_8758 = call { i64, [0 x i64] }* @function(i64 0)
  %_8759 = call { i64, [0 x i64] }* @function(i64 1)
  %_8760 = call { i64, [0 x i64] }* @function(i64 2)
  ret i64 0
}

define { i64, [0 x i64] }* @function(i64 %x) {
  %_8738 = alloca i64
  store i64 %x, i64* %_8738
  %_8739 = load i64, i64* %_8738
  %_8740 = icmp eq i64 %_8739, 0
  br i1 %_8740, label %_8741, label %_8742
_8741:
  ret { i64, [0 x i64] }* null
_8742:
  %_8744 = load i64, i64* %_8738
  %_8745 = icmp eq i64 %_8744, 1
  br i1 %_8745, label %_8746, label %_8747
_8746:
  %_raw_array8749 = call i64* @oat_alloc_array(i64 3)
  %_array8750 = bitcast i64* %_raw_array8749 to { i64, [0 x i64] }*
  %_8753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8750, i32 0, i32 1, i32 2
  store i64 9, i64* %_8753
  %_8752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8750, i32 0, i32 1, i32 1
  store i64 1, i64* %_8752
  %_8751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8750, i32 0, i32 1, i32 0
  store i64 4, i64* %_8751
  ret { i64, [0 x i64] }* %_array8750
_8747:
  %_raw_array8754 = call i64* @oat_alloc_array(i64 6)
  %_array8755 = bitcast i64* %_raw_array8754 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_array8755
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
