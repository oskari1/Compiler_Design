; generated from: ./dbernhard/tests_if8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7704 = alloca i64
  store i64 %argc, i64* %_7704
  %_7705 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7705
  %_7706 = call i64 @function(i64 0)
  %_7707 = call i64 @function(i64 1)
  %_7708 = add i64 %_7706, %_7707
  %_7709 = call i64 @function(i64 2)
  %_7710 = add i64 %_7708, %_7709
  %_7711 = call i64 @function(i64 3)
  %_7712 = add i64 %_7710, %_7711
  ret i64 %_7712
}

define i64 @function(i64 %x) {
  %_7688 = alloca i64
  store i64 %x, i64* %_7688
  %_7689 = load i64, i64* %_7688
  %_7690 = icmp eq i64 %_7689, 0
  br i1 %_7690, label %_7691, label %_7692
_7691:
  br label %_7693
_7692:
  %_7694 = load i64, i64* %_7688
  %_7695 = icmp eq i64 %_7694, 1
  br i1 %_7695, label %_7696, label %_7697
_7696:
  br label %_7698
_7697:
  %_7699 = load i64, i64* %_7688
  %_7700 = icmp eq i64 %_7699, 2
  br i1 %_7700, label %_7701, label %_7702
_7701:
  ret i64 50
_7702:
  br label %_7703
_7703:
  br label %_7698
_7698:
  br label %_7693
_7693:
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
