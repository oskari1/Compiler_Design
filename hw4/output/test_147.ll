; generated from: ./dbernhard/tests_if5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7625 = alloca i64
  store i64 %argc, i64* %_7625
  %_7626 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7626
  %_7627 = call i64 @function(i64 0)
  %_7628 = call i64 @function(i64 1)
  %_7629 = add i64 %_7627, %_7628
  %_7630 = call i64 @function(i64 2)
  %_7631 = add i64 %_7629, %_7630
  ret i64 %_7631
}

define i64 @function(i64 %x) {
  %_7614 = alloca i64
  store i64 %x, i64* %_7614
  %_7615 = load i64, i64* %_7614
  %_7616 = icmp eq i64 %_7615, 0
  br i1 %_7616, label %_7617, label %_7618
_7617:
  ret i64 10
_7618:
  %_7620 = load i64, i64* %_7614
  %_7621 = icmp eq i64 %_7620, 1
  br i1 %_7621, label %_7622, label %_7623
_7622:
  ret i64 0
_7623:
  ret i64 50
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
