	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	movq	$-1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	