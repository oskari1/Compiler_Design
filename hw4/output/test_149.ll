; generated from: ./dbernhard/tests_if7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7679 = alloca i64
  store i64 %argc, i64* %_7679
  %_7680 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7680
  %_7681 = call i64 @function(i64 0)
  %_7682 = call i64 @function(i64 1)
  %_7683 = add i64 %_7681, %_7682
  %_7684 = call i64 @function(i64 2)
  %_7685 = add i64 %_7683, %_7684
  %_7686 = call i64 @function(i64 3)
  %_7687 = add i64 %_7685, %_7686
  ret i64 %_7687
}

define i64 @function(i64 %x) {
  %_7657 = alloca i64
  store i64 %x, i64* %_7657
  %_7658 = load i64, i64* %_7657
  %_7659 = icmp eq i64 %_7658, 0
  br i1 %_7659, label %_7660, label %_7661
_7660:
  br i1 1, label %_7663, label %_7664
_7663:
  ret i64 1
_7664:
  br label %_7665
_7665:
  br label %_7662
_7661:
  %_7666 = load i64, i64* %_7657
  %_7667 = icmp eq i64 %_7666, 1
  br i1 %_7667, label %_7668, label %_7669
_7668:
  br i1 1, label %_7671, label %_7672
_7671:
  ret i64 2
_7672:
  br label %_7673
_7673:
  br label %_7670
_7669:
  %_7674 = load i64, i64* %_7657
  %_7675 = icmp eq i64 %_7674, 2
  br i1 %_7675, label %_7676, label %_7677
_7676:
  ret i64 50
_7677:
  ret i64 0
_7670:
  br label %_7662
_7662:
  ret i64 100
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
