; generated from: ./dbernhard/advanced_add.oat
target triple = "x86_64-unknown-linux"
@mat_1 = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_7738 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_7738 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_7735 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_7736 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_7737 to { i64, [0 x i64] }*) ] }
@_7735 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 4, i64 3 ] }
@_7736 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 9, i64 1, i64 2 ] }
@_7737 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 2, i64 0, i64 1 ] }

define { i64, [0 x i64] }* @get() {
  %_7732 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_7733 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7732, i32 0, i32 1, i32 0
  %_7734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7733
  ret { i64, [0 x i64] }* %_7734
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_7713 = alloca i64
  store i64 %argc, i64* %_7713
  %_7714 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_7714
  %_7715 = alloca i64
  %_7716 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_7717 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7716, i32 0, i32 1, i32 1
  %_7718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7717
  %_7719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7718, i32 0, i32 1, i32 1
  %_7720 = load i64, i64* %_7719
  %_7721 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_7722 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_7721, i32 0, i32 1, i32 2
  %_7723 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_7722
  %_7724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7723, i32 0, i32 1, i32 0
  %_7725 = load i64, i64* %_7724
  %_7726 = add i64 %_7720, %_7725
  %_7727 = call { i64, [0 x i64] }* @get()
  %_7728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7727, i32 0, i32 1, i32 0
  %_7729 = load i64, i64* %_7728
  %_7730 = add i64 %_7726, %_7729
  store i64 %_7730, i64* %_7715
  %_7731 = load i64, i64* %_7715
  ret i64 %_7731
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
