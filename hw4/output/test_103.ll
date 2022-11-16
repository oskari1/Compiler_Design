; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_4391 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_4391
  %_4392 = alloca i64
  store i64 %i, i64* %_4392
  %_4393 = alloca i64
  store i64 %j, i64* %_4393
  %_4394 = alloca i64
  store i64 %count, i64* %_4394
  %_4395 = load i64, i64* %_4392
  %_4396 = icmp sge i64 %_4395, 0
  %_4397 = load i64, i64* %_4393
  %_4398 = icmp sge i64 %_4397, 0
  %_4399 = and i1 %_4396, %_4398
  %_4400 = load i64, i64* %_4392
  %_4401 = load i64, i64* @len
  %_4402 = icmp slt i64 %_4400, %_4401
  %_4403 = and i1 %_4399, %_4402
  %_4404 = load i64, i64* %_4393
  %_4405 = load i64, i64* @len
  %_4406 = icmp slt i64 %_4404, %_4405
  %_4407 = and i1 %_4403, %_4406
  br i1 %_4407, label %_4408, label %_4409
_4408:
  %_4411 = load i64, i64* %_4394
  %_4412 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4391
  %_4413 = load i64, i64* %_4392
  %_4414 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4412, i32 0, i32 1, i64 %_4413
  %_4415 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4414
  %_4416 = load i64, i64* %_4393
  %_4417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4415, i32 0, i32 1, i64 %_4416
  %_4418 = load i64, i64* %_4417
  %_4419 = add i64 %_4411, %_4418
  ret i64 %_4419
_4409:
  %_4420 = load i64, i64* %_4394
  ret i64 %_4420
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_4307 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_4307
  %_4308 = alloca i64
  store i64 %i, i64* %_4308
  %_4309 = alloca i64
  store i64 %j, i64* %_4309
  %_4310 = alloca i64
  %_4318 = alloca i64
  %_4311 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4307
  %_4312 = load i64, i64* %_4308
  %_4313 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4311, i32 0, i32 1, i64 %_4312
  %_4314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4313
  %_4315 = load i64, i64* %_4309
  %_4316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4314, i32 0, i32 1, i64 %_4315
  %_4317 = load i64, i64* %_4316
  store i64 %_4317, i64* %_4310
  store i64 0, i64* %_4318
  %_4320 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4307
  %_4321 = load i64, i64* %_4308
  %_4322 = sub i64 %_4321, 1
  %_4323 = load i64, i64* %_4309
  %_4324 = sub i64 %_4323, 1
  %_4325 = load i64, i64* %_4318
  %_4319 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4320, i64 %_4322, i64 %_4324, i64 %_4325)
  store i64 %_4319, i64* %_4318
  %_4327 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4307
  %_4328 = load i64, i64* %_4308
  %_4329 = sub i64 %_4328, 1
  %_4330 = load i64, i64* %_4309
  %_4331 = load i64, i64* %_4318
  %_4326 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4327, i64 %_4329, i64 %_4330, i64 %_4331)
  store i64 %_4326, i64* %_4318
  %_4333 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4307
  %_4334 = load i64, i64* %_4308
  %_4335 = sub i64 %_4334, 1
  %_4336 = load i64, i64* %_4309
  %_4337 = add i64 %_4336, 1
  %_4338 = load i64, i64* %_4318
  %_4332 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4333, i64 %_4335, i64 %_4337, i64 %_4338)
  store i64 %_4332, i64* %_4318
  %_4340 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4307
  %_4341 = load i64, i64* %_4308
  %_4342 = load i64, i64* %_4309
  %_4343 = sub i64 %_4342, 1
  %_4344 = load i64, i64* %_4318
  %_4339 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4340, i64 %_4341, i64 %_4343, i64 %_4344)
  store i64 %_4339, i64* %_4318
  %_4346 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4307
  %_4347 = load i64, i64* %_4308
  %_4348 = load i64, i64* %_4309
  %_4349 = add i64 %_4348, 1
  %_4350 = load i64, i64* %_4318
  %_4345 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4346, i64 %_4347, i64 %_4349, i64 %_4350)
  store i64 %_4345, i64* %_4318
  %_4352 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4307
  %_4353 = load i64, i64* %_4308
  %_4354 = add i64 %_4353, 1
  %_4355 = load i64, i64* %_4309
  %_4356 = sub i64 %_4355, 1
  %_4357 = load i64, i64* %_4318
  %_4351 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4352, i64 %_4354, i64 %_4356, i64 %_4357)
  store i64 %_4351, i64* %_4318
  %_4359 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4307
  %_4360 = load i64, i64* %_4308
  %_4361 = add i64 %_4360, 1
  %_4362 = load i64, i64* %_4309
  %_4363 = load i64, i64* %_4318
  %_4358 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4359, i64 %_4361, i64 %_4362, i64 %_4363)
  store i64 %_4358, i64* %_4318
  %_4365 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4307
  %_4366 = load i64, i64* %_4308
  %_4367 = add i64 %_4366, 1
  %_4368 = load i64, i64* %_4309
  %_4369 = add i64 %_4368, 1
  %_4370 = load i64, i64* %_4318
  %_4364 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_4365, i64 %_4367, i64 %_4369, i64 %_4370)
  store i64 %_4364, i64* %_4318
  %_4371 = load i64, i64* %_4310
  %_4372 = icmp eq i64 %_4371, 1
  br i1 %_4372, label %_4373, label %_4374
_4373:
  %_4376 = load i64, i64* %_4318
  %_4377 = icmp slt i64 %_4376, 2
  br i1 %_4377, label %_4378, label %_4379
_4378:
  ret i64 0
_4379:
  %_4381 = load i64, i64* %_4318
  %_4382 = icmp slt i64 %_4381, 4
  br i1 %_4382, label %_4383, label %_4384
_4383:
  ret i64 1
_4384:
  br label %_4385
_4385:
  br label %_4380
_4380:
  ret i64 0
_4374:
  br label %_4375
_4375:
  %_4386 = load i64, i64* %_4318
  %_4387 = icmp eq i64 %_4386, 3
  br i1 %_4387, label %_4388, label %_4389
_4388:
  ret i64 1
_4389:
  ret i64 0
_4390:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_4186 = alloca i64
  store i64 %argc, i64* %_4186
  %_4187 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_4187
  %_4188 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4219 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_4250 = alloca i64
  %_4261 = alloca i64
  %_4281 = alloca i64
  %_4288 = alloca i64
  %_raw_array4189 = call i64* @oat_alloc_array(i64 4)
  %_array4190 = bitcast i64* %_raw_array4189 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4212 = call i64* @oat_alloc_array(i64 4)
  %_array4213 = bitcast i64* %_raw_array4212 to { i64, [0 x i64] }*
  %_4217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4213, i32 0, i32 1, i32 3
  store i64 0, i64* %_4217
  %_4216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4213, i32 0, i32 1, i32 2
  store i64 0, i64* %_4216
  %_4215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4213, i32 0, i32 1, i32 1
  store i64 0, i64* %_4215
  %_4214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4213, i32 0, i32 1, i32 0
  store i64 0, i64* %_4214
  %_4218 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4190, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4213, { i64, [0 x i64] }** %_4218
  %_raw_array4205 = call i64* @oat_alloc_array(i64 4)
  %_array4206 = bitcast i64* %_raw_array4205 to { i64, [0 x i64] }*
  %_4210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4206, i32 0, i32 1, i32 3
  store i64 0, i64* %_4210
  %_4209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4206, i32 0, i32 1, i32 2
  store i64 1, i64* %_4209
  %_4208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4206, i32 0, i32 1, i32 1
  store i64 1, i64* %_4208
  %_4207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4206, i32 0, i32 1, i32 0
  store i64 1, i64* %_4207
  %_4211 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4190, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4206, { i64, [0 x i64] }** %_4211
  %_raw_array4198 = call i64* @oat_alloc_array(i64 4)
  %_array4199 = bitcast i64* %_raw_array4198 to { i64, [0 x i64] }*
  %_4203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4199, i32 0, i32 1, i32 3
  store i64 1, i64* %_4203
  %_4202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4199, i32 0, i32 1, i32 2
  store i64 1, i64* %_4202
  %_4201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4199, i32 0, i32 1, i32 1
  store i64 1, i64* %_4201
  %_4200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4199, i32 0, i32 1, i32 0
  store i64 0, i64* %_4200
  %_4204 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4190, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4199, { i64, [0 x i64] }** %_4204
  %_raw_array4191 = call i64* @oat_alloc_array(i64 4)
  %_array4192 = bitcast i64* %_raw_array4191 to { i64, [0 x i64] }*
  %_4196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4192, i32 0, i32 1, i32 3
  store i64 0, i64* %_4196
  %_4195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4192, i32 0, i32 1, i32 2
  store i64 0, i64* %_4195
  %_4194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4192, i32 0, i32 1, i32 1
  store i64 0, i64* %_4194
  %_4193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4192, i32 0, i32 1, i32 0
  store i64 0, i64* %_4193
  %_4197 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4190, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4192, { i64, [0 x i64] }** %_4197
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4190, { i64, [0 x { i64, [0 x i64] }*] }** %_4188
  %_raw_array4220 = call i64* @oat_alloc_array(i64 4)
  %_array4221 = bitcast i64* %_raw_array4220 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4243 = call i64* @oat_alloc_array(i64 4)
  %_array4244 = bitcast i64* %_raw_array4243 to { i64, [0 x i64] }*
  %_4248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4244, i32 0, i32 1, i32 3
  store i64 0, i64* %_4248
  %_4247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4244, i32 0, i32 1, i32 2
  store i64 0, i64* %_4247
  %_4246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4244, i32 0, i32 1, i32 1
  store i64 0, i64* %_4246
  %_4245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4244, i32 0, i32 1, i32 0
  store i64 0, i64* %_4245
  %_4249 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4221, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4244, { i64, [0 x i64] }** %_4249
  %_raw_array4236 = call i64* @oat_alloc_array(i64 4)
  %_array4237 = bitcast i64* %_raw_array4236 to { i64, [0 x i64] }*
  %_4241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4237, i32 0, i32 1, i32 3
  store i64 0, i64* %_4241
  %_4240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4237, i32 0, i32 1, i32 2
  store i64 0, i64* %_4240
  %_4239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4237, i32 0, i32 1, i32 1
  store i64 0, i64* %_4239
  %_4238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4237, i32 0, i32 1, i32 0
  store i64 0, i64* %_4238
  %_4242 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4221, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4237, { i64, [0 x i64] }** %_4242
  %_raw_array4229 = call i64* @oat_alloc_array(i64 4)
  %_array4230 = bitcast i64* %_raw_array4229 to { i64, [0 x i64] }*
  %_4234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4230, i32 0, i32 1, i32 3
  store i64 0, i64* %_4234
  %_4233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4230, i32 0, i32 1, i32 2
  store i64 0, i64* %_4233
  %_4232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4230, i32 0, i32 1, i32 1
  store i64 0, i64* %_4232
  %_4231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4230, i32 0, i32 1, i32 0
  store i64 0, i64* %_4231
  %_4235 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4221, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4230, { i64, [0 x i64] }** %_4235
  %_raw_array4222 = call i64* @oat_alloc_array(i64 4)
  %_array4223 = bitcast i64* %_raw_array4222 to { i64, [0 x i64] }*
  %_4227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4223, i32 0, i32 1, i32 3
  store i64 0, i64* %_4227
  %_4226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4223, i32 0, i32 1, i32 2
  store i64 0, i64* %_4226
  %_4225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4223, i32 0, i32 1, i32 1
  store i64 0, i64* %_4225
  %_4224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4223, i32 0, i32 1, i32 0
  store i64 0, i64* %_4224
  %_4228 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4221, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4223, { i64, [0 x i64] }** %_4228
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4221, { i64, [0 x { i64, [0 x i64] }*] }** %_4219
  store i64 0, i64* %_4250
  br label %_4253
_4253:
  %_4251 = load i64, i64* %_4250
  %_4252 = icmp slt i64 %_4251, 4
  br i1 %_4252, label %_4254, label %_4255
_4254:
  %_raw_array4256 = call i64* @oat_alloc_array(i64 4)
  %_array4257 = bitcast i64* %_raw_array4256 to { i64, [0 x i64] }*
  %_4259 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4219
  %_4260 = load i64, i64* %_4250
  %_4258 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4259, i32 0, i32 1, i64 %_4260
  store { i64, [0 x i64] }* %_array4257, { i64, [0 x i64] }** %_4258
  store i64 0, i64* %_4261
  br label %_4264
_4264:
  %_4262 = load i64, i64* %_4261
  %_4263 = icmp slt i64 %_4262, 4
  br i1 %_4263, label %_4265, label %_4266
_4265:
  %_4268 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4188
  %_4269 = load i64, i64* %_4250
  %_4270 = load i64, i64* %_4261
  %_4267 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_4268, i64 %_4269, i64 %_4270)
  %_4272 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4219
  %_4273 = load i64, i64* %_4250
  %_4274 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4272, i32 0, i32 1, i64 %_4273
  %_4275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4274
  %_4276 = load i64, i64* %_4261
  %_4271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4275, i32 0, i32 1, i64 %_4276
  store i64 %_4267, i64* %_4271
  %_4277 = load i64, i64* %_4261
  %_4278 = add i64 %_4277, 1
  store i64 %_4278, i64* %_4261
  br label %_4264
_4266:
  %_4279 = load i64, i64* %_4250
  %_4280 = add i64 %_4279, 1
  store i64 %_4280, i64* %_4250
  br label %_4253
_4255:
  store i64 0, i64* %_4281
  br label %_4285
_4285:
  %_4282 = load i64, i64* %_4281
  %_4283 = load i64, i64* @len
  %_4284 = icmp slt i64 %_4282, %_4283
  br i1 %_4284, label %_4286, label %_4287
_4286:
  store i64 0, i64* %_4288
  br label %_4292
_4292:
  %_4289 = load i64, i64* %_4288
  %_4290 = load i64, i64* @len
  %_4291 = icmp slt i64 %_4289, %_4290
  br i1 %_4291, label %_4293, label %_4294
_4293:
  %_4296 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_4219
  %_4297 = load i64, i64* %_4281
  %_4298 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_4296, i32 0, i32 1, i64 %_4297
  %_4299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_4298
  %_4300 = load i64, i64* %_4288
  %_4301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4299, i32 0, i32 1, i64 %_4300
  %_4302 = load i64, i64* %_4301
  call void @print_int(i64 %_4302)
  %_4303 = load i64, i64* %_4288
  %_4304 = add i64 %_4303, 1
  store i64 %_4304, i64* %_4288
  br label %_4292
_4294:
  %_4305 = load i64, i64* %_4281
  %_4306 = add i64 %_4305, 1
  store i64 %_4306, i64* %_4281
  br label %_4285
_4287:
  ret i64 0
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
