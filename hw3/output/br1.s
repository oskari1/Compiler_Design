	.text
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	main.end
	.text
main.end:
	movq	$9, %rax
	addq	$16, %rsp
	popq	%rbp
	retq	