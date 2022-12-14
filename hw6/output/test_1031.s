	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$9, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rsi
	movq	(%r8 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%r9 )
	movq	(%r8 ), %rdi
	movq	(%r8 ), %rsi
	movq	(%r8 ), %rdx
	imulq	%rsi, %rdx
	movq	%rdi, %rsi
	addq	%rdx, %rsi
	movq	(%r9 ), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	sarq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	