	.data
	.globl	_str_arr9279
_str_arr9279:
	.asciz	"\n"
	.text
	.globl	min
min:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%r10)
	movq	%rsi, (%r8 )
	movq	(%r10), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rdx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond9516
	.text
_body9515:
	movq	(%r10), %r11
	movq	(%r9 ), %rdi
	movq	%r11, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
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
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	movq	(%rdx), %rsi
	cmpq	%rsi, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then9534
	jmp	_else9533
	.text
_cond9516:
	movq	(%r9 ), %rdi
	movq	(%r8 ), %rsi
	cmpq	%rsi, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body9515
	jmp	_post9514
	.text
_else9533:
	jmp	_merge9532
	.text
_merge9532:
	movq	(%r9 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond9516
	.text
_post9514:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then9534:
	movq	(%r10), %r11
	movq	(%r9 ), %rdi
	movq	%r11, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
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
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rdx)
	jmp	_merge9532
	.text
	.globl	max
max:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%r10)
	movq	%rsi, (%r8 )
	movq	(%r10), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rdx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond9473
	.text
_body9472:
	movq	(%r10), %r11
	movq	(%r9 ), %rdi
	movq	%r11, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
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
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	movq	(%rdx), %rsi
	cmpq	%rsi, %rdi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then9491
	jmp	_else9490
	.text
_cond9473:
	movq	(%r9 ), %rdi
	movq	(%r8 ), %rsi
	cmpq	%rsi, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body9472
	jmp	_post9471
	.text
_else9490:
	jmp	_merge9489
	.text
_merge9489:
	movq	(%r9 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond9473
	.text
_post9471:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then9491:
	movq	(%r10), %r11
	movq	(%r9 ), %rdi
	movq	%r11, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
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
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rdx)
	jmp	_merge9489
	.text
	.globl	count_sort
count_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
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
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	callq	min
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, (%r8 )
	movq	(%r10), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	callq	max
	popq	%rdx
	popq	%rdi
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
	movq	%rax, %rsi
	addq	$1, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	movq	%rsi, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9321
	.text
_body9320:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi
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
	movq	-80(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9321
	.text
_body9341:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	movq	(%r8 ), %rsi
	subq	%rsi, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	(%r8 ), %rsi
	movq	-128(%rbp), %rax
	subq	%rsi, %rax
	movq	%rax, -136(%rbp)
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
	movq	-136(%rbp), %rsi
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
	movq	-136(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	addq	$1, %rsi
	movq	%rsi, (%rdi)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9342
	.text
_body9389:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-144(%rbp), %rax
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
	movq	-144(%rbp), %rax
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
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9390
	.text
_body9408:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r8 ), %rsi
	subq	%rsi, %rdi
	movq	%r10, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	cmpq	$0, %rsi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then9451
	jmp	_else9450
	.text
_cond9321:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	cmpq	-152(%rbp), %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body9320
	jmp	_post9319
	.text
_cond9342:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r10), %rsi
	cmpq	%rsi, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body9341
	jmp	_post9340
	.text
_cond9390:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	cmpq	%r10, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body9389
	jmp	_post9388
	.text
_cond9409:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r9 ), %rsi
	cmpq	%rsi, %rdi
	setle	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body9408
	jmp	_post9407
	.text
_else9450:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge9449
	.text
_merge9449:
	jmp	_cond9409
	.text
_post9319:
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9342
	.text
_post9340:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rsi
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, -160(%rbp)
	subq	$8, %rsp
	movq	%rsp, -168(%rbp)
	movq	%rsi, %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9390
	.text
_post9388:
	movq	-160(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond9409
	.text
_post9407:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then9451:
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
	movq	%rax, %r10
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r8 ), %rsi
	subq	%rsi, %rdi
	movq	%r10, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	(%r8 ), %rsi
	subq	%rsi, %r10
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
	movq	%r10, %rsi
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
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	subq	$1, %rsi
	movq	%rsi, (%rdi)
	movq	(%r11), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r11)
	jmp	_merge9449
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	$9, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	$65, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r9 
	movq	$70, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %r9 
	movq	$72, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %r9 
	movq	$90, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %r9 
	movq	$65, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %r9 
	movq	$65, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, %r9 
	movq	$69, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, %r9 
	movq	$89, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, %r9 
	movq	$67, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, (%rdx)
	movq	$9, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	callq	string_of_array
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	print_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	leaq	_str_arr9279(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	print_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	(%r8 ), %rdi
	movq	(%rdx), %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	callq	count_sort
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, (%rsi)
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	callq	string_of_array
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	