; generated from: ./nicdard/arglobal2.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [2 x { i64, [0 x i64] }*] }* @_8597 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_8597 = global { i64, [2 x { i64, [0 x i64] }*] } { i64 2, [2 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8595 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8596 to { i64, [0 x i64] }*) ] }
@_8595 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_8596 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 15, i64 16, i64 17 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_8593 = alloca i64
  store i64 %argc, i64* %_8593
  %_8594 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_8594
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
