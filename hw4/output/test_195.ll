; generated from: ./nicdard/if.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8682 = alloca i64
  store i64 %argc, i64* %_8682
  %_8683 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8683
  br i1 0, label %_8684, label %_8685
_8684:
  ret i64 1
_8685:
  br label %_8686
_8686:
  br i1 0, label %_8687, label %_8688
_8687:
  ret i64 2
_8688:
  ret i64 3
_8690:
  ret i64 4
_8691:
  br i1 1, label %_8693, label %_8694
_8693:
  ret i64 5
_8694:
  br label %_8695
_8695:
  br label %_8692
_8692:
  br i1 0, label %_8696, label %_8697
_8696:
  ret i64 6
_8697:
  br i1 1, label %_8699, label %_8700
_8699:
  ret i64 7
_8700:
  ret i64 8
_8702:
  br i1 1, label %_8705, label %_8706
_8705:
  ret i64 9
_8706:
  ret i64 10
_8703:
  br i1 1, label %_8708, label %_8709
_8708:
  ret i64 71
_8709:
  ret i64 12
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
