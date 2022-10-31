	.text
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$88, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$7, %rdi
	movq	$7, %rsi
	addq	%rdi, %rsi
	movq	%rsi, -24(%rbp)
	jmp	program.l2
	.text
program.l2:
	movq	$2, %rdi
	movq	-24(%rbp), %rsi
	imulq	%rdi, %rsi
	movq	%rsi, -32(%rbp)
	jmp	program.l3
	.text
program.l3:
	movq	-32(%rbp), %rdi
	movq	$32, %rsi
	subq	%rdi, %rsi
	movq	%rsi, -40(%rbp)
	jmp	program.l4
	.text
program.l4:
	movq	-40(%rbp), %rdi
	movq	$1, %rsi
	addq	%rdi, %rsi
	movq	%rsi, -48(%rbp)
	jmp	program.l5
	.text
program.l5:
	movq	-48(%rbp), %rdi
	movq	$60, %rsi
	addq	%rdi, %rsi
	movq	%rsi, -56(%rbp)
	jmp	program.l6
	.text
program.l6:
	movq	-56(%rbp), %rdi
	movq	$2, %rsi
	addq	%rdi, %rsi
	movq	%rsi, -64(%rbp)
	jmp	program.l7
	.text
program.l7:
	movq	$255, %rdi
	movq	-64(%rbp), %rsi
	andq	%rdi, %rsi
	movq	%rsi, -72(%rbp)
	jmp	program.l8
	.text
program.l8:
	movq	$64, %rdi
	movq	-72(%rbp), %rsi
	orq	%rdi, %rsi
	movq	%rsi, -80(%rbp)
	jmp	program.l9
	.text
program.l9:
	movq	-80(%rbp), %rdi
	movq	$255, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, -88(%rbp)
	jmp	program.lexit
	.text
program.lexit:
	movq	-88(%rbp), %rax
	addq	$88, %rsp
	popq	%rbp
	retq	