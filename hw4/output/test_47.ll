; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_734 = alloca i64
  store i64 %x, i64* %_734
  %_735 = alloca i64
  store i64 1, i64* %_735
  br label %_738
_738:
  %_736 = load i64, i64* %_734
  %_737 = icmp sgt i64 %_736, 0
  br i1 %_737, label %_739, label %_740
_739:
  %_741 = load i64, i64* %_735
  %_742 = load i64, i64* %_734
  %_743 = mul i64 %_741, %_742
  store i64 %_743, i64* %_735
  %_744 = load i64, i64* %_734
  %_745 = sub i64 %_744, 1
  store i64 %_745, i64* %_734
  br label %_738
_740:
  %_746 = load i64, i64* %_735
  ret i64 %_746
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_729 = alloca i64
  store i64 %argc, i64* %_729
  %_730 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_730
  %_733 = call i64 @fact(i64 5)
  %_732 = call i8* @string_of_int(i64 %_733)
  call void @print_string(i8* %_732)
  ret i64 0
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
