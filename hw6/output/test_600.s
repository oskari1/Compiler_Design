	.data
	.globl	_str_arr3475
_str_arr3475:
	.asciz	" "
	.data
	.globl	_str_arr3481
_str_arr3481:
	.asciz	" "
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%rdi
	pushq	%rsi
	movq	$10, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$126, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	$125, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	$124, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	$123, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %rdx
	movq	$122, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %rdx
	movq	$121, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, %rdx
	movq	$120, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, %rdx
	movq	$119, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, %rdx
	movq	$118, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$72, %rax
	movq	%rax, %rdx
	movq	$117, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , (%rdi)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rdx
	pushq	%rdi
	pushq	%rsi
	movq	%rdx, %rdi
	callq	string_of_array
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	(%rdi), %rdx
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	movq	$9, %rdx
	callq	oat_mergesort
	popq	%rdx
	popq	%rsi
	popq	%rdi
	leaq	_str_arr3475(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	(%rdi), %rdx
	pushq	%rsi
	movq	%rdx, %rdi
	callq	string_of_array
	popq	%rsi
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	popq	%rsi
	leaq	_str_arr3481(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	popq	%rsi
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	oat_mergesort
oat_mergesort:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	movq	%rdx, %rsi
	popq	%rdx
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%r10)
	movq	%rdx, (%r8 )
	movq	%rsi, (%r9 )
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	movq	(%r9 ), %rsi
	cmpq	%rsi, %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then3437
	jmp	_else3436
	.text
_else3436:
	jmp	_merge3435
	.text
_merge3435:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3437:
	movq	(%r8 ), %rdx
	movq	(%r9 ), %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, (%r11)
	movq	(%r11), %rdx
	movq	(%r8 ), %rsi
	movq	(%r10), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	oat_mergesort
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	(%r9 ), %rsi
	movq	(%r11), %rdx
	addq	$1, %rdx
	movq	(%r10), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rsi
	movq	%rdx, %rsi
	popq	%rdx
	callq	oat_mergesort
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	(%r11), %rdx
	movq	(%r9 ), %rdi
	movq	(%r8 ), %rsi
	movq	(%r10), %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%r8 , %rdi
	callq	merge
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	jmp	_merge3435
	.text
	.globl	merge
merge:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$296, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, (%rdi)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$50, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	movq	$50, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	-72(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3248
	.text
_body3247:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-96(%rbp), %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3248
	.text
_body3277:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-112(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %r11
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	(%r9 ), %r10
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	cmpq	%rdx, %r11
	setl	-128(%rbp)
	andq	$1, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	_then3330
	jmp	_else3329
	.text
_body3335:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	(%r8 ), %r10
	movq	-136(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-136(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-144(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%rdx, %rdi
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
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r10)
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3336
	.text
_body3359:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	(%r8 ), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
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
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	(%r9 ), %rsi
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
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
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r10)
	movq	(%r8 ), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r8 )
	movq	(%r9 ), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r9 )
	jmp	_cond3360
	.text
_body3385:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
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
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%r9 , %rax
	movq	%rax, %rdx
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
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
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3386
	.text
_cond3248:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	cmpq	-184(%rbp), %rdx
	setl	-192(%rbp)
	andq	$1, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	_body3247
	jmp	_post3246
	.text
_cond3278:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	(%rsi), %rdx
	cmpq	%rdx, %r10
	setle	-200(%rbp)
	andq	$1, -200(%rbp)
	movq	(%r9 ), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	cmpq	%r10, %rdx
	setle	-208(%rbp)
	andq	$1, -208(%rbp)
	movq	-200(%rbp), %rax
	andq	-208(%rbp), %rax
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	_body3277
	jmp	_post3276
	.text
_cond3336:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	(%rsi), %rdx
	cmpq	%rdx, %r10
	setle	-224(%rbp)
	andq	$1, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	_body3335
	jmp	_post3334
	.text
_cond3360:
	movq	(%r9 ), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	%rsi, %rdx
	setle	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body3359
	jmp	_post3358
	.text
_cond3386:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	(%r8 ), %rdx
	cmpq	%rdx, %rsi
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body3385
	jmp	_post3384
	.text
_else3329:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	(%r8 ), %r10
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-232(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	(%r9 ), %r10
	movq	-240(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-240(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r11)
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_merge3328
	.text
_merge3328:
	jmp	_cond3278
	.text
_post3246:
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rdx
	movq	%rdx, (%r8 )
	jmp	_cond3278
	.text
_post3276:
	jmp	_cond3336
	.text
_post3334:
	jmp	_cond3360
	.text
_post3358:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3386
	.text
_post3384:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3330:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	(%r8 ), %r10
	movq	-272(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	-272(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-280(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r10)
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge3328