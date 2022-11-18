; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_6799 to { i64, [0 x i64] }*)
@_6799 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_6798 to { i64, [0 x i64] }*)
@_6798 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_6772 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_6772
  %_6773 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_6773
  %_6774 = alloca i64
  store i64 %len, i64* %_6774
  %_6775 = alloca i64
  %_6776 = alloca i64
  store i64 0, i64* %_6775
  store i64 0, i64* %_6776
  br label %_6780
_6780:
  %_6777 = load i64, i64* %_6776
  %_6778 = load i64, i64* %_6774
  %_6779 = icmp slt i64 %_6777, %_6778
  br i1 %_6779, label %_6781, label %_6782
_6781:
  %_6783 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6772
  %_6784 = load i64, i64* %_6776
  %_6785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6783, i32 0, i32 1, i64 %_6784
  %_6786 = load i64, i64* %_6785
  %_6787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6773
  %_6788 = load i64, i64* %_6776
  %_6789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6787, i32 0, i32 1, i64 %_6788
  %_6790 = load i64, i64* %_6789
  %_6791 = icmp ne i64 %_6786, %_6790
  br i1 %_6791, label %_6792, label %_6793
_6792:
  store i64 1, i64* %_6775
  br label %_6794
_6793:
  br label %_6794
_6794:
  %_6795 = load i64, i64* %_6776
  %_6796 = add i64 %_6795, 1
  store i64 %_6796, i64* %_6776
  br label %_6780
_6782:
  %_6797 = load i64, i64* %_6775
  ret i64 %_6797
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6761 = alloca i64
  store i64 %argc, i64* %_6761
  %_6762 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6762
  %_6763 = alloca i64
  store i64 1, i64* %_6763
  %_6765 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_6766 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_6764 = call i64 @arrcheck({ i64, [0 x i64] }* %_6765, { i64, [0 x i64] }* %_6766, i64 4)
  %_6767 = icmp eq i64 %_6764, 1
  br i1 %_6767, label %_6768, label %_6769
_6768:
  store i64 0, i64* %_6763
  br label %_6770
_6769:
  br label %_6770
_6770:
  %_6771 = load i64, i64* %_6763
  ret i64 %_6771
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
