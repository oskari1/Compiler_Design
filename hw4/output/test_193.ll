; generated from: ./nicdard/arlocal2.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [2 x { i64, [0 x i64] }*] }* @_8664 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_8664 = global { i64, [2 x { i64, [0 x i64] }*] } { i64 2, [2 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8662 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8663 to { i64, [0 x i64] }*) ] }
@_8662 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_8663 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 15, i64 16, i64 17 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_8654 = alloca i64
  store i64 %argc, i64* %_8654
  %_8655 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_8655
  %_8656 = alloca { i64, [0 x i64] }*
  %_raw_array8657 = call i64* @oat_alloc_array(i64 2)
  %_array8658 = bitcast i64* %_raw_array8657 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array8658, { i64, [0 x i64] }** %_8656
  %_8659 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8656
  %_8660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8659, i32 0, i32 1, i32 1
  %_8661 = load i64, i64* %_8660
  ret i64 %_8661
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
