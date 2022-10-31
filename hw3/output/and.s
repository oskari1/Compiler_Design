	.text
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$1, %rdi
	movq	$0, %rsi
	andq	%rdi, %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%rbp
	retq	