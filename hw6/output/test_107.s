	.text
	.globl	getminindex
getminindex:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	pushq	%rsi
	movq	%rdx, %rsi
	popq	%rdx
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, (%r8 )
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	movq	%rdx, (%r11)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r8 ), %rsi
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
	movq	%rdx, (%r9 )
	movq	(%r8 ), %rdx
	movq	%rdx, (%r10)
	jmp	_cond3610
	.text
_body3609:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r11), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
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
	movq	(%r9 ), %rdx
	cmpq	%rdx, %rsi
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then3630
	jmp	_else3629
	.text
_cond3610:
	movq	(%r11), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	%rsi, %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body3609
	jmp	_post3608
	.text
_else3629:
	jmp	_merge3628
	.text
_merge3628:
	movq	(%r11), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r11)
	jmp	_cond3610
	.text
_post3608:
	movq	(%r10), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3630:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r11), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
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
	movq	%rdx, (%r9 )
	movq	(%r11), %rdx
	movq	%rdx, (%r10)
	jmp	_merge3628
	.text
	.globl	selectionsort
selectionsort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, (%r8 )
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3547
	.text
_body3546:
	movq	(%r8 ), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r10, %rdi
	callq	getminindex
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rsi
	movq	%rsi, (%r9 )
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%r10, %rax
	movq	%rax, %rsi
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
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%r10, %rax
	movq	%rax, %rsi
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
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
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
	movq	%rdi, (%rsi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	(%r9 ), %rdi
	movq	%r10, %rax
	movq	%rax, %rsi
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
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdx), %rsi
	movq	%rsi, (%rdi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3547
	.text
_cond3547:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r8 ), %rsi
	cmpq	%rsi, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body3546
	jmp	_post3545
	.text
_post3545:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	$8, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	$5, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r8 
	movq	$200, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %r8 
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %r8 
	movq	$65, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %r8 
	movq	$30, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %r8 
	movq	$99, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, %r8 
	movq	$2, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, %r8 
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, (%rdx)
	movq	(%rdx), %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$8, %rsi
	callq	selectionsort
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond3519
	.text
_body3518:
	movq	(%rdx), %r9 
	movq	(%rsi), %r8 
	movq	%r9 , %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r8 , %rsi
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
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	print_int
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	(%rsi), %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	jmp	_cond3519
	.text
_cond3519:
	movq	(%rsi), %rdi
	cmpq	$8, %rdi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body3518
	jmp	_post3517
	.text
_post3517:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	