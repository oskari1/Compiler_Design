	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rcx, -8(%rbp)
	pushq	16(%rbp)
	popq	-16(%rbp)
	pushq	24(%rbp)
	popq	-24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, (%r11)
	movq	-8(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r8 , (%r9 )
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	addq	%rdx, %rsi
	movq	(%r11), %rdx
	addq	%rdx, %rsi
	movq	(%r10), %rdx
	addq	%rdx, %rsi
	movq	(%r9 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	$-3
	pushq	$-4
	movq	$-5, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	f
	addq	$16, %rsp
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	