; generated from: ./nicdard/arlocal2.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [2 x { i64, [0 x i64] }*] }* @_6014 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_6014 = global { i64, [2 x { i64, [0 x i64] }*] } { i64 2, [2 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_6012 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_6013 to { i64, [0 x i64] }*) ] }
@_6012 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_6013 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 15, i64 16, i64 17 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_6004 = alloca i64
  store i64 %argc, i64* %_6004
  %_6005 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_6005
  %_6006 = alloca { i64, [0 x i64] }*
  %_raw_array6007 = call i64* @oat_alloc_array(i64 2)
  %_array6008 = bitcast i64* %_raw_array6007 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6008, { i64, [0 x i64] }** %_6006
  %_6009 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_6006
  %_6010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6009, i32 0, i32 1, i32 1
  %_6011 = load i64, i64* %_6010
  ret i64 %_6011
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
