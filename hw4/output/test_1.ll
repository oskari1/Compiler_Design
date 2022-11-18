; generated from: oatprograms/calculator.oat
target triple = "x86_64-unknown-linux"
@_27 = global [2 x i8] c"
\00"

define { i64, [0 x i64] }* @new_stack() {
  %_313 = alloca { i64, [0 x i64] }*
  %_raw_array314 = call i64* @oat_alloc_array(i64 7)
  %_array315 = bitcast i64* %_raw_array314 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array315, { i64, [0 x i64] }** %_313
  %_317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_313
  %_316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_317, i32 0, i32 1, i32 0
  store i64 5, i64* %_316
  %_319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_313
  %_318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_319, i32 0, i32 1, i32 1
  store i64 0, i64* %_318
  %_320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_313
  ret { i64, [0 x i64] }* %_320
}

define i64 @peek_stack({ i64, [0 x i64] }* %s) {
  %_303 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_303
  %_304 = alloca i64
  %_305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_303
  %_306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_305, i32 0, i32 1, i32 1
  %_307 = load i64, i64* %_306
  %_308 = add i64 1, %_307
  store i64 %_308, i64* %_304
  %_309 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_303
  %_310 = load i64, i64* %_304
  %_311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_309, i32 0, i32 1, i64 %_310
  %_312 = load i64, i64* %_311
  ret i64 %_312
}

define { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %s) {
  %_286 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_286
  %_287 = alloca i64
  %_288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_286
  %_289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_288, i32 0, i32 1, i32 1
  %_290 = load i64, i64* %_289
  store i64 %_290, i64* %_287
  %_291 = load i64, i64* %_287
  %_292 = icmp sgt i64 %_291, 0
  br i1 %_292, label %_293, label %_294
_293:
  %_296 = load i64, i64* %_287
  %_297 = sub i64 %_296, 1
  store i64 %_297, i64* %_287
  br label %_295
_294:
  br label %_295
_295:
  %_298 = load i64, i64* %_287
  %_300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_286
  %_299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_300, i32 0, i32 1, i32 1
  store i64 %_298, i64* %_299
  %_302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_286
  %_301 = call { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %_302)
  ret { i64, [0 x i64] }* %_301
}

define { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %s, i64 %v) {
  %_269 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_269
  %_270 = alloca i64
  store i64 %v, i64* %_270
  %_271 = alloca i64
  %_272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_269
  %_273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_272, i32 0, i32 1, i32 1
  %_274 = load i64, i64* %_273
  %_275 = add i64 2, %_274
  store i64 %_275, i64* %_271
  %_276 = load i64, i64* %_270
  %_278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_269
  %_279 = load i64, i64* %_271
  %_277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_278, i32 0, i32 1, i64 %_279
  store i64 %_276, i64* %_277
  %_280 = load i64, i64* %_271
  %_281 = sub i64 %_280, 1
  %_283 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_269
  %_282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_283, i32 0, i32 1, i32 1
  store i64 %_281, i64* %_282
  %_285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_269
  %_284 = call { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %_285)
  ret { i64, [0 x i64] }* %_284
}

define { i64, [0 x i64] }* @maybe_new_stack({ i64, [0 x i64] }* %s) {
  %_171 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_171
  %_173 = alloca i64
  %_177 = alloca i64
  %_194 = alloca { i64, [0 x i64] }*
  %_208 = alloca i64
  %_235 = alloca { i64, [0 x i64] }*
  %_249 = alloca i64
  %_172 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_171
  ret { i64, [0 x i64] }* %_172
_183:
  %_186 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_171
  ret { i64, [0 x i64] }* %_186
_184:
  br label %_185
_185:
  %_187 = load i64, i64* %_173
  %_188 = load i64, i64* %_177
  %_189 = shl i64 %_188, 1
  %_190 = icmp sgt i64 %_187, %_189
  br i1 %_190, label %_191, label %_192
_191:
  %_195 = load i64, i64* %_177
  %_196 = mul i64 %_195, 2
  %_197 = add i64 2, %_196
  %_raw_array198 = call i64* @oat_alloc_array(i64 %_197)
  %_array199 = bitcast i64* %_raw_array198 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array199, { i64, [0 x i64] }** %_194
  %_200 = load i64, i64* %_177
  %_201 = mul i64 %_200, 2
  store i64 %_201, i64* %_177
  %_202 = load i64, i64* %_177
  %_204 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_194
  %_203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_204, i32 0, i32 1, i32 0
  store i64 %_202, i64* %_203
  %_205 = load i64, i64* %_173
  %_207 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_194
  %_206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_207, i32 0, i32 1, i32 1
  store i64 %_205, i64* %_206
  store i64 0, i64* %_208
  br label %_212
_212:
  %_209 = load i64, i64* %_208
  %_210 = load i64, i64* %_173
  %_211 = icmp sle i64 %_209, %_210
  br i1 %_211, label %_213, label %_214
_213:
  %_215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_171
  %_216 = load i64, i64* %_208
  %_217 = add i64 2, %_216
  %_218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_215, i32 0, i32 1, i64 %_217
  %_219 = load i64, i64* %_218
  %_221 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_194
  %_222 = load i64, i64* %_208
  %_223 = add i64 2, %_222
  %_220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_221, i32 0, i32 1, i64 %_223
  store i64 %_219, i64* %_220
  %_224 = load i64, i64* %_208
  %_225 = add i64 %_224, 1
  store i64 %_225, i64* %_208
  br label %_212
_214:
  %_226 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_194
  ret { i64, [0 x i64] }* %_226
_192:
  %_227 = load i64, i64* %_173
  %_228 = load i64, i64* %_177
  %_229 = shl i64 %_228, 1
  %_230 = shl i64 %_229, 1
  %_231 = icmp slt i64 %_227, %_230
  br i1 %_231, label %_232, label %_233
_232:
  %_236 = load i64, i64* %_177
  %_237 = add i64 2, %_236
  %_238 = shl i64 %_237, 1
  %_raw_array239 = call i64* @oat_alloc_array(i64 %_238)
  %_array240 = bitcast i64* %_raw_array239 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array240, { i64, [0 x i64] }** %_235
  %_241 = load i64, i64* %_177
  %_242 = shl i64 %_241, 1
  store i64 %_242, i64* %_177
  %_243 = load i64, i64* %_177
  %_245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_235
  %_244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_245, i32 0, i32 1, i32 0
  store i64 %_243, i64* %_244
  %_246 = load i64, i64* %_173
  %_248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_235
  %_247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_248, i32 0, i32 1, i32 1
  store i64 %_246, i64* %_247
  store i64 0, i64* %_249
  br label %_253
_253:
  %_250 = load i64, i64* %_249
  %_251 = load i64, i64* %_173
  %_252 = icmp sle i64 %_250, %_251
  br i1 %_252, label %_254, label %_255
_254:
  %_256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_171
  %_257 = load i64, i64* %_249
  %_258 = add i64 2, %_257
  %_259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_256, i32 0, i32 1, i64 %_258
  %_260 = load i64, i64* %_259
  %_262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_235
  %_263 = load i64, i64* %_249
  %_264 = add i64 2, %_263
  %_261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_262, i32 0, i32 1, i64 %_264
  store i64 %_260, i64* %_261
  %_265 = load i64, i64* %_249
  %_266 = add i64 %_265, 1
  store i64 %_266, i64* %_249
  br label %_253
_255:
  %_267 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_235
  ret { i64, [0 x i64] }* %_267
_233:
  br label %_234
_234:
  br label %_193
_193:
  %_268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_171
  ret { i64, [0 x i64] }* %_268
}

define i64 @get_val(i64 %i) {
  %_168 = alloca i64
  store i64 %i, i64* %_168
  %_169 = load i64, i64* %_168
  %_170 = sub i64 %_169, 48
  ret i64 %_170
}

define i64 @int_of_string(i8* %s) {
  %_139 = alloca i8*
  store i8* %s, i8** %_139
  %_140 = alloca { i64, [0 x i64] }*
  %_143 = alloca i64
  %_146 = alloca i64
  %_147 = alloca i64
  %_156 = alloca i64
  %_142 = load i8*, i8** %_139
  %_141 = call { i64, [0 x i64] }* @array_of_string(i8* %_142)
  store { i64, [0 x i64] }* %_141, { i64, [0 x i64] }** %_140
  %_145 = load i8*, i8** %_139
  %_144 = call i64 @length_of_string(i8* %_145)
  store i64 %_144, i64* %_143
  store i64 0, i64* %_146
  store i64 0, i64* %_147
  br label %_151
_151:
  %_148 = load i64, i64* %_147
  %_149 = load i64, i64* %_143
  %_150 = icmp slt i64 %_148, %_149
  br i1 %_150, label %_152, label %_153
_152:
  %_154 = load i64, i64* %_146
  %_155 = mul i64 %_154, 10
  store i64 %_155, i64* %_146
  %_158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_140
  %_159 = load i64, i64* %_147
  %_160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_158, i32 0, i32 1, i64 %_159
  %_161 = load i64, i64* %_160
  %_157 = call i64 @get_val(i64 %_161)
  store i64 %_157, i64* %_156
  %_162 = load i64, i64* %_146
  %_163 = load i64, i64* %_156
  %_164 = add i64 %_162, %_163
  store i64 %_164, i64* %_146
  %_165 = load i64, i64* %_147
  %_166 = add i64 %_165, 1
  store i64 %_166, i64* %_147
  br label %_151
_153:
  %_167 = load i64, i64* %_146
  ret i64 %_167
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_24 = alloca i64
  store i64 %argc, i64* %_24
  %_25 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_25
  %_26 = alloca i8*
  %_29 = alloca { i64, [0 x i64] }*
  %_31 = alloca i64
  %_38 = alloca i8*
  %_43 = alloca i1
  %_44 = alloca i64
  %_52 = alloca { i64, [0 x i64] }*
  %_62 = alloca i64
  %_67 = alloca i64
  %_84 = alloca i64
  %_89 = alloca i64
  %_106 = alloca i64
  %_111 = alloca i64
  %_126 = alloca i64
  %_28 = getelementptr [2 x i8], [2 x i8]* @_27, i32 0, i32 0
  store i8* %_28, i8** %_26
  %_30 = call { i64, [0 x i64] }* @new_stack()
  store { i64, [0 x i64] }* %_30, { i64, [0 x i64] }** %_29
  store i64 1, i64* %_31
  br label %_35
_35:
  %_32 = load i64, i64* %_31
  %_33 = load i64, i64* %_24
  %_34 = icmp slt i64 %_32, %_33
  br i1 %_34, label %_36, label %_37
_36:
  %_39 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_25
  %_40 = load i64, i64* %_31
  %_41 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_39, i32 0, i32 1, i64 %_40
  %_42 = load i8*, i8** %_41
  store i8* %_42, i8** %_38
  store i1 0, i1* %_43
  %_46 = load i8*, i8** %_38
  %_45 = call i64 @length_of_string(i8* %_46)
  store i64 %_45, i64* %_44
  %_47 = load i64, i64* %_44
  %_48 = icmp eq i64 %_47, 1
  br i1 %_48, label %_49, label %_50
_49:
  %_54 = load i8*, i8** %_38
  %_53 = call { i64, [0 x i64] }* @array_of_string(i8* %_54)
  store { i64, [0 x i64] }* %_53, { i64, [0 x i64] }** %_52
  store i1 1, i1* %_43
  %_55 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_52
  %_56 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_55, i32 0, i32 1, i32 0
  %_57 = load i64, i64* %_56
  %_58 = icmp eq i64 %_57, 43
  br i1 %_58, label %_59, label %_60
_59:
  %_64 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_63 = call i64 @peek_stack({ i64, [0 x i64] }* %_64)
  store i64 %_63, i64* %_62
  %_66 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_65 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_66)
  store { i64, [0 x i64] }* %_65, { i64, [0 x i64] }** %_29
  %_69 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_68 = call i64 @peek_stack({ i64, [0 x i64] }* %_69)
  store i64 %_68, i64* %_67
  %_71 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_70 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_71)
  store { i64, [0 x i64] }* %_70, { i64, [0 x i64] }** %_29
  %_73 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_74 = load i64, i64* %_62
  %_75 = load i64, i64* %_67
  %_76 = add i64 %_74, %_75
  %_72 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_73, i64 %_76)
  store { i64, [0 x i64] }* %_72, { i64, [0 x i64] }** %_29
  br label %_61
_60:
  %_77 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_52
  %_78 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_77, i32 0, i32 1, i32 0
  %_79 = load i64, i64* %_78
  %_80 = icmp eq i64 %_79, 45
  br i1 %_80, label %_81, label %_82
_81:
  %_86 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_85 = call i64 @peek_stack({ i64, [0 x i64] }* %_86)
  store i64 %_85, i64* %_84
  %_88 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_87 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_88)
  store { i64, [0 x i64] }* %_87, { i64, [0 x i64] }** %_29
  %_91 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_90 = call i64 @peek_stack({ i64, [0 x i64] }* %_91)
  store i64 %_90, i64* %_89
  %_93 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_92 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_93)
  store { i64, [0 x i64] }* %_92, { i64, [0 x i64] }** %_29
  %_95 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_96 = load i64, i64* %_84
  %_97 = load i64, i64* %_89
  %_98 = sub i64 %_96, %_97
  %_94 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_95, i64 %_98)
  store { i64, [0 x i64] }* %_94, { i64, [0 x i64] }** %_29
  br label %_83
_82:
  %_99 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_52
  %_100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_99, i32 0, i32 1, i32 0
  %_101 = load i64, i64* %_100
  %_102 = icmp eq i64 %_101, 120
  br i1 %_102, label %_103, label %_104
_103:
  %_108 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_107 = call i64 @peek_stack({ i64, [0 x i64] }* %_108)
  store i64 %_107, i64* %_106
  %_110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_109 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_110)
  store { i64, [0 x i64] }* %_109, { i64, [0 x i64] }** %_29
  %_113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_112 = call i64 @peek_stack({ i64, [0 x i64] }* %_113)
  store i64 %_112, i64* %_111
  %_115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_114 = call { i64, [0 x i64] }* @pop_stack({ i64, [0 x i64] }* %_115)
  store { i64, [0 x i64] }* %_114, { i64, [0 x i64] }** %_29
  %_117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_118 = load i64, i64* %_106
  %_119 = load i64, i64* %_111
  %_120 = mul i64 %_118, %_119
  %_116 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_117, i64 %_120)
  store { i64, [0 x i64] }* %_116, { i64, [0 x i64] }** %_29
  br label %_105
_104:
  store i1 0, i1* %_43
  br label %_105
_105:
  br label %_83
_83:
  br label %_61
_61:
  br label %_51
_50:
  br label %_51
_51:
  %_121 = load i1, i1* %_43
  %_122 = icmp eq i1 %_121, 0
  br i1 %_122, label %_123, label %_124
_123:
  %_128 = load i8*, i8** %_38
  %_127 = call i64 @int_of_string(i8* %_128)
  store i64 %_127, i64* %_126
  %_130 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_131 = load i64, i64* %_126
  %_129 = call { i64, [0 x i64] }* @push_stack({ i64, [0 x i64] }* %_130, i64 %_131)
  store { i64, [0 x i64] }* %_129, { i64, [0 x i64] }** %_29
  br label %_125
_124:
  br label %_125
_125:
  %_132 = load i64, i64* %_31
  %_133 = add i64 %_132, 1
  store i64 %_133, i64* %_31
  br label %_35
_37:
  %_136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_135 = call i64 @peek_stack({ i64, [0 x i64] }* %_136)
  call void @print_int(i64 %_135)
  %_138 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_29
  %_137 = call i64 @peek_stack({ i64, [0 x i64] }* %_138)
  ret i64 %_137
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
