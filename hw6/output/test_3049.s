	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, %rdi
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	ret1
	jmp	recurse
	.text
recurse:
	movq	%rdi, %rdx
	subq	$1, %rdx
	pushq	%rdi
	movq	%rdx, %rdi
	callq	factorial
	popq	%rdi
	movq	%rax, %rdx
	imulq	%rdi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret1:
	movq	$1, %rax
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
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	