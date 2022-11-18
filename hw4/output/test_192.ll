; generated from: ./nicdard/arlocal1.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [2 x { i64, [0 x i64] }*] }* @_8653 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_8653 = global { i64, [2 x { i64, [0 x i64] }*] } { i64 2, [2 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8651 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8652 to { i64, [0 x i64] }*) ] }
@_8651 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_8652 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 15, i64 16, i64 17 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_8634 = alloca i64
  store i64 %argc, i64* %_8634
  %_8635 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_8635
  %_8636 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8637 = call i64* @oat_alloc_array(i64 2)
  %_array8638 = bitcast i64* %_raw_array8637 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8645 = call i64* @oat_alloc_array(i64 3)
  %_array8646 = bitcast i64* %_raw_array8645 to { i64, [0 x i64] }*
  %_8649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8646, i32 0, i32 1, i32 2
  store i64 17, i64* %_8649
  %_8648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8646, i32 0, i32 1, i32 1
  store i64 16, i64* %_8648
  %_8647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8646, i32 0, i32 1, i32 0
  store i64 15, i64* %_8647
  %_8650 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8638, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array8646, { i64, [0 x i64] }** %_8650
  %_raw_array8639 = call i64* @oat_alloc_array(i64 3)
  %_array8640 = bitcast i64* %_raw_array8639 to { i64, [0 x i64] }*
  %_8643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8640, i32 0, i32 1, i32 2
  store i64 3, i64* %_8643
  %_8642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8640, i32 0, i32 1, i32 1
  store i64 2, i64* %_8642
  %_8641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8640, i32 0, i32 1, i32 0
  store i64 1, i64* %_8641
  %_8644 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8638, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array8640, { i64, [0 x i64] }** %_8644
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array8638, { i64, [0 x { i64, [0 x i64] }*] }** %_8636
  ret i64 15
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
