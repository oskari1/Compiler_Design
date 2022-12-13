	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	movq	$14, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	