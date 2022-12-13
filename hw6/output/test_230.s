	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	ret1
	jmp	recurse
	.text
recurse:
	movq	%rdi, %rsi
	subq	$1, %rsi
	pushq	%rdi
	movq	%rsi, %rdi
	callq	factorial
	popq	%rdi
	movq	%rax, %rsi
	movq	%rdi, %rdx
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
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	