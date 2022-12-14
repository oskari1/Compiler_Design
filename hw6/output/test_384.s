	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	movq	$42, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	