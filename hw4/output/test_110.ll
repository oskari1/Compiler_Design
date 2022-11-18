; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_5111 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_5119 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_5119
  %_5120 = alloca i64
  store i64 %array_size, i64* %_5120
  %_5121 = alloca i64
  %_5122 = alloca i64
  %_5130 = alloca i64
  store i64 0, i64* %_5121
  %_5123 = load i64, i64* %_5120
  %_5124 = sub i64 %_5123, 1
  store i64 %_5124, i64* %_5122
  br label %_5127
_5127:
  %_5125 = load i64, i64* %_5122
  %_5126 = icmp sgt i64 %_5125, 0
  br i1 %_5126, label %_5128, label %_5129
_5128:
  store i64 1, i64* %_5130
  br label %_5134
_5134:
  %_5131 = load i64, i64* %_5130
  %_5132 = load i64, i64* %_5122
  %_5133 = icmp sle i64 %_5131, %_5132
  br i1 %_5133, label %_5135, label %_5136
_5135:
  %_5137 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5119
  %_5138 = load i64, i64* %_5130
  %_5139 = sub i64 %_5138, 1
  %_5140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5137, i32 0, i32 1, i64 %_5139
  %_5141 = load i64, i64* %_5140
  %_5142 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5119
  %_5143 = load i64, i64* %_5122
  %_5144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5142, i32 0, i32 1, i64 %_5143
  %_5145 = load i64, i64* %_5144
  %_5146 = icmp sgt i64 %_5141, %_5145
  br i1 %_5146, label %_5147, label %_5148
_5147:
  %_5150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5119
  %_5151 = load i64, i64* %_5130
  %_5152 = sub i64 %_5151, 1
  %_5153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5150, i32 0, i32 1, i64 %_5152
  %_5154 = load i64, i64* %_5153
  store i64 %_5154, i64* %_5121
  %_5155 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5119
  %_5156 = load i64, i64* %_5122
  %_5157 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5155, i32 0, i32 1, i64 %_5156
  %_5158 = load i64, i64* %_5157
  %_5160 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5119
  %_5161 = load i64, i64* %_5130
  %_5162 = sub i64 %_5161, 1
  %_5159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5160, i32 0, i32 1, i64 %_5162
  store i64 %_5158, i64* %_5159
  %_5163 = load i64, i64* %_5121
  %_5165 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5119
  %_5166 = load i64, i64* %_5122
  %_5164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5165, i32 0, i32 1, i64 %_5166
  store i64 %_5163, i64* %_5164
  br label %_5149
_5148:
  br label %_5149
_5149:
  %_5167 = load i64, i64* %_5130
  %_5168 = add i64 %_5167, 1
  store i64 %_5168, i64* %_5130
  br label %_5134
_5136:
  %_5169 = load i64, i64* %_5122
  %_5170 = sub i64 %_5169, 1
  store i64 %_5170, i64* %_5122
  br label %_5127
_5129:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5086 = alloca i64
  store i64 %argc, i64* %_5086
  %_5087 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5087
  %_5088 = alloca { i64, [0 x i64] }*
  %_raw_array5089 = call i64* @oat_alloc_array(i64 8)
  %_array5090 = bitcast i64* %_raw_array5089 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5090, { i64, [0 x i64] }** %_5088
  %_5092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  %_5091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5092, i32 0, i32 1, i32 0
  store i64 121, i64* %_5091
  %_5094 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  %_5093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5094, i32 0, i32 1, i32 1
  store i64 125, i64* %_5093
  %_5096 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  %_5095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5096, i32 0, i32 1, i32 2
  store i64 120, i64* %_5095
  %_5098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  %_5097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5098, i32 0, i32 1, i32 3
  store i64 111, i64* %_5097
  %_5100 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  %_5099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5100, i32 0, i32 1, i32 4
  store i64 116, i64* %_5099
  %_5102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  %_5101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5102, i32 0, i32 1, i32 5
  store i64 110, i64* %_5101
  %_5104 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  %_5103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5104, i32 0, i32 1, i32 6
  store i64 117, i64* %_5103
  %_5106 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  %_5105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5106, i32 0, i32 1, i32 7
  store i64 119, i64* %_5105
  %_5109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  %_5108 = call i8* @string_of_array({ i64, [0 x i64] }* %_5109)
  call void @print_string(i8* %_5108)
  %_5112 = getelementptr [2 x i8], [2 x i8]* @_5111, i32 0, i32 0
  call void @print_string(i8* %_5112)
  %_5114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  call void @bubble_sort({ i64, [0 x i64] }* %_5114, i64 8)
  %_5117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_5088
  %_5116 = call i8* @string_of_array({ i64, [0 x i64] }* %_5117)
  call void @print_string(i8* %_5116)
  %_5118 = sub i64 0, 1
  ret i64 %_5118
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
