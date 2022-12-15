	.text
	.globl	baz
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rcx, -8(%rbp)
	pushq	16(%rbp)
	popq	-16(%rbp)
	pushq	24(%rbp)
	popq	-24(%rbp)
	addq	%rdi, %rsi
	addq	%rsi, %rdx
	addq	-8(%rbp), %rdx
	addq	%r8 , %rdx
	addq	%r9 , %rdx
	addq	-16(%rbp), %rdx
	addq	-24(%rbp), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rcx, -8(%rbp)
	pushq	16(%rbp)
	popq	-16(%rbp)
	pushq	24(%rbp)
	popq	-24(%rbp)
	addq	%rdi, %rsi
	addq	%rsi, %rdx
	movq	%rdx, %r10
	addq	-8(%rbp), %r10
	movq	%r10, %rdi
	addq	%r8 , %rdi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	movq	%rdi, %rcx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%r10, %rdx
	callq	baz
	addq	$16, %rsp
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdi, %rsi
	addq	%r9 , %rsi
	addq	-16(%rbp), %rsi
	addq	-24(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	pushq	%rdi
	movq	%rdi, %r9 
	movq	%rdi, %r8 
	movq	%rdi, %rcx
	movq	%rdi, %rdx
	movq	%rdi, %rsi
	callq	bar
	addq	$16, %rsp
	movq	%rax, %rdi
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
	movq	$1, %rdi
	callq	foo
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	