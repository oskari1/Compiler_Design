; generated from: ./dbernhard/count_primes_less_100.oat
target triple = "x86_64-unknown-linux"
@list = global { i64, [0 x i64] }* null

define i1 @isPrime(i64 %x) {
  %_7779 = alloca i64
  store i64 %x, i64* %_7779
  %_7788 = alloca i64
  %_7795 = alloca i64
  %_7780 = load i64, i64* %_7779
  %_7781 = icmp eq i64 %_7780, 0
  %_7782 = load i64, i64* %_7779
  %_7783 = icmp eq i64 %_7782, 1
  %_7784 = or i1 %_7781, %_7783
  br i1 %_7784, label %_7785, label %_7786
_7785:
  ret i1 0
_7786:
  br label %_7787
_7787:
  store i64 2, i64* %_7788
  br label %_7792
_7792:
  %_7789 = load i64, i64* %_7788
  %_7790 = load i64, i64* %_7779
  %_7791 = icmp slt i64 %_7789, %_7790
  br i1 %_7791, label %_7793, label %_7794
_7793:
  %_7796 = load i64, i64* %_7779
  store i64 %_7796, i64* %_7795
  br label %_7800
_7800:
  %_7797 = load i64, i64* %_7795
  %_7798 = load i64, i64* %_7788
  %_7799 = icmp sge i64 %_7797, %_7798
  br i1 %_7799, label %_7801, label %_7802
_7801:
  %_7803 = load i64, i64* %_7795
  %_7804 = load i64, i64* %_7788
  %_7805 = sub i64 %_7803, %_7804
  store i64 %_7805, i64* %_7795
  br label %_7800
_7802:
  %_7806 = load i64, i64* %_7795
  %_7807 = icmp eq i64 %_7806, 0
  br i1 %_7807, label %_7808, label %_7809
_7808:
  ret i1 0
_7809:
  br label %_7810
_7810:
  %_7811 = load i64, i64* %_7788
  %_7812 = add i64 %_7811, 1
  store i64 %_7812, i64* %_7788
  br label %_7792
_7794:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_7739 = alloca i64
  store i64 %argc, i64* %_7739
  %_7740 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7740
  %_7741 = alloca i64
  %_7745 = alloca i64
  %_7758 = alloca i64
  %_7759 = alloca i64
  store i64 100, i64* %_7741
  %_7742 = load i64, i64* %_7741
  %_raw_array7743 = call i64* @oat_alloc_array(i64 %_7742)
  %_array7744 = bitcast i64* %_raw_array7743 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7744, { i64, [0 x i64] }** @list
  store i64 0, i64* %_7745
  br label %_7748
_7748:
  %_7746 = load i64, i64* %_7745
  %_7747 = icmp slt i64 %_7746, 100
  br i1 %_7747, label %_7749, label %_7750
_7749:
  %_7751 = load i64, i64* %_7745
  %_7752 = add i64 %_7751, 1
  %_7754 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @list
  %_7755 = load i64, i64* %_7745
  %_7753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7754, i32 0, i32 1, i64 %_7755
  store i64 %_7752, i64* %_7753
  %_7756 = load i64, i64* %_7745
  %_7757 = add i64 %_7756, 1
  store i64 %_7757, i64* %_7745
  br label %_7748
_7750:
  store i64 0, i64* %_7758
  store i64 0, i64* %_7759
  br label %_7763
_7763:
  %_7760 = load i64, i64* %_7759
  %_7761 = load i64, i64* %_7741
  %_7762 = icmp slt i64 %_7760, %_7761
  br i1 %_7762, label %_7764, label %_7765
_7764:
  %_7767 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @list
  %_7768 = load i64, i64* %_7759
  %_7769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7767, i32 0, i32 1, i64 %_7768
  %_7770 = load i64, i64* %_7769
  %_7766 = call i1 @isPrime(i64 %_7770)
  br i1 %_7766, label %_7771, label %_7772
_7771:
  %_7774 = load i64, i64* %_7758
  %_7775 = add i64 %_7774, 1
  store i64 %_7775, i64* %_7758
  br label %_7773
_7772:
  br label %_7773
_7773:
  %_7776 = load i64, i64* %_7759
  %_7777 = add i64 %_7776, 1
  store i64 %_7777, i64* %_7759
  br label %_7763
_7765:
  %_7778 = load i64, i64* %_7758
  ret i64 %_7778
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
