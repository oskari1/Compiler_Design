; generated from: ./dbernhard/for_cond_fun.oat
target triple = "x86_64-unknown-linux"
@_5184 = global [3 x i8] c", \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_5169 = alloca i64
  store i64 %argc, i64* %_5169
  %_5170 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_5170
  %_5171 = alloca i64
  %_5172 = alloca i64
  %_5178 = alloca i8*
  store i64 0, i64* %_5171
  store i64 10, i64* %_5172
  br label %_5175
_5175:
  %_5173 = load i64, i64* %_5172
  %_5174 = icmp slt i64 %_5173, 20
  br i1 %_5174, label %_5176, label %_5177
_5176:
  %_5180 = load i64, i64* %_5172
  %_5179 = call i8* @string_of_int(i64 %_5180)
  store i8* %_5179, i8** %_5178
  %_5182 = load i8*, i8** %_5178
  call void @print_string(i8* %_5182)
  %_5185 = getelementptr [3 x i8], [3 x i8]* @_5184, i32 0, i32 0
  call void @print_string(i8* %_5185)
  %_5186 = load i64, i64* %_5172
  %_5187 = add i64 %_5186, 1
  store i64 %_5187, i64* %_5172
  %_5188 = load i64, i64* %_5171
  %_5189 = add i64 %_5188, 1
  store i64 %_5189, i64* %_5171
  %_5191 = load i64, i64* %_5171
  %_5192 = load i64, i64* %_5172
  %_5190 = call i1 @con(i64 %_5191, i64 %_5192)
  br label %_5175
_5177:
  %_5193 = load i64, i64* %_5171
  ret i64 %_5193
}

define i1 @con(i64 %a, i64 %b) {
  %_5163 = alloca i64
  store i64 %a, i64* %_5163
  %_5164 = alloca i64
  store i64 %b, i64* %_5164
  %_5165 = load i64, i64* %_5163
  %_5166 = add i64 %_5165, 1
  store i64 %_5166, i64* %_5163
  %_5167 = load i64, i64* %_5164
  %_5168 = add i64 %_5167, 1
  store i64 %_5168, i64* %_5164
  ret i1 1
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
