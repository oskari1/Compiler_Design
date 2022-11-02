	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	$17, %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, (%rsi)
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq	