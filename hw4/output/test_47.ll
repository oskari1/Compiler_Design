; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_665 = alloca i64
  store i64 %x, i64* %_665
  %_666 = alloca i64
  store i64 1, i64* %_666
  br label %_669
_669:
  %_667 = load i64, i64* %_665
  %_668 = icmp sgt i64 %_667, 0
  br i1 %_668, label %_670, label %_671
_670:
  %_672 = load i64, i64* %_666
  %_673 = load i64, i64* %_665
  %_674 = mul i64 %_672, %_673
  store i64 %_674, i64* %_666
  %_675 = load i64, i64* %_665
  %_676 = sub i64 %_675, 1
  store i64 %_676, i64* %_665
  br label %_669
_671:
  %_677 = load i64, i64* %_666
  ret i64 %_677
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_660 = alloca i64
  store i64 %argc, i64* %_660
  %_661 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_661
  %_664 = call i64 @fact(i64 5)
  %_663 = call i8* @string_of_int(i64 %_664)
  call void @print_string(i8* %_663)
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
