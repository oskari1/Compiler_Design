; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_679 = load i64, i64* @a
  %_680 = add i64 %_679, 1
  store i64 %_680, i64* @a
  %_681 = load i64, i64* @a
  ret i64 %_681
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_658 = alloca i64
  store i64 %argc, i64* %_658
  %_659 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_659
  %_660 = alloca { i64, [0 x i64] }*
  %_661 = call i64 @f()
  %_raw_array662 = call i64* @oat_alloc_array(i64 %_661)
  %_array663 = bitcast i64* %_raw_array662 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array663, { i64, [0 x i64] }** %_660
  %_664 = call i64 @f()
  %_666 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_660
  %_665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_666, i32 0, i32 1, i32 0
  store i64 %_664, i64* %_665
  %_667 = call i64 @f()
  %_669 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_660
  %_668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_669, i32 0, i32 1, i32 1
  store i64 %_667, i64* %_668
  %_670 = load i64, i64* @a
  %_671 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_660
  %_672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_671, i32 0, i32 1, i32 0
  %_673 = load i64, i64* %_672
  %_674 = add i64 %_670, %_673
  %_675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_660
  %_676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_675, i32 0, i32 1, i32 1
  %_677 = load i64, i64* %_676
  %_678 = add i64 %_674, %_677
  ret i64 %_678
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
