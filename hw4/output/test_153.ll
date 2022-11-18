; generated from: ./dbernhard/for_cond_fun.oat
target triple = "x86_64-unknown-linux"
@_7834 = global [3 x i8] c", \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7819 = alloca i64
  store i64 %argc, i64* %_7819
  %_7820 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7820
  %_7821 = alloca i64
  %_7822 = alloca i64
  %_7828 = alloca i8*
  store i64 0, i64* %_7821
  store i64 10, i64* %_7822
  br label %_7825
_7825:
  %_7823 = load i64, i64* %_7822
  %_7824 = icmp slt i64 %_7823, 20
  br i1 %_7824, label %_7826, label %_7827
_7826:
  %_7830 = load i64, i64* %_7822
  %_7829 = call i8* @string_of_int(i64 %_7830)
  store i8* %_7829, i8** %_7828
  %_7832 = load i8*, i8** %_7828
  call void @print_string(i8* %_7832)
  %_7835 = getelementptr [3 x i8], [3 x i8]* @_7834, i32 0, i32 0
  call void @print_string(i8* %_7835)
  %_7836 = load i64, i64* %_7822
  %_7837 = add i64 %_7836, 1
  store i64 %_7837, i64* %_7822
  %_7838 = load i64, i64* %_7821
  %_7839 = add i64 %_7838, 1
  store i64 %_7839, i64* %_7821
  %_7841 = load i64, i64* %_7821
  %_7842 = load i64, i64* %_7822
  %_7840 = call i1 @con(i64 %_7841, i64 %_7842)
  br label %_7825
_7827:
  %_7843 = load i64, i64* %_7821
  ret i64 %_7843
}

define i1 @con(i64 %a, i64 %b) {
  %_7813 = alloca i64
  store i64 %a, i64* %_7813
  %_7814 = alloca i64
  store i64 %b, i64* %_7814
  %_7815 = load i64, i64* %_7813
  %_7816 = add i64 %_7815, 1
  store i64 %_7816, i64* %_7813
  %_7817 = load i64, i64* %_7814
  %_7818 = add i64 %_7817, 1
  store i64 %_7818, i64* %_7814
  ret i1 1
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
