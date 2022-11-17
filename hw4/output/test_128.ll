; generated from: ./dbernhard/advanced_add.oat
target triple = "x86_64-unknown-linux"
@mat_1 = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_5088 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_5088 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_5085 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_5086 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_5087 to { i64, [0 x i64] }*) ] }
@_5085 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 4, i64 3 ] }
@_5086 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 9, i64 1, i64 2 ] }
@_5087 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 2, i64 0, i64 1 ] }

define { i64, [0 x i64] }* @get() {
  %_5082 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_5083 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5082, i32 0, i32 1, i32 0
  %_5084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5083
  ret { i64, [0 x i64] }* %_5084
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_5063 = alloca i64
  store i64 %argc, i64* %_5063
  %_5064 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_5064
  %_5065 = alloca i64
  %_5066 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_5067 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5066, i32 0, i32 1, i32 1
  %_5068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5067
  %_5069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5068, i32 0, i32 1, i32 1
  %_5070 = load i64, i64* %_5069
  %_5071 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_5072 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_5071, i32 0, i32 1, i32 2
  %_5073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5072
  %_5074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5073, i32 0, i32 1, i32 0
  %_5075 = load i64, i64* %_5074
  %_5076 = add i64 %_5070, %_5075
  %_5077 = call { i64, [0 x i64] }* @get()
  %_5078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5077, i32 0, i32 1, i32 0
  %_5079 = load i64, i64* %_5078
  %_5080 = add i64 %_5076, %_5079
  store i64 %_5080, i64* %_5065
  %_5081 = load i64, i64* %_5065
  ret i64 %_5081
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
