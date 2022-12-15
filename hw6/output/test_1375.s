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
	movq	(%r8 ), %rdi
	movq	(%r8 ), %rsi
	addq	%rdi, %rsi
	movq	%rsi, (%r9 )
	movq	(%r8 ), %rdx
	movq	(%r8 ), %rdi
	movq	(%r8 ), %rsi
	imulq	%rdi, %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	(%r9 ), %rsi
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