; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2707 = alloca i64
  store i64 %argc, i64* %_2707
  %_2708 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2708
  %_2709 = icmp eq i1 1, 0
  %_2710 = sub i64 0, 4
  %_2711 = add i64 %_2710, 5
  %_2712 = icmp sgt i64 %_2711, 0
  %_2713 = mul i64 6, 4
  %_2714 = icmp slt i64 %_2713, 25
  %_2715 = and i1 %_2712, %_2714
  %_2716 = or i1 %_2709, %_2715
  br i1 %_2716, label %_2717, label %_2718
_2717:
  ret i64 9
_2718:
  ret i64 4
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
