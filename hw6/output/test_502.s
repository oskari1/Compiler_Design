	.data
	.globl	_str_arr1094
_str_arr1094:
	.asciz	"\n"
	.text
	.globl	min
min:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, (%r11)
	movq	%rsi, (%r9 )
	movq	(%r11), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r8 )
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1331
	.text
_body1330:
	movq	(%r11), %rdi
	movq	(%r10), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdx
	cmpq	%rdx, %rsi
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then1349
	jmp	_else1348
	.text
_cond1331:
	movq	(%r10), %rsi
	movq	(%r9 ), %rdx
	cmpq	%rdx, %rsi
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body1330
	jmp	_post1329
	.text
_else1348:
	jmp	_merge1347
	.text
_merge1347:
	movq	(%r10), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r10)
	jmp	_cond1331
	.text
_post1329:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then1349:
	movq	(%r11), %rdi
	movq	(%r10), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r8 )
	jmp	_merge1347
	.text
	.globl	max
max:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, (%r11)
	movq	%rsi, (%r9 )
	movq	(%r11), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r8 )
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1288
	.text
_body1287:
	movq	(%r11), %rdi
	movq	(%r10), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdx
	cmpq	%rdx, %rsi
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then1306
	jmp	_else1305
	.text
_cond1288:
	movq	(%r10), %rsi
	movq	(%r9 ), %rdx
	cmpq	%rdx, %rsi
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body1287
	jmp	_post1286
	.text
_else1305:
	jmp	_merge1304
	.text
_merge1304:
	movq	(%r10), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r10)
	jmp	_cond1288
	.text
_post1286:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then1306:
	movq	(%r11), %rdi
	movq	(%r10), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r8 )
	jmp	_merge1304
	.text
	.globl	count_sort
count_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$368, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, (%r10)
	movq	(%r10), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	-56(%rbp), %rdi
	callq	min
	popq	%rdx
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, (%r8 )
	movq	(%r10), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	-64(%rbp), %rdi
	callq	max
	popq	%rdx
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, (%r9 )
	movq	(%r9 ), %rdi
	movq	(%r8 ), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	-80(%rbp), %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, -88(%rbp)
	subq	$8, %rsp
	movq	%rsp, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1136
	.text
_body1135:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	-112(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-112(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1136
	.text
_body1156:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	-152(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-152(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	movq	(%r8 ), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, -160(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	-160(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-136(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-160(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	-184(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-184(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	(%r8 ), %rsi
	movq	-192(%rbp), %rax
	subq	%rsi, %rax
	movq	%rax, -200(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	-200(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-200(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1157
	.text
_body1204:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r10, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-232(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1205
	.text
_body1223:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r8 ), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	-256(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-256(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	cmpq	$0, %rsi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then1266
	jmp	_else1265
	.text
_cond1136:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-264(%rbp), %rax
	cmpq	-272(%rbp), %rax
	setl	-280(%rbp)
	andq	$1, -280(%rbp)
	cmpq	$0, -280(%rbp)
	jne	_body1135
	jmp	_post1134
	.text
_cond1157:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	(%r10), %rsi
	movq	-288(%rbp), %rax
	cmpq	%rsi, %rax
	setl	-296(%rbp)
	andq	$1, -296(%rbp)
	cmpq	$0, -296(%rbp)
	jne	_body1156
	jmp	_post1155
	.text
_cond1205:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	cmpq	-304(%rbp), %rsi
	setl	-312(%rbp)
	andq	$1, -312(%rbp)
	cmpq	$0, -312(%rbp)
	jne	_body1204
	jmp	_post1203
	.text
_cond1224:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r9 ), %rsi
	cmpq	%rsi, %rdi
	setle	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body1223
	jmp	_post1222
	.text
_else1265:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge1264
	.text
_merge1264:
	jmp	_cond1224
	.text
_post1134:
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1157
	.text
_post1155:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdi
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	callq	oat_alloc_array
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, -320(%rbp)
	subq	$8, %rsp
	movq	%rsp, -328(%rbp)
	movq	%rdi, %rax
	movq	-328(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-320(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1205
	.text
_post1203:
	movq	-320(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1224
	.text
_post1222:
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then1266:
	movq	(%rdx), %rdi
	movq	(%r11), %r10
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r10, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, (%rsi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r8 ), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, -344(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	-344(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	-336(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-344(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	(%r8 ), %rsi
	movq	%r10, %rax
	subq	%rsi, %rax
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	-360(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	-352(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-360(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rax
	subq	$1, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r11)
	jmp	_merge1264
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$9, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$65, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	$70, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	$72, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	$90, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %rdx
	movq	$65, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %rdx
	movq	$65, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, %rdx
	movq	$69, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, %rdx
	movq	$89, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, %rdx
	movq	$67, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r9 , (%r8 )
	movq	$9, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%rdx, %rdi
	callq	string_of_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	leaq	_str_arr1094(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	(%rdi), %rdx
	movq	(%r8 ), %rdi
	pushq	%rdi
	pushq	%rsi
	movq	%rdx, %rsi
	callq	count_sort
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, (%rsi)
	movq	(%rsi), %rdx
	movq	%rdx, %rdi
	callq	string_of_array
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	