	.text
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$5, %rdi
	movq	$9, %rsi
	addq	%rdi, %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	$15, %rsi
	addq	%rdi, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq	