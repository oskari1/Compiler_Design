; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_4691 = load i64, i64* @a
  %_4692 = add i64 %_4691, 1
  store i64 %_4692, i64* @a
  %_4693 = load i64, i64* @a
  ret i64 %_4693
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4670 = alloca i64
  store i64 %argc, i64* %_4670
  %_4671 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4671
  %_4672 = alloca { i64, [0 x i64] }*
  %_4673 = call i64 @f()
  %_raw_array4674 = call i64* @oat_alloc_array(i64 %_4673)
  %_array4675 = bitcast i64* %_raw_array4674 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4675, { i64, [0 x i64] }** %_4672
  %_4676 = call i64 @f()
  %_4678 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4672
  %_4677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4678, i32 0, i32 1, i32 0
  store i64 %_4676, i64* %_4677
  %_4679 = call i64 @f()
  %_4681 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4672
  %_4680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4681, i32 0, i32 1, i32 1
  store i64 %_4679, i64* %_4680
  %_4682 = load i64, i64* @a
  %_4683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4672
  %_4684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4683, i32 0, i32 1, i32 0
  %_4685 = load i64, i64* %_4684
  %_4686 = add i64 %_4682, %_4685
  %_4687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4672
  %_4688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4687, i32 0, i32 1, i32 1
  %_4689 = load i64, i64* %_4688
  %_4690 = add i64 %_4686, %_4689
  ret i64 %_4690
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
