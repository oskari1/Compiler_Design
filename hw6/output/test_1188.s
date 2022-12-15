	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$9, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rdx
	movq	(%r9 ), %rdi
	addq	%rdx, %rdi
	movq	%rdi, (%rsi)
	movq	(%r9 ), %r8 
	movq	(%r9 ), %rdx
	movq	(%r9 ), %rdi
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