	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$17, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$18, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	