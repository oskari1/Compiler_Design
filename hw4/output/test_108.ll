; generated from: ./dbernhard/simple_while2.oat
target triple = "x86_64-unknown-linux"
@counter = global i64 100

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_4759 = alloca i64
  store i64 %argc, i64* %_4759
  %_4760 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_4760
  %_4761 = alloca i64
  store i64 0, i64* %_4761
  br label %_4763
_4763:
  %_4762 = call i1 @condition()
  br i1 %_4762, label %_4764, label %_4765
_4764:
  %_4766 = load i64, i64* %_4761
  %_4767 = add i64 %_4766, 1
  store i64 %_4767, i64* %_4761
  %_4768 = load i64, i64* @counter
  %_4769 = sub i64 %_4768, 1
  store i64 %_4769, i64* @counter
  br label %_4763
_4765:
  %_4770 = load i64, i64* %_4761
  ret i64 %_4770
}

define i1 @condition() {
  %_4757 = load i64, i64* @counter
  %_4758 = icmp sgt i64 %_4757, 50
  ret i1 %_4758
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
