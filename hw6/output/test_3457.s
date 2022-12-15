	.data
	.globl	a
a:
	.quad	1
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	leaq	a(%rip), %rcx
	movq	%rax, (%rcx)
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %r8 
	pushq	%r8 
	pushq	%rdi
	callq	f
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r9 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%r9 , (%rsi)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2128
	.text
_body2127:
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%rdi), %r11
	movq	-8(%rbp), %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	f
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rax, %r10
	movq	%r10, (%r11)
	movq	(%rdi), %r10
	addq	$1, %r10
	movq	%r10, (%rdi)
	jmp	_cond2128
	.text
_cond2128:
	movq	(%rdi), %r10
	movq	(%rdx), %r11
	cmpq	%r11, %r10
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_body2127
	jmp	_post2126
	.text
_post2126:
	movq	%r9 , (%r8 )
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	addq	%rdi, %rdx
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$1, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	