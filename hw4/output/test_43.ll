; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_709 to i8*)
@_709 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_686 = alloca i64
  store i64 %argc, i64* %_686
  %_687 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_687
  %_688 = alloca { i64, [0 x i64] }*
  %_691 = alloca i64
  %_692 = alloca i64
  %_690 = load i8*, i8** @str
  %_689 = call { i64, [0 x i64] }* @array_of_string(i8* %_690)
  store { i64, [0 x i64] }* %_689, { i64, [0 x i64] }** %_688
  store i64 0, i64* %_691
  store i64 0, i64* %_692
  br label %_695
_695:
  %_693 = load i64, i64* %_692
  %_694 = icmp slt i64 %_693, 5
  br i1 %_694, label %_696, label %_697
_696:
  %_698 = load i64, i64* %_691
  %_699 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_688
  %_700 = load i64, i64* %_692
  %_701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_699, i32 0, i32 1, i64 %_700
  %_702 = load i64, i64* %_701
  %_703 = add i64 %_698, %_702
  store i64 %_703, i64* %_691
  %_704 = load i64, i64* %_692
  %_705 = add i64 %_704, 1
  store i64 %_705, i64* %_692
  br label %_695
_697:
  %_707 = load i64, i64* %_691
  call void @print_int(i64 %_707)
  %_708 = load i64, i64* %_691
  ret i64 %_708
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
