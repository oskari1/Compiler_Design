	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	cmpq	$0, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	ret1
	jmp	recurse
	.text
recurse:
	movq	%rdx, %rsi
	subq	$1, %rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	factorial
	popq	%rdx
	movq	%rax, %rsi
	imulq	%rsi, %rdx
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
	movq	%rdi, %rdx
	movq	%rsi, %rdx
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	