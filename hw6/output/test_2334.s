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
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r10
	pushq	%r10
	pushq	%r8 
	callq	f
	popq	%r8 
	popq	%r10
	movq	%rax, %rdi
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	callq	oat_alloc_array
	popq	%rdi
	popq	%r8 
	popq	%r10
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %r11
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%r9 )
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%r11, (%rdi)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond2078
	.text
_body2077:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%r8 ), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
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
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%r8 ), %rdx
	movq	%rdx, (%rsi)
	movq	(%r8 ), %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond2078
	.text
_cond2078:
	movq	(%r8 ), %rsi
	movq	(%r9 ), %rdx
	cmpq	%rdx, %rsi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body2077
	jmp	_post2076
	.text
_post2076:
	movq	%r11, (%r10)
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	(%r10), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r10
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	addq	%rsi, %rdx
	movq	(%r10), %rdi
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
	addq	%rdx, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	