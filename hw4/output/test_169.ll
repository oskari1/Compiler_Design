; generated from: ./nicdard/arlocal1.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [2 x { i64, [0 x i64] }*] }* @_6003 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_6003 = global { i64, [2 x { i64, [0 x i64] }*] } { i64 2, [2 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_6001 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_6002 to { i64, [0 x i64] }*) ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_5984 = alloca i64
  store i64 %argc, i64* %_5984
  %_5985 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_5985
  %_5986 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5987 = call i64* @oat_alloc_array(i64 2)
  %_array5988 = bitcast i64* %_raw_array5987 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5995 = call i64* @oat_alloc_array(i64 3)
  %_array5996 = bitcast i64* %_raw_array5995 to { i64, [0 x i64] }*
  %_5999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5996, i32 0, i32 1, i32 2
  store i64 17, i64* %_5999
  %_5998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5996, i32 0, i32 1, i32 1
  store i64 16, i64* %_5998
  %_5997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5996, i32 0, i32 1, i32 0
  store i64 15, i64* %_5997
  %_6000 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5988, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5996, { i64, [0 x i64] }** %_6000
  %_raw_array5989 = call i64* @oat_alloc_array(i64 3)
  %_array5990 = bitcast i64* %_raw_array5989 to { i64, [0 x i64] }*
  %_5993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5990, i32 0, i32 1, i32 2
  store i64 3, i64* %_5993
  %_5992 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5990, i32 0, i32 1, i32 1
  store i64 2, i64* %_5992
  %_5991 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5990, i32 0, i32 1, i32 0
  store i64 1, i64* %_5991
  %_5994 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5988, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5990, { i64, [0 x i64] }** %_5994
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5988, { i64, [0 x { i64, [0 x i64] }*] }** %_5986
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
