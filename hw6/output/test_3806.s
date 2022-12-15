	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$9, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %r8 
	movq	(%rdx), %rdi
	addq	%r8 , %rdi
	movq	%rdi, (%rsi)
	movq	(%rdx), %r8 
	movq	(%rdx), %rdi
	movq	(%rdx), %rdx
	imulq	%rdx, %rdi
	addq	%r8 , %rdi
	movq	(%rsi), %rsi
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$2, %rcx
	sarq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	