	.data
	.globl	tmp
tmp:
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.quad	5
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	leaq	tmp(%rip), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	