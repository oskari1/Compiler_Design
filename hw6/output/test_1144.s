	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	addq	%rdi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	movq	$17, %rdi
	callq	foo
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	