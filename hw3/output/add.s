	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$5, %rdi
	movq	$9, %rsi
	addq	%rsi, %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%rbp
	retq	