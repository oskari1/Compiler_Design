; generated from: ./dbernhard/mat_mult2.oat
target triple = "x86_64-unknown-linux"
@eye = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_8265 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_8265 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8262 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8263 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_8264 to { i64, [0 x i64] }*) ] }
@_8262 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 0, i64 0 ] }
@_8263 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 1, i64 0 ] }
@_8264 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 1 ] }
@_8071 = global [3 x i8] c"| \00"
@_8088 = global [2 x i8] c" \00"
@_8097 = global [4 x i8] c" |
\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8170 = alloca i64
  store i64 %argc, i64* %_8170
  %_8171 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_8171
  %_8172 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_8193 = alloca i64
  %_8194 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_8217 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8173 = call i64* @oat_alloc_array(i64 3)
  %_array8174 = bitcast i64* %_raw_array8173 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8187 = call i64* @oat_alloc_array(i64 3)
  %_array8188 = bitcast i64* %_raw_array8187 to { i64, [0 x i64] }*
  %_8191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8188, i32 0, i32 1, i32 2
  store i64 1, i64* %_8191
  %_8190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8188, i32 0, i32 1, i32 1
  store i64 0, i64* %_8190
  %_8189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8188, i32 0, i32 1, i32 0
  store i64 0, i64* %_8189
  %_8192 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8174, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array8188, { i64, [0 x i64] }** %_8192
  %_raw_array8181 = call i64* @oat_alloc_array(i64 3)
  %_array8182 = bitcast i64* %_raw_array8181 to { i64, [0 x i64] }*
  %_8185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8182, i32 0, i32 1, i32 2
  store i64 0, i64* %_8185
  %_8184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8182, i32 0, i32 1, i32 1
  store i64 1, i64* %_8184
  %_8183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8182, i32 0, i32 1, i32 0
  store i64 0, i64* %_8183
  %_8186 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8174, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array8182, { i64, [0 x i64] }** %_8186
  %_raw_array8175 = call i64* @oat_alloc_array(i64 3)
  %_array8176 = bitcast i64* %_raw_array8175 to { i64, [0 x i64] }*
  %_8179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8176, i32 0, i32 1, i32 2
  store i64 0, i64* %_8179
  %_8178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8176, i32 0, i32 1, i32 1
  store i64 0, i64* %_8178
  %_8177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8176, i32 0, i32 1, i32 0
  store i64 1, i64* %_8177
  %_8180 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8174, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array8176, { i64, [0 x i64] }** %_8180
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array8174, { i64, [0 x { i64, [0 x i64] }*] }** %_8172
  store i64 1, i64* %_8193
  %_raw_array8195 = call i64* @oat_alloc_array(i64 3)
  %_array8196 = bitcast i64* %_raw_array8195 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8211 = call i64* @oat_alloc_array(i64 3)
  %_array8212 = bitcast i64* %_raw_array8211 to { i64, [0 x i64] }*
  %_8215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8212, i32 0, i32 1, i32 2
  store i64 1, i64* %_8215
  %_8214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8212, i32 0, i32 1, i32 1
  store i64 0, i64* %_8214
  %_8213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8212, i32 0, i32 1, i32 0
  store i64 2, i64* %_8213
  %_8216 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8196, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array8212, { i64, [0 x i64] }** %_8216
  %_raw_array8204 = call i64* @oat_alloc_array(i64 3)
  %_array8205 = bitcast i64* %_raw_array8204 to { i64, [0 x i64] }*
  %_8209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8205, i32 0, i32 1, i32 2
  store i64 2, i64* %_8209
  %_8207 = load i64, i64* %_8193
  %_8208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8205, i32 0, i32 1, i32 1
  store i64 %_8207, i64* %_8208
  %_8206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8205, i32 0, i32 1, i32 0
  store i64 9, i64* %_8206
  %_8210 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8196, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array8205, { i64, [0 x i64] }** %_8210
  %_raw_array8197 = call i64* @oat_alloc_array(i64 3)
  %_array8198 = bitcast i64* %_raw_array8197 to { i64, [0 x i64] }*
  %_8202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8198, i32 0, i32 1, i32 2
  store i64 3, i64* %_8202
  %_8201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8198, i32 0, i32 1, i32 1
  store i64 4, i64* %_8201
  %_8199 = load i64, i64* %_8193
  %_8200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8198, i32 0, i32 1, i32 0
  store i64 %_8199, i64* %_8200
  %_8203 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8196, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array8198, { i64, [0 x i64] }** %_8203
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array8196, { i64, [0 x { i64, [0 x i64] }*] }** %_8194
  %_raw_array8218 = call i64* @oat_alloc_array(i64 3)
  %_array8219 = bitcast i64* %_raw_array8218 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8240 = call i64* @oat_alloc_array(i64 3)
  %_array8241 = bitcast i64* %_raw_array8240 to { i64, [0 x i64] }*
  %_8245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8241, i32 0, i32 1, i32 2
  store i64 1, i64* %_8245
  %_8243 = load i64, i64* %_8193
  %_8244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8241, i32 0, i32 1, i32 1
  store i64 %_8243, i64* %_8244
  %_8242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8241, i32 0, i32 1, i32 0
  store i64 2, i64* %_8242
  %_8246 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8219, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array8241, { i64, [0 x i64] }** %_8246
  %_raw_array8230 = call i64* @oat_alloc_array(i64 3)
  %_array8231 = bitcast i64* %_raw_array8230 to { i64, [0 x i64] }*
  %_8235 = load i64, i64* %_8193
  %_8236 = load i64, i64* %_8193
  %_8237 = add i64 %_8235, %_8236
  %_8238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8231, i32 0, i32 1, i32 2
  store i64 %_8237, i64* %_8238
  %_8233 = load i64, i64* %_8193
  %_8234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8231, i32 0, i32 1, i32 1
  store i64 %_8233, i64* %_8234
  %_8232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8231, i32 0, i32 1, i32 0
  store i64 1, i64* %_8232
  %_8239 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8219, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array8231, { i64, [0 x i64] }** %_8239
  %_raw_array8220 = call i64* @oat_alloc_array(i64 3)
  %_array8221 = bitcast i64* %_raw_array8220 to { i64, [0 x i64] }*
  %_8228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8221, i32 0, i32 1, i32 2
  store i64 2, i64* %_8228
  %_8224 = load i64, i64* %_8193
  %_8225 = load i64, i64* %_8193
  %_8226 = sub i64 %_8224, %_8225
  %_8227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8221, i32 0, i32 1, i32 1
  store i64 %_8226, i64* %_8227
  %_8222 = load i64, i64* %_8193
  %_8223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8221, i32 0, i32 1, i32 0
  store i64 %_8222, i64* %_8223
  %_8229 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8219, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array8221, { i64, [0 x i64] }** %_8229
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array8219, { i64, [0 x { i64, [0 x i64] }*] }** %_8217
  %_8249 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8194
  %_8250 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8217
  %_8248 = call { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %_8249, { i64, [0 x { i64, [0 x i64] }*] }* %_8250)
  %_8251 = load i64, i64* %_8193
  %_8252 = load i64, i64* %_8193
  %_8253 = xor i64 -1, %_8252
  %_8254 = icmp eq i64 %_8251, %_8253
  call void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %_8248, i1 %_8254)
  %_8255 = load i64, i64* %_8193
  %_8256 = load i64, i64* %_8193
  %_8257 = icmp eq i64 %_8255, %_8256
  br i1 %_8257, label %_8258, label %_8259
_8258:
  ret i64 0
_8259:
  br label %_8260
_8260:
  %_8261 = sub i64 0, 1
  ret i64 %_8261
}

define { i64, [0 x { i64, [0 x i64] }*] }* @new_mat() {
  %_raw_array8159 = call i64* @oat_alloc_array(i64 3)
  %_array8160 = bitcast i64* %_raw_array8159 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8167 = call i64* @oat_alloc_array(i64 3)
  %_array8168 = bitcast i64* %_raw_array8167 to { i64, [0 x i64] }*
  %_8169 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8160, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array8168, { i64, [0 x i64] }** %_8169
  %_raw_array8164 = call i64* @oat_alloc_array(i64 3)
  %_array8165 = bitcast i64* %_raw_array8164 to { i64, [0 x i64] }*
  %_8166 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8160, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array8165, { i64, [0 x i64] }** %_8166
  %_raw_array8161 = call i64* @oat_alloc_array(i64 3)
  %_array8162 = bitcast i64* %_raw_array8161 to { i64, [0 x i64] }*
  %_8163 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array8160, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array8162, { i64, [0 x i64] }** %_8163
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_array8160
}

define { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }* %matb) {
  %_8101 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }** %_8101
  %_8102 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %matb, { i64, [0 x { i64, [0 x i64] }*] }** %_8102
  %_8103 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_8105 = alloca i64
  %_8111 = alloca i64
  %_8117 = alloca i64
  %_8104 = call { i64, [0 x { i64, [0 x i64] }*] }* @new_mat()
  store { i64, [0 x { i64, [0 x i64] }*] }* %_8104, { i64, [0 x { i64, [0 x i64] }*] }** %_8103
  store i64 0, i64* %_8105
  br label %_8108
_8108:
  %_8106 = load i64, i64* %_8105
  %_8107 = icmp slt i64 %_8106, 3
  br i1 %_8107, label %_8109, label %_8110
_8109:
  store i64 0, i64* %_8111
  br label %_8114
_8114:
  %_8112 = load i64, i64* %_8111
  %_8113 = icmp slt i64 %_8112, 3
  br i1 %_8113, label %_8115, label %_8116
_8115:
  store i64 0, i64* %_8117
  br label %_8120
_8120:
  %_8118 = load i64, i64* %_8117
  %_8119 = icmp slt i64 %_8118, 3
  br i1 %_8119, label %_8121, label %_8122
_8121:
  %_8123 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8103
  %_8124 = load i64, i64* %_8105
  %_8125 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_8123, i32 0, i32 1, i64 %_8124
  %_8126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8125
  %_8127 = load i64, i64* %_8111
  %_8128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8126, i32 0, i32 1, i64 %_8127
  %_8129 = load i64, i64* %_8128
  %_8130 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8101
  %_8131 = load i64, i64* %_8105
  %_8132 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_8130, i32 0, i32 1, i64 %_8131
  %_8133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8132
  %_8134 = load i64, i64* %_8117
  %_8135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8133, i32 0, i32 1, i64 %_8134
  %_8136 = load i64, i64* %_8135
  %_8137 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8102
  %_8138 = load i64, i64* %_8117
  %_8139 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_8137, i32 0, i32 1, i64 %_8138
  %_8140 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8139
  %_8141 = load i64, i64* %_8111
  %_8142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8140, i32 0, i32 1, i64 %_8141
  %_8143 = load i64, i64* %_8142
  %_8144 = mul i64 %_8136, %_8143
  %_8145 = add i64 %_8129, %_8144
  %_8147 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8103
  %_8148 = load i64, i64* %_8105
  %_8149 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_8147, i32 0, i32 1, i64 %_8148
  %_8150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8149
  %_8151 = load i64, i64* %_8111
  %_8146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8150, i32 0, i32 1, i64 %_8151
  store i64 %_8145, i64* %_8146
  %_8152 = load i64, i64* %_8117
  %_8153 = add i64 %_8152, 1
  store i64 %_8153, i64* %_8117
  br label %_8120
_8122:
  %_8154 = load i64, i64* %_8111
  %_8155 = add i64 %_8154, 1
  store i64 %_8155, i64* %_8111
  br label %_8114
_8116:
  %_8156 = load i64, i64* %_8105
  %_8157 = add i64 %_8156, 1
  store i64 %_8157, i64* %_8105
  br label %_8108
_8110:
  %_8158 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8103
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_8158
}

define void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %mat, i1 %pretty) {
  %_8058 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %mat, { i64, [0 x { i64, [0 x i64] }*] }** %_8058
  %_8059 = alloca i1
  store i1 %pretty, i1* %_8059
  %_8060 = alloca i64
  %_8073 = alloca i64
  store i64 0, i64* %_8060
  br label %_8063
_8063:
  %_8061 = load i64, i64* %_8060
  %_8062 = icmp slt i64 %_8061, 3
  br i1 %_8062, label %_8064, label %_8065
_8064:
  %_8066 = load i1, i1* %_8059
  br i1 %_8066, label %_8067, label %_8068
_8067:
  %_8072 = getelementptr [3 x i8], [3 x i8]* @_8071, i32 0, i32 0
  call void @print_string(i8* %_8072)
  br label %_8069
_8068:
  br label %_8069
_8069:
  store i64 0, i64* %_8073
  br label %_8076
_8076:
  %_8074 = load i64, i64* %_8073
  %_8075 = icmp slt i64 %_8074, 3
  br i1 %_8075, label %_8077, label %_8078
_8077:
  %_8080 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_8058
  %_8081 = load i64, i64* %_8060
  %_8082 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_8080, i32 0, i32 1, i64 %_8081
  %_8083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_8082
  %_8084 = load i64, i64* %_8073
  %_8085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8083, i32 0, i32 1, i64 %_8084
  %_8086 = load i64, i64* %_8085
  call void @print_int(i64 %_8086)
  %_8089 = getelementptr [2 x i8], [2 x i8]* @_8088, i32 0, i32 0
  call void @print_string(i8* %_8089)
  %_8090 = load i64, i64* %_8073
  %_8091 = add i64 %_8090, 1
  store i64 %_8091, i64* %_8073
  br label %_8076
_8078:
  %_8092 = load i1, i1* %_8059
  br i1 %_8092, label %_8093, label %_8094
_8093:
  %_8098 = getelementptr [4 x i8], [4 x i8]* @_8097, i32 0, i32 0
  call void @print_string(i8* %_8098)
  br label %_8095
_8094:
  br label %_8095
_8095:
  %_8099 = load i64, i64* %_8060
  %_8100 = add i64 %_8099, 1
  store i64 %_8100, i64* %_8060
  br label %_8063
_8065:
  ret void
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
