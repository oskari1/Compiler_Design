; generated from: ./dbernhard/tests_if7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_5029 = alloca i64
  store i64 %argc, i64* %_5029
  %_5030 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_5030
  %_5031 = call i64 @function(i64 0)
  %_5032 = call i64 @function(i64 1)
  %_5033 = add i64 %_5031, %_5032
  %_5034 = call i64 @function(i64 2)
  %_5035 = add i64 %_5033, %_5034
  %_5036 = call i64 @function(i64 3)
  %_5037 = add i64 %_5035, %_5036
  ret i64 %_5037
}

define i64 @function(i64 %x) {
  %_5007 = alloca i64
  store i64 %x, i64* %_5007
  %_5008 = load i64, i64* %_5007
  %_5009 = icmp eq i64 %_5008, 0
  br i1 %_5009, label %_5010, label %_5011
_5010:
  br i1 1, label %_5013, label %_5014
_5013:
  ret i64 1
_5014:
  br label %_5015
_5015:
  br label %_5012
_5011:
  %_5016 = load i64, i64* %_5007
  %_5017 = icmp eq i64 %_5016, 1
  br i1 %_5017, label %_5018, label %_5019
_5018:
  br i1 1, label %_5021, label %_5022
_5021:
  ret i64 2
_5022:
  br label %_5023
_5023:
  br label %_5020
_5019:
  %_5024 = load i64, i64* %_5007
  %_5025 = icmp eq i64 %_5024, 2
  br i1 %_5025, label %_5026, label %_5027
_5026:
  ret i64 50
_5027:
  ret i64 0
_5020:
  br label %_5012
_5012:
  ret i64 100
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
