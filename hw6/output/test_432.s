	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond15
	.text
_body14:
	movq	(%rdi), %rdx
	movq	(%r8 ), %rsi
	addq	%rdx, %rsi
	movq	(%r8 ), %rdx
	imulq	%rsi, %rdx
	movq	%rdx, (%rdi)
	movq	(%r8 ), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r8 )
	jmp	_cond15
	.text
_cond15:
	movq	(%r8 ), %rdx
	cmpq	$10, %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body14
	jmp	_post13
	.text
_post13:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	