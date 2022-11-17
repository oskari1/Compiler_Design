; generated from: ./dbernhard/count_primes_less_100.oat
target triple = "x86_64-unknown-linux"
@list = global { i64, [0 x i64] }* null

define i1 @isPrime(i64 %x) {
  %_5129 = alloca i64
  store i64 %x, i64* %_5129
  %_5138 = alloca i64
  %_5145 = alloca i64
  %_5130 = load i64, i64* %_5129
  %_5131 = icmp eq i64 %_5130, 0
  %_5132 = load i64, i64* %_5129
  %_5133 = icmp eq i64 %_5132, 1
  %_5134 = or i1 %_5131, %_5133
  br i1 %_5134, label %_5135, label %_5136
_5135:
  ret i1 0
_5136:
  br label %_5137
_5137:
  store i64 2, i64* %_5138
  br label %_5142
_5142:
  %_5139 = load i64, i64* %_5138
  %_5140 = load i64, i64* %_5129
  %_5141 = icmp slt i64 %_5139, %_5140
  br i1 %_5141, label %_5143, label %_5144
_5143:
  %_5146 = load i64, i64* %_5129
  store i64 %_5146, i64* %_5145
  br label %_5150
_5150:
  %_5147 = load i64, i64* %_5145
  %_5148 = load i64, i64* %_5138
  %_5149 = icmp sge i64 %_5147, %_5148
  br i1 %_5149, label %_5151, label %_5152
_5151:
  %_5153 = load i64, i64* %_5145
  %_5154 = load i64, i64* %_5138
  %_5155 = sub i64 %_5153, %_5154
  store i64 %_5155, i64* %_5145
  br label %_5150
_5152:
  %_5156 = load i64, i64* %_5145
  %_5157 = icmp eq i64 %_5156, 0
  br i1 %_5157, label %_5158, label %_5159
_5158:
  ret i1 0
_5159:
  br label %_5160
_5160:
  %_5161 = load i64, i64* %_5138
  %_5162 = add i64 %_5161, 1
  store i64 %_5162, i64* %_5138
  br label %_5142
_5144:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_5089 = alloca i64
  store i64 %argc, i64* %_5089
  %_5090 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_5090
  %_5091 = alloca i64
  %_5095 = alloca i64
  %_5108 = alloca i64
  %_5109 = alloca i64
  store i64 100, i64* %_5091
  %_5092 = load i64, i64* %_5091
  %_raw_array5093 = call i64* @oat_alloc_array(i64 %_5092)
  %_array5094 = bitcast i64* %_raw_array5093 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5094, { i64, [0 x i64] }** @list
  store i64 0, i64* %_5095
  br label %_5098
_5098:
  %_5096 = load i64, i64* %_5095
  %_5097 = icmp slt i64 %_5096, 100
  br i1 %_5097, label %_5099, label %_5100
_5099:
  %_5101 = load i64, i64* %_5095
  %_5102 = add i64 %_5101, 1
  %_5104 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @list
  %_5105 = load i64, i64* %_5095
  %_5103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5104, i32 0, i32 1, i64 %_5105
  store i64 %_5102, i64* %_5103
  %_5106 = load i64, i64* %_5095
  %_5107 = add i64 %_5106, 1
  store i64 %_5107, i64* %_5095
  br label %_5098
_5100:
  store i64 0, i64* %_5108
  store i64 0, i64* %_5109
  br label %_5113
_5113:
  %_5110 = load i64, i64* %_5109
  %_5111 = load i64, i64* %_5091
  %_5112 = icmp slt i64 %_5110, %_5111
  br i1 %_5112, label %_5114, label %_5115
_5114:
  %_5117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @list
  %_5118 = load i64, i64* %_5109
  %_5119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5117, i32 0, i32 1, i64 %_5118
  %_5120 = load i64, i64* %_5119
  %_5116 = call i1 @isPrime(i64 %_5120)
  br i1 %_5116, label %_5121, label %_5122
_5121:
  %_5124 = load i64, i64* %_5108
  %_5125 = add i64 %_5124, 1
  store i64 %_5125, i64* %_5108
  br label %_5123
_5122:
  br label %_5123
_5123:
  %_5126 = load i64, i64* %_5109
  %_5127 = add i64 %_5126, 1
  store i64 %_5127, i64* %_5109
  br label %_5113
_5115:
  %_5128 = load i64, i64* %_5108
  ret i64 %_5128
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
