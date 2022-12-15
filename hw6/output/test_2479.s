	.data
	.globl	glist
glist:
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.quad	5
	.text
	.globl	search
search:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
check:
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r8 
	movq	(%r8 ), %r8 
	cmpq	%r8 , %rsi
	sete	%r10b
	andq	$1, %r10
	movq	$1, %r8 
	addq	%r9 , %r8 
	movq	%r8 , (%rdx)
	cmpq	$0, %r10
	jne	true
	jmp	loop
	.text
false:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%rdx), %r9 
	cmpq	$5, %r9 
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	false
	jmp	check
	.text
true:
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
	leaq	glist(%rip), %rsi
	movq	$3, %rdi
	callq	search
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	