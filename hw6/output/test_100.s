	.text
	.globl	gcd_rec
gcd_rec:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r8 )
	cmpq	$0, %rsi
	setne	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	neq0
	jmp	eq0
	.text
eq0:
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
neq0:
	movq	(%r8 ), %rdx
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	movq	%rdi, (%r8 )
	cmpq	%rsi, %rdi
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	neq0
	jmp	recurse
	.text
recurse:
	pushq	%rdi
	pushq	%rsi
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	gcd_rec
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$34, %rsi
	movq	$424, %rdi
	callq	gcd_rec
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	