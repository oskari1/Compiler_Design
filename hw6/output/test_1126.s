	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	