	.text
	.globl	sieve
sieve:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	(%rdx), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	movq	%rdi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4314
	.text
_body4313:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-64(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdi
	addq	$1, %rdi
	movq	%rdi, (%r11)
	jmp	_cond4314
	.text
_body4334:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	(%r10), %r11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	$1, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdi
	addq	$1, %rdi
	movq	%rdi, (%r10)
	jmp	_cond4335
	.text
_body4361:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	(%r9 ), %r10
	movq	%r11, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	cmpq	$0, %rdi
	jne	_then4391
	jmp	_else4390
	.text
_body4377:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	(%rsi), %r10
	movq	%r11, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	movq	(%r9 ), %r10
	addq	%r10, %rdi
	movq	%rdi, (%rsi)
	jmp	_cond4378
	.text
_body4403:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	(%r8 ), %rsi
	movq	%r9 , %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	cmpq	$0, %rdi
	jne	_then4416
	jmp	_else4415
	.text
_cond4314:
	movq	(%r11), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	-80(%rbp), %rdi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body4313
	jmp	_post4312
	.text
_cond4335:
	movq	(%r10), %r11
	movq	(%rdx), %rdi
	cmpq	%rdi, %r11
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body4334
	jmp	_post4333
	.text
_cond4362:
	movq	(%r9 ), %r10
	movq	(%rdx), %rdi
	cmpq	%rdi, %r10
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body4361
	jmp	_post4360
	.text
_cond4378:
	movq	(%rsi), %r10
	movq	(%rdx), %rdi
	cmpq	%rdi, %r10
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body4377
	jmp	_post4376
	.text
_cond4404:
	movq	(%r8 ), %rsi
	movq	(%rdx), %rdi
	cmpq	%rdi, %rsi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body4403
	jmp	_post4402
	.text
_else4390:
	jmp	_merge4389
	.text
_else4415:
	jmp	_merge4414
	.text
_merge4389:
	movq	(%r9 ), %rdi
	addq	$1, %rdi
	movq	%rdi, (%r9 )
	jmp	_cond4362
	.text
_merge4414:
	movq	(%r8 ), %rdi
	addq	$1, %rdi
	movq	%rdi, (%r8 )
	jmp	_cond4404
	.text
_post4312:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4335
	.text
_post4333:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, %rdi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, %rdi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond4362
	.text
_post4360:
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond4404
	.text
_post4376:
	jmp	_merge4389
	.text
_post4402:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4391:
	movq	(%r9 ), %rdi
	imulq	$2, %rdi
	movq	%rdi, (%rsi)
	jmp	_cond4378
	.text
_then4416:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge4414
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$100, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	callq	sieve
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	