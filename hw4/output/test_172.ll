; generated from: ./nicdard/if.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6032 = alloca i64
  store i64 %argc, i64* %_6032
  %_6033 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_6033
  br i1 0, label %_6034, label %_6035
_6034:
  ret i64 1
_6035:
  br label %_6036
_6036:
  br i1 0, label %_6037, label %_6038
_6037:
  ret i64 2
_6038:
  ret i64 3
_6040:
  ret i64 4
_6041:
  br i1 1, label %_6043, label %_6044
_6043:
  ret i64 5
_6044:
  br label %_6045
_6045:
  br label %_6042
_6042:
  br i1 0, label %_6046, label %_6047
_6046:
  ret i64 6
_6047:
  br i1 1, label %_6049, label %_6050
_6049:
  ret i64 7
_6050:
  ret i64 8
_6052:
  br i1 1, label %_6055, label %_6056
_6055:
  ret i64 9
_6056:
  ret i64 10
_6053:
  br i1 1, label %_6058, label %_6059
_6058:
  ret i64 71
_6059:
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
