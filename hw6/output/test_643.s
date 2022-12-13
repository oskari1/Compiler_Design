	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rcx, -16(%rbp)
	pushq	16(%rbp)
	popq	-24(%rbp)
	pushq	24(%rbp)
	popq	-32(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-8(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, (%r9 )
	movq	%rdx, (%r8 )
	movq	-16(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rsi
	movq	(%r9 ), %rdx
	addq	%rdx, %rsi
	movq	(%r8 ), %rdx
	addq	%rdx, %rsi
	movq	(%rdi), %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	$-3
	pushq	$-4
	movq	$-5, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	f
	addq	$16, %rsp
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	