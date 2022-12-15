	.text
	.globl	gcd_rec
gcd_rec:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rdx)
	cmpq	$0, %rsi
	setne	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
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
	movq	(%rdx), %rdi
	subq	%rsi, %rdi
	movq	%rdi, (%rdx)
	cmpq	%rsi, %rdi
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	neq0
	jmp	recurse
	.text
recurse:
	pushq	%rdi
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	gcd_rec
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
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
	movq	$34, %rsi
	movq	$424, %rdi
	callq	gcd_rec
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	