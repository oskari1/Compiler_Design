; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_725 = alloca i64
  store i64 %x, i64* %_725
  %_726 = load i64, i64* %_725
  ret i64 %_726
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_721 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_721
  %_722 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_721
  %_723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_722, i32 0, i32 1, i32 2
  %_724 = load i64, i64* %_723
  ret i64 %_724
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_678 = alloca i64
  store i64 %argc, i64* %_678
  %_679 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_679
  %_680 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_687 = alloca { i64, [0 x i64] }*
  %_690 = alloca i64
  %_691 = alloca i64
  %_raw_array681 = call i64* @oat_alloc_array(i64 2)
  %_array682 = bitcast i64* %_raw_array681 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array685 = call i64* @oat_alloc_array(i64 2)
  %_array686 = bitcast i64* %_raw_array685 to { i64, [0 x i64] }*
  %_raw_array683 = call i64* @oat_alloc_array(i64 2)
  %_array684 = bitcast i64* %_raw_array683 to { i64, [0 x i64] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array682, { i64, [0 x { i64, [0 x i64] }*] }** %_680
  %_raw_array688 = call i64* @oat_alloc_array(i64 4)
  %_array689 = bitcast i64* %_raw_array688 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array689, { i64, [0 x i64] }** %_687
  store i64 0, i64* %_690
  store i64 0, i64* %_691
  br label %_694
_694:
  %_692 = load i64, i64* %_691
  %_693 = icmp slt i64 %_692, 100
  br i1 %_693, label %_695, label %_696
_695:
  %_697 = load i64, i64* %_690
  %_698 = add i64 %_697, 1
  store i64 %_698, i64* %_690
  %_699 = load i64, i64* %_691
  %_700 = add i64 %_699, 1
  store i64 %_700, i64* %_691
  br label %_694
_696:
  %_702 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_687
  %_701 = call i64 @g({ i64, [0 x i64] }* %_702)
  %_704 = load i64, i64* @i
  %_703 = call i64 @f(i64 %_704)
  %_705 = add i64 %_701, %_703
  %_707 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_687
  %_708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_707, i32 0, i32 1, i32 3
  %_709 = load i64, i64* %_708
  %_706 = call i64 @f(i64 %_709)
  %_710 = add i64 %_705, %_706
  %_712 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_680
  %_713 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_712, i32 0, i32 1, i32 1
  %_714 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_713
  %_715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_714, i32 0, i32 1, i32 1
  %_716 = load i64, i64* %_715
  %_711 = call i64 @f(i64 %_716)
  %_717 = add i64 %_710, %_711
  %_719 = load i64, i64* %_690
  %_718 = call i64 @f(i64 %_719)
  %_720 = add i64 %_717, %_718
  ret i64 %_720
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
