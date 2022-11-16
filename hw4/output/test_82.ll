; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_2197 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_2193 = alloca i64
  store i64 %argc, i64* %_2193
  %_2194 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2194
  %_2195 = alloca { i64, [0 x i64] }*
  %_2199 = alloca i64
  %_2200 = alloca i64
  %_2212 = alloca i64
  %_2198 = getelementptr [11 x i8], [11 x i8]* @_2197, i32 0, i32 0
  %_2196 = call { i64, [0 x i64] }* @array_of_string(i8* %_2198)
  store { i64, [0 x i64] }* %_2196, { i64, [0 x i64] }** %_2195
  store i64 0, i64* %_2199
  store i64 0, i64* %_2200
  br label %_2203
_2203:
  %_2201 = load i64, i64* %_2200
  %_2202 = icmp slt i64 %_2201, 10
  br i1 %_2202, label %_2204, label %_2205
_2204:
  %_2206 = load i64, i64* %_2200
  %_2208 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2195
  %_2209 = load i64, i64* %_2200
  %_2207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2208, i32 0, i32 1, i64 %_2209
  store i64 %_2206, i64* %_2207
  %_2210 = load i64, i64* %_2200
  %_2211 = add i64 %_2210, 1
  store i64 %_2211, i64* %_2200
  br label %_2203
_2205:
  store i64 0, i64* %_2212
  br label %_2215
_2215:
  %_2213 = load i64, i64* %_2212
  %_2214 = icmp slt i64 %_2213, 10
  br i1 %_2214, label %_2216, label %_2217
_2216:
  %_2218 = load i64, i64* %_2199
  %_2219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_2195
  %_2220 = load i64, i64* %_2212
  %_2221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2219, i32 0, i32 1, i64 %_2220
  %_2222 = load i64, i64* %_2221
  %_2223 = add i64 %_2218, %_2222
  store i64 %_2223, i64* %_2199
  %_2224 = load i64, i64* %_2212
  %_2225 = add i64 %_2224, 1
  store i64 %_2225, i64* %_2212
  br label %_2215
_2217:
  %_2226 = load i64, i64* %_2199
  ret i64 %_2226
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
