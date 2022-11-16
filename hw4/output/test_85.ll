; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_2285 = alloca i64
  store i64 %i, i64* %_2285
  %_2286 = alloca i64
  store i64 0, i64* %_2286
  %_2287 = load i64, i64* %_2285
  %_2288 = icmp eq i64 %_2287, 0
  br i1 %_2288, label %_2289, label %_2290
_2289:
  store i64 1, i64* %_2286
  br label %_2291
_2290:
  %_2292 = load i64, i64* %_2285
  %_2294 = load i64, i64* %_2285
  %_2295 = sub i64 %_2294, 1
  %_2293 = call i64 @f(i64 %_2295)
  %_2296 = mul i64 %_2292, %_2293
  store i64 %_2296, i64* %_2286
  br label %_2291
_2291:
  %_2297 = load i64, i64* %_2286
  ret i64 %_2297
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2282 = alloca i64
  store i64 %argc, i64* %_2282
  %_2283 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2283
  %_2284 = call i64 @f(i64 5)
  ret i64 %_2284
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
