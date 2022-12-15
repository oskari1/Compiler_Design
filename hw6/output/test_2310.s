	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$9, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rdi
	movq	(%r9 ), %rsi
	addq	%rdi, %rsi
	movq	%rsi, (%rdx)
	movq	(%r9 ), %r8 
	movq	(%r9 ), %rdi
	movq	(%r9 ), %rsi
	imulq	%rdi, %rsi
	movq	%r8 , %rdi
	addq	%rsi, %rdi
	movq	(%rdx), %rsi
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